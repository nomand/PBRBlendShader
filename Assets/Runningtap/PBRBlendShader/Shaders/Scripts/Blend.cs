using UnityEngine;
using UnityEditor;
using System.Linq;
using System.Collections.Generic;

namespace Runningtap
{
    public partial class Substance
    {
        //Standard PBR inputs
        public MaterialProperty BaseColorMap;
        public MaterialProperty BaseColor;
        public MaterialProperty MetallicMap;
        public MaterialProperty NormalMap;
        public MaterialProperty HeightMap;
        public MaterialProperty HeightScale;
        public MaterialProperty OcclusionMap;

        public MaterialProperty Debug;
    }

    public static class Styles
    {
        //Collapsable heading labels
        public static string Substance01Heading = "Material 1 Inputs";
        public static string Substance02Heading = "Material 2 Inputs";

        //Standard PBR input labels
        public static GUIContent baseColorText = new GUIContent("Base Color", "Color (RGB) and Alpha (A)");
        public static GUIContent normalMapText = new GUIContent("Normal Map", "Normal Map");
        public static GUIContent heightMapText = new GUIContent("Height Map", "(A) Height");
        public static GUIContent heightScaleText = new GUIContent("Height Scale");
        public static GUIContent metallicMapText = new GUIContent("Metal Rough", "Metallic (R) Roughness (A inverted)");
        public static GUIContent occlusionMapText = new GUIContent("AO", "Ambient Occlusion");
        public static GUIContent emissionMapText = new GUIContent("Emission", "Emission");
        public static GUIContent blendNoiseMapText = new GUIContent("Blend Noise", "Breaks up the obvious poly edges.");

        //Material Drop area style
        public static GUIStyle DragBox = new GUIStyle
        {
            normal = GUI.skin.box.normal,
            alignment = TextAnchor.MiddleCenter,
            fontStyle = FontStyle.Bold,
            border = new RectOffset(1, 1, 1, 1),
            padding = new RectOffset(0, 0, 0, 0)
        };

        //PBRBlendRough detail texture input label
        public static GUIContent roughnessMapText = new GUIContent("Roughness Detail", "Extra Roughness layer (A)");

        //PBRBlendBase detail texture input label
        public static GUIContent baseColorDetailMapText = new GUIContent("Detail Albedo", "Detail Texture (RGB)");
        
        //PBRBlendWet detail texture input label
        public static GUIContent waterRoughnessMapText = new GUIContent("Water Rough", "Water Roughness (A inverted)");
    }

    public class Common : ShaderGUI
    {
        public static Texture2D runningtapLogo = Resources.Load("RunningtapLogo") as Texture2D;
        public static MaterialEditor materialEditor;

        //Drag and drop material input gui. Error reports and triggers autopopulation of textures
        public static void DropAreaGUI(Substance s)
        {
            Event evt = Event.current;
            Rect drop_area = GUILayoutUtility.GetRect(0.0f, 50.0f, GUILayout.ExpandWidth(true));
            GUI.Box(drop_area, "Drop Material Here", Styles.DragBox);

            switch (evt.type)
            {
                case EventType.DragUpdated:
                case EventType.DragPerform:

                    if (!drop_area.Contains(evt.mousePosition))
                        return;

                    DragAndDrop.visualMode = DragAndDropVisualMode.Copy;

                    if (evt.type == EventType.DragPerform)
                    {
                        DragAndDrop.AcceptDrag();

                        if (DragAndDrop.objectReferences.Length > 1)
                        {
                            Debug.LogWarning("<color=red>SBS:</color>\n" + "Field only accepts a single material.");
                            DragAndDrop.PrepareStartDrag();
                        }
                        else
                        {
                            if (DragAndDrop.objectReferences[0] is SubstanceArchive)
                            {
                                Debug.LogWarning("<color=red>SBS:</color>\n" + "Substance SBSAR not supported, input a material instead.");
                            }
                            else if (DragAndDrop.objectReferences[0] is Material)
                            {
                                foreach (Material mat in DragAndDrop.objectReferences)
                                {
                                    GetSubstanceTexturesFromMaterial(s, mat);
                                }
                            }
                            else
                            {
                                Debug.LogWarning("<color=red>SBS:</color>\n" + "Not a Material");
                            }
                        }
                    }
                    break;
            }
        }

