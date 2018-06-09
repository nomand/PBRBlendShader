// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Standard,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34023,y:33238,cmnt:define Z_TEXTURE_CHANNELS 2,varname:node_2865,prsc:2|diff-6232-OUT,spec-999-R,gloss-4441-OUT,normal-4773-RGB,difocc-4632-A;n:type:ShaderForge.SFN_Multiply,id:6343,x:31816,y:32797,varname:node_6343,prsc:2|A-2503-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:31581,y:32890,ptovrint:False,ptlb:Color1,ptin:_Color1,varname:_Color1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4632,x:32240,y:32468,ptovrint:False,ptlb:Occlusion1,ptin:_Occlusion1,varname:_Occlusion1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:60a2c643f4a7e054a8b930dc426beb95,ntxv:0,isnm:False|UVIN-7919-UVOUT;n:type:ShaderForge.SFN_Parallax,id:7919,x:31581,y:32488,varname:node_7919,prsc:2|UVIN-9476-UVOUT,HEI-9349-A,DEP-2054-OUT;n:type:ShaderForge.SFN_Tex2d,id:9349,x:31110,y:32694,ptovrint:False,ptlb:Height1,ptin:_Height1,varname:_Height1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:60a2c643f4a7e054a8b930dc426beb95,ntxv:0,isnm:False|UVIN-9476-UVOUT;n:type:ShaderForge.SFN_Slider,id:2054,x:31424,y:32367,ptovrint:False,ptlb:HeightScale1,ptin:_HeightScale1,varname:_HeightScale1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05906117,max:1;n:type:ShaderForge.SFN_Append,id:8246,x:31458,y:33405,varname:node_8246,prsc:2|A-3523-U,B-3523-V,C-2243-Z,D-2243-W;n:type:ShaderForge.SFN_Vector4Property,id:2243,x:31209,y:33476,ptovrint:False,ptlb:TEMP_CHANNEL_UV3,ptin:_TEMP_CHANNEL_UV3,cmnt:define Z_MESH_ATTRIBUTES UV4,varname:_TEMP_CHANNEL_UV3,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Tex2d,id:9778,x:32120,y:33721,ptovrint:False,ptlb:RoughnessDetail,ptin:_RoughnessDetail,varname:_Roughness2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d8431d4eda0994947a0a60e24e8ee481,ntxv:0,isnm:False|UVIN-7919-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3523,x:31209,y:33290,varname:node_3523,prsc:2,uv:3,uaff:False;n:type:ShaderForge.SFN_Slider,id:8443,x:31261,y:33926,ptovrint:False,ptlb:RoughnessSpread,ptin:_RoughnessSpread,varname:_HeightScale2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_OneMinus,id:2465,x:32349,y:33721,varname:node_2465,prsc:2|IN-9778-A;n:type:ShaderForge.SFN_OneMinus,id:5967,x:32461,y:32889,varname:node_5967,prsc:2|IN-999-A;n:type:ShaderForge.SFN_Tex2d,id:2503,x:31581,y:32671,ptovrint:False,ptlb:Base Color1,ptin:_BaseColor1,varname:_BaseColor1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:60a2c643f4a7e054a8b930dc426beb95,ntxv:0,isnm:False|UVIN-7919-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:999,x:32240,y:32889,ptovrint:False,ptlb:Metallic1,ptin:_Metallic1,varname:_Metallic1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:60a2c643f4a7e054a8b930dc426beb95,ntxv:2,isnm:False|UVIN-7919-UVOUT;n:type:ShaderForge.SFN_Clamp01,id:6687,x:31110,y:32953,varname:node_6687,prsc:2|IN-9349-A;n:type:ShaderForge.SFN_Clamp01,id:5460,x:31615,y:33870,varname:node_5460,prsc:2|IN-8443-OUT;n:type:ShaderForge.SFN_TexCoord,id:9476,x:30833,y:33336,varname:node_9476,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:4773,x:32240,y:32676,ptovrint:False,ptlb:Normal1,ptin:_Normal1,varname:_Normal1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:60a2c643f4a7e054a8b930dc426beb95,ntxv:3,isnm:True|UVIN-7919-UVOUT;n:type:ShaderForge.SFN_Code,id:4644,x:32128,y:33318,varname:node_4644,prsc:2,code:ZgBsAG8AYQB0ACAAZABlAHAAdABoACAAPQAgAGMAbwBuAHQAcgBhAHMAdAA7AAoACgBmAGwAbwBhAHQAIABtAGEAcwBrACAAPQAgAGMAbwBtAHAALgB4ACAALQAoACgAMQAgAC0AIABjAG8AbQBwAC4AeAApACAAKgAgAG4AbwBpAHMAZQApAC4AeAA7AAoACgBmAGwAbwBhAHQAIABtAGEAIAA9ACAAbQBhAHgAKABIAGUAaQBnAGgAdAAxACAAKwAgAG0AYQBzAGsALAAgAEgAZQBpAGcAaAB0ADIAIAArACAAKAAxAC0AbQBhAHMAawApACkAIAAtACAAZABlAHAAdABoADsACgAKAGYAbABvAGEAdAAgAGIAMQAgAD0AIABtAGEAeAAoAEgAZQBpAGcAaAB0ADEAIAArACAAbQBhAHMAawAgAC0AIABtAGEALAAgADAAKQA7AAoAZgBsAG8AYQB0ACAAYgAyACAAPQAgAG0AYQB4ACgASABlAGkAZwBoAHQAMgAgACsAIAAoADEALQBtAGEAcwBrACkAIAAtACAAbQBhACwAIAAwACkAOwAKAAoAZgBsAG8AYQB0ADIAIAByAGUAcwB1AGwAdAAgAD0AIABmAGwAbwBhAHQAMgAoAGIAMQAsACAAYgAyACkAOwAKAAoAcgBlAHQAdQByAG4AIAByAGUAcwB1AGwAdAA7AAoA,output:1,fname:computeMask,width:860,height:253,input:0,input:0,input:0,input:3,input:2,input_1_label:Height1,input_2_label:Height2,input_3_label:contrast,input_4_label:comp,input_5_label:noise|A-6687-OUT,B-5460-OUT,C-1466-OUT,D-8246-OUT,E-7147-RGB;n:type:ShaderForge.SFN_Code,id:4441,x:33223,y:33381,varname:node_4441,prsc:2,code:ZgBsAG8AYQB0ACAAcgBvAHUAZwBoAG4AZQBzAHMATQBhAHAAIAA9ACAAKABBADEAIAAqACAAYgAxAGIAMgAuAHIAIAArACAAQQAyACAAKgAgAGIAMQBiADIALgBnACkAIAAvACAAKABiADEAYgAyAC4AcgAgACsAIABiADEAYgAyAC4AZwApADsACgAKAHIAZQB0AHUAcgBuACAAcgBvAHUAZwBoAG4AZQBzAHMATQBhAHAAOwA=,output:0,fname:computeRoughness,width:541,height:112,input:0,input:0,input:1,input_1_label:A1,input_2_label:A2,input_3_label:b1b2|A-5967-OUT,B-2465-OUT,C-4644-OUT;n:type:ShaderForge.SFN_Slider,id:3320,x:31246,y:34084,ptovrint:False,ptlb:RoughnessContrast,ptin:_RoughnessContrast,varname:node_3320,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.5,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:6232,x:33764,y:33046,ptovrint:False,ptlb:Debug,ptin:_Debug,varname:node_6232,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6343-OUT,B-4644-OUT;n:type:ShaderForge.SFN_Tex2d,id:7147,x:31276,y:33710,ptovrint:False,ptlb:BlendNoise,ptin:_BlendNoise,varname:node_7147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:1466,x:31615,y:34052,varname:node_1466,prsc:2,frmn:1,frmx:0,tomn:0.01,tomx:1|IN-3320-OUT;proporder:2503-6665-999-4773-9349-2054-4632-2243-9778-8443-3320-6232-7147;pass:END;sub:END;*/

