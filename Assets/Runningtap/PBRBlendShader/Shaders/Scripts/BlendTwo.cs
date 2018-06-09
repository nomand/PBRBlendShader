using UnityEditor;
using UnityEngine;


namespace Runningtap
{
    public class PBRBlendTwo : ShaderGUI
    {
        Substance S01 = new Substance();
        Substance S02 = new Substance();
        MaterialEditor matEditor;

        float noiseZoom = 1;
        bool showMat1Content = true;
        bool showMat2Content = true;

        public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
        {
            Common.FindProperties(S01, 1, properties);
            Common.FindProperties(S02, 2, properties);
            matEditor = materialEditor;
            Material material = materialEditor.target as Material;

            ShaderPropertiesGUI(material);
        }

        public void ShaderPropertiesGUI(Material material)
        {
            EditorGUIUtility.labelWidth = 0f;

            EditorGUI.BeginChangeCheck();
            {
                Rect logoArea = GUILayoutUtility.GetRect(128, 32, GUILayout.ExpandWidth(false));
                GUI.DrawTexture(logoArea, Common.runningtapLogo, ScaleMode.ScaleToFit, true, 0);

                EditorGUILayout.Space();
                EditorGUILayout.Space();

                showMat1Content = EditorGUILayout.Foldout(showMat1Content, Styles.Substance01Heading, true);

                if (showMat1Content)
                {
                    Common.DropAreaGUI(S01);

                    EditorGUILayout.Space();

                    matEditor.TexturePropertySingleLine(Styles.baseColorText, S01.BaseColorMap, S01.BaseColor);
                    matEditor.TexturePropertySingleLine(Styles.metallicMapText, S01.MetallicMap);
                    matEditor.TexturePropertySingleLine(Styles.normalMapText, S01.NormalMap);
                    matEditor.TexturePropertySingleLine(Styles.heightMapText, S01.HeightMap, S01.HeightMap.textureValue != null ? S01.HeightScale : null);
                    matEditor.TexturePropertySingleLine(Styles.occlusionMapText, S01.OcclusionMap);

                    EditorGUILayout.Space();

                    EditorGUI.BeginChangeCheck();
                    matEditor.TextureScaleOffsetProperty(S01.BaseColorMap);
                    if (EditorGUI.EndChangeCheck())
                    {
                        S01.MetallicMap.textureScaleAndOffset = S01.BaseColorMap.textureScaleAndOffset;
                        S01.NormalMap.textureScaleAndOffset = S01.BaseColorMap.textureScaleAndOffset;
                        S01.HeightMap.textureScaleAndOffset = S01.BaseColorMap.textureScaleAndOffset;
                        S01.OcclusionMap.textureScaleAndOffset = S01.BaseColorMap.textureScaleAndOffset;
                    }
                }

                EditorGUILayout.Space(); 

                showMat2Content = EditorGUILayout.Foldout(showMat2Content, Styles.Substance02Heading, true);

                if (showMat2Content)
                {
                    Common.DropAreaGUI(S02);

                    EditorGUILayout.Space();

                    matEditor.TexturePropertySingleLine(Styles.baseColorText, S02.BaseColorMap, S02.BaseColor);
                    matEditor.TexturePropertySingleLine(Styles.metallicMapText, S02.MetallicMap);
                    matEditor.TexturePropertySingleLine(Styles.normalMapText, S02.NormalMap);
                    matEditor.TexturePropertySingleLine(Styles.heightMapText, S02.HeightMap, S02.HeightMap.textureValue != null ? S02.HeightScale : null);
                    matEditor.TexturePropertySingleLine(Styles.occlusionMapText, S02.OcclusionMap);

                    EditorGUILayout.Space();

                    EditorGUI.BeginChangeCheck();
                    matEditor.TextureScaleOffsetProperty(S02.BaseColorMap);
                    if (EditorGUI.EndChangeCheck())
                    {
                        S02.MetallicMap.textureScaleAndOffset = S02.BaseColorMap.textureScaleAndOffset;
                        S02.NormalMap.textureScaleAndOffset = S02.BaseColorMap.textureScaleAndOffset;
                        S02.HeightMap.textureScaleAndOffset = S02.BaseColorMap.textureScaleAndOffset;
                        S02.OcclusionMap.textureScaleAndOffset = S02.BaseColorMap.textureScaleAndOffset;
                    }
                }

                EditorGUILayout.Space();
                matEditor.RangeProperty(S01.BlendContrast, "Blend Contrast");
                EditorGUILayout.Space();
                matEditor.TexturePropertySingleLine(Styles.blendNoiseMapText, S01.BlendNoiseMap);
                if(S01.BlendNoiseMap.textureValue != null)
                {
                    noiseZoom = EditorGUILayout.FloatField("Noise Zoom", noiseZoom);
                    S01.BlendNoiseMap.textureScaleAndOffset = new Vector2(noiseZoom, noiseZoom);
                }

                EditorGUILayout.Space();
                matEditor.ShaderProperty(S01.Debug, "Debug");
                EditorGUILayout.Space();
            }
        }
    }
}