        //Extracts textures from input material, populates them to current blend shader
        public static void GetSubstanceTexturesFromMaterial(Substance s, Material material)
        {
            //Lookup Standard material input maps
            var baseColorMap = material.HasProperty("_MainTex") ? material.GetTexture("_MainTex") : null;
            var baseColor = material.HasProperty("_Color") ? material.GetColor("_Color") : Color.white;
            var metallicMap = material.HasProperty("_MetallicGlossMap") ? material.GetTexture("_MetallicGlossMap") : null;
            var normalMap = material.HasProperty("_BumpMap") ? material.GetTexture("_BumpMap") : null;
            var heightMap = material.HasProperty("_ParallaxMap") ? material.GetTexture("_ParallaxMap") : null;
            var heightScale = material.HasProperty("_Parallax") ? material.GetFloat("_Parallax") : 0;
            var occlusionMap = material.HasProperty("_OcclusionMap") ? material.GetTexture("_OcclusionMap") : null;

            //Clear inputs because incoming material might have missing textures.
            s.BaseColorMap.textureValue = null;
            s.BaseColor.colorValue = Color.white;
            s.MetallicMap.textureValue = null;
            s.NormalMap.textureValue = null;
            s.HeightMap.textureValue = null;
            s.HeightScale.floatValue = 0;
            s.OcclusionMap.textureValue = null;

            //Assign current shader inputs from incoming map
            s.BaseColorMap.textureValue = baseColorMap;
            s.BaseColor.colorValue = baseColor;
            s.MetallicMap.textureValue = metallicMap;
            s.NormalMap.textureValue = normalMap;
            s.HeightMap.textureValue = heightMap;
            s.HeightScale.floatValue = heightScale;
            s.OcclusionMap.textureValue = occlusionMap;
        }

        //Finds required properties by name, ignores if they don't exist
        public static void FindProperties(Substance inputSubstance, int materialIndex, MaterialProperty[] properties)
        {
            //Standard shader inputs
            var n = materialIndex.ToString();
            inputSubstance.BaseColorMap = FindProperty("_BaseColor" + n, properties, false);
            inputSubstance.BaseColor = FindProperty("_Color" + n, properties, false);
            inputSubstance.MetallicMap = FindProperty("_Metallic" + n, properties, false);
            inputSubstance.NormalMap = FindProperty("_Normal" + n, properties, false);
            inputSubstance.HeightMap = FindProperty("_Height" + n, properties, false);
            inputSubstance.HeightScale = FindProperty("_HeightScale" + n, properties, false);
            inputSubstance.OcclusionMap = FindProperty("_Occlusion" + n, properties, false);

            //BlendBase inputs
            inputSubstance.BaseColorDetail = FindProperty("_BaseColor2", properties, false);
            inputSubstance.BlendSpread = FindProperty("_BlendSpread", properties, false);
            inputSubstance.BlendContrast = FindProperty("_BlendContrast", properties, false);
            inputSubstance.BlendOpacity = FindProperty("_BlendOpacity", properties, false);

            //BlendWet inputs
            inputSubstance.WaterColor = FindProperty("_WaterColor", properties, false);
            inputSubstance.WaterHeight = FindProperty("_WaterHeight", properties, false);
            inputSubstance.WaterContrast = FindProperty("_WaterContrast", properties, false);
            inputSubstance.WaterMetallic = FindProperty("_WaterMetallic", properties, false);
            inputSubstance.WaterAlpha = FindProperty("_WaterClarity", properties, false);
            inputSubstance.WaterRoughnessMap = FindProperty("_WaterRoughness", properties, false);

            //BlendRough inputs
            inputSubstance.RoughnessDetailMap = FindProperty("_RoughnessDetail", properties, false);
            inputSubstance.RoughnessSpread = FindProperty("_RoughnessSpread", properties, false);
            inputSubstance.RoughnessContrast = FindProperty("_RoughnessContrast", properties, false);

            //Common
            inputSubstance.Debug = FindProperty("_Debug", properties, false);
            inputSubstance.BlendNoiseMap = FindProperty("_BlendNoise", properties, false);
        }
    }
}