Shader "Runningtap/PBR Blend/BlendRough" {
    Properties {
        _BaseColor1 ("Base Color1", 2D) = "white" {}
        _Color1 ("Color1", Color) = (1,1,1,1)
        _Metallic1 ("Metallic1", 2D) = "black" {}
        _Normal1 ("Normal1", 2D) = "bump" {}
        _Height1 ("Height1", 2D) = "white" {}
        _HeightScale1 ("HeightScale1", Range(0, 1)) = 0.05906117
        _Occlusion1 ("Occlusion1", 2D) = "white" {}
        [HideInInspector]_TEMP_CHANNEL_UV3 ("TEMP_CHANNEL_UV3", Vector) = (0,0,0,0)
        _RoughnessDetail ("RoughnessDetail", 2D) = "white" {}
        _RoughnessSpread ("RoughnessSpread", Range(0, 1)) = 0.5
        _RoughnessContrast ("RoughnessContrast", Range(0.01, 1)) = 0.5
        [MaterialToggle] _Debug ("Debug", Float ) = 0
        _BlendNoise ("BlendNoise", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color1;
            uniform sampler2D _Occlusion1; uniform float4 _Occlusion1_ST;
            uniform sampler2D _Height1; uniform float4 _Height1_ST;
            uniform float _HeightScale1;
            uniform float4 _TEMP_CHANNEL_UV3;
            uniform sampler2D _RoughnessDetail; uniform float4 _RoughnessDetail_ST;
            uniform float _RoughnessSpread;
            uniform sampler2D _BaseColor1; uniform float4 _BaseColor1_ST;
            uniform sampler2D _Metallic1; uniform float4 _Metallic1_ST;
            uniform sampler2D _Normal1; uniform float4 _Normal1_ST;
            float2 computeMask( float Height1 , float Height2 , float contrast , float4 comp , float3 noise ){
            float depth = contrast;
            
            float mask = comp.x -((1 - comp.x) * noise).x;
            
            float ma = max(Height1 + mask, Height2 + (1-mask)) - depth;
            
            float b1 = max(Height1 + mask - ma, 0);
            float b2 = max(Height2 + (1-mask) - ma, 0);
            
            float2 result = float2(b1, b2);
            
            return result;
            
            }
            
            float computeRoughness( float A1 , float A2 , float2 b1b2 ){
            float roughnessMap = (A1 * b1b2.r + A2 * b1b2.g) / (b1b2.r + b1b2.g);
            
            return roughnessMap;
            }
            
            uniform float _RoughnessContrast;
            uniform fixed _Debug;
            uniform sampler2D _BlendNoise; uniform float4 _BlendNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float2 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float2 uv3 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
                float3 normalDir : TEXCOORD5;
                float3 tangentDir : TEXCOORD6;
                float3 bitangentDir : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD11;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.uv3 = v.texcoord3;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _Height1_var = tex2D(_Height1,TRANSFORM_TEX(i.uv0, _Height1));
                float2 node_7919 = (_HeightScale1*(_Height1_var.a - 0.5)*mul(tangentTransform, viewDirection).xy + i.uv0);
                float3 _Normal1_var = UnpackNormal(tex2D(_Normal1,TRANSFORM_TEX(node_7919.rg, _Normal1)));
                float3 normalLocal = _Normal1_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _Metallic1_var = tex2D(_Metallic1,TRANSFORM_TEX(node_7919.rg, _Metallic1));
                float4 _RoughnessDetail_var = tex2D(_RoughnessDetail,TRANSFORM_TEX(node_7919.rg, _RoughnessDetail));
                float4 _BlendNoise_var = tex2D(_BlendNoise,TRANSFORM_TEX(i.uv0, _BlendNoise));
                float2 node_4644 = computeMask( saturate(_Height1_var.a) , saturate(_RoughnessSpread) , (_RoughnessContrast*-0.99+1.0) , float4(i.uv3.r,i.uv3.g,_TEMP_CHANNEL_UV3.b,_TEMP_CHANNEL_UV3.a) , _BlendNoise_var.rgb );
                float gloss = 1.0 - computeRoughness( (1.0 - _Metallic1_var.a) , (1.0 - _RoughnessDetail_var.a) , node_4644 ); // Convert roughness to gloss
                float perceptualRoughness = computeRoughness( (1.0 - _Metallic1_var.a) , (1.0 - _RoughnessDetail_var.a) , node_4644 );
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic1_var.r;
                float specularMonochrome;
                float4 _BaseColor1_var = tex2D(_BaseColor1,TRANSFORM_TEX(node_7919.rg, _BaseColor1));
                float3 diffuseColor = lerp( (_BaseColor1_var.rgb*_Color1.rgb), float3(node_4644,0.0), _Debug ); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _Occlusion1_var = tex2D(_Occlusion1,TRANSFORM_TEX(node_7919.rg, _Occlusion1));
                indirectDiffuse *= _Occlusion1_var.a; // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color1;
            uniform sampler2D _Height1; uniform float4 _Height1_ST;
            uniform float _HeightScale1;
            uniform float4 _TEMP_CHANNEL_UV3;
            uniform sampler2D _RoughnessDetail; uniform float4 _RoughnessDetail_ST;
            uniform float _RoughnessSpread;
            uniform sampler2D _BaseColor1; uniform float4 _BaseColor1_ST;
            uniform sampler2D _Metallic1; uniform float4 _Metallic1_ST;
            uniform sampler2D _Normal1; uniform float4 _Normal1_ST;
            float2 computeMask( float Height1 , float Height2 , float contrast , float4 comp , float3 noise ){
            float depth = contrast;
            
            float mask = comp.x -((1 - comp.x) * noise).x;
            
            float ma = max(Height1 + mask, Height2 + (1-mask)) - depth;
            
            float b1 = max(Height1 + mask - ma, 0);
            float b2 = max(Height2 + (1-mask) - ma, 0);
            
            float2 result = float2(b1, b2);
            
            return result;
            
            }
            
            float computeRoughness( float A1 , float A2 , float2 b1b2 ){
            float roughnessMap = (A1 * b1b2.r + A2 * b1b2.g) / (b1b2.r + b1b2.g);
            
            return roughnessMap;
            }
            
            uniform float _RoughnessContrast;
            uniform fixed _Debug;
            uniform sampler2D _BlendNoise; uniform float4 _BlendNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float2 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float2 uv3 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
                float3 normalDir : TEXCOORD5;
                float3 tangentDir : TEXCOORD6;
                float3 bitangentDir : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.uv3 = v.texcoord3;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _Height1_var = tex2D(_Height1,TRANSFORM_TEX(i.uv0, _Height1));
                float2 node_7919 = (_HeightScale1*(_Height1_var.a - 0.5)*mul(tangentTransform, viewDirection).xy + i.uv0);
                float3 _Normal1_var = UnpackNormal(tex2D(_Normal1,TRANSFORM_TEX(node_7919.rg, _Normal1)));
                float3 normalLocal = _Normal1_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _Metallic1_var = tex2D(_Metallic1,TRANSFORM_TEX(node_7919.rg, _Metallic1));
                float4 _RoughnessDetail_var = tex2D(_RoughnessDetail,TRANSFORM_TEX(node_7919.rg, _RoughnessDetail));
                float4 _BlendNoise_var = tex2D(_BlendNoise,TRANSFORM_TEX(i.uv0, _BlendNoise));
                float2 node_4644 = computeMask( saturate(_Height1_var.a) , saturate(_RoughnessSpread) , (_RoughnessContrast*-0.99+1.0) , float4(i.uv3.r,i.uv3.g,_TEMP_CHANNEL_UV3.b,_TEMP_CHANNEL_UV3.a) , _BlendNoise_var.rgb );
                float gloss = 1.0 - computeRoughness( (1.0 - _Metallic1_var.a) , (1.0 - _RoughnessDetail_var.a) , node_4644 ); // Convert roughness to gloss
                float perceptualRoughness = computeRoughness( (1.0 - _Metallic1_var.a) , (1.0 - _RoughnessDetail_var.a) , node_4644 );
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = _Metallic1_var.r;
                float specularMonochrome;
                float4 _BaseColor1_var = tex2D(_BaseColor1,TRANSFORM_TEX(node_7919.rg, _BaseColor1));
                float3 diffuseColor = lerp( (_BaseColor1_var.rgb*_Color1.rgb), float3(node_4644,0.0), _Debug ); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color1;
            uniform sampler2D _Height1; uniform float4 _Height1_ST;
            uniform float _HeightScale1;
            uniform float4 _TEMP_CHANNEL_UV3;
            uniform sampler2D _RoughnessDetail; uniform float4 _RoughnessDetail_ST;
            uniform float _RoughnessSpread;
            uniform sampler2D _BaseColor1; uniform float4 _BaseColor1_ST;
            uniform sampler2D _Metallic1; uniform float4 _Metallic1_ST;
            float2 computeMask( float Height1 , float Height2 , float contrast , float4 comp , float3 noise ){
            float depth = contrast;
            
            float mask = comp.x -((1 - comp.x) * noise).x;
            
            float ma = max(Height1 + mask, Height2 + (1-mask)) - depth;
            
            float b1 = max(Height1 + mask - ma, 0);
            float b2 = max(Height2 + (1-mask) - ma, 0);
            
            float2 result = float2(b1, b2);
            
            return result;
            
            }
            
            float computeRoughness( float A1 , float A2 , float2 b1b2 ){
            float roughnessMap = (A1 * b1b2.r + A2 * b1b2.g) / (b1b2.r + b1b2.g);
            
            return roughnessMap;
            }
            
            uniform float _RoughnessContrast;
            uniform fixed _Debug;
            uniform sampler2D _BlendNoise; uniform float4 _BlendNoise_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float2 texcoord3 : TEXCOORD3;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float2 uv3 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
                float3 normalDir : TEXCOORD5;
                float3 tangentDir : TEXCOORD6;
                float3 bitangentDir : TEXCOORD7;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.uv3 = v.texcoord3;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _Height1_var = tex2D(_Height1,TRANSFORM_TEX(i.uv0, _Height1));
                float2 node_7919 = (_HeightScale1*(_Height1_var.a - 0.5)*mul(tangentTransform, viewDirection).xy + i.uv0);
                float4 _BaseColor1_var = tex2D(_BaseColor1,TRANSFORM_TEX(node_7919.rg, _BaseColor1));
                float4 _BlendNoise_var = tex2D(_BlendNoise,TRANSFORM_TEX(i.uv0, _BlendNoise));
                float2 node_4644 = computeMask( saturate(_Height1_var.a) , saturate(_RoughnessSpread) , (_RoughnessContrast*-0.99+1.0) , float4(i.uv3.r,i.uv3.g,_TEMP_CHANNEL_UV3.b,_TEMP_CHANNEL_UV3.a) , _BlendNoise_var.rgb );
                float3 diffColor = lerp( (_BaseColor1_var.rgb*_Color1.rgb), float3(node_4644,0.0), _Debug );
                float specularMonochrome;
                float3 specColor;
                float4 _Metallic1_var = tex2D(_Metallic1,TRANSFORM_TEX(node_7919.rg, _Metallic1));
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, _Metallic1_var.r, specColor, specularMonochrome );
                float4 _RoughnessDetail_var = tex2D(_RoughnessDetail,TRANSFORM_TEX(node_7919.rg, _RoughnessDetail));
                float roughness = computeRoughness( (1.0 - _Metallic1_var.a) , (1.0 - _RoughnessDetail_var.a) , node_4644 );
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Standard"
    CustomEditor "Runningtap.PBRBlendRough"
}
