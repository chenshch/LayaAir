attribute vec4 a_Position;

#ifdef GPU_INSTANCE
	attribute mat4 a_MvpMatrix;
	attribute mat4 a_WorldMat;
#else
	uniform mat4 u_MvpMatrix;
	uniform mat4 u_WorldMat;
#endif

#ifdef BONE
	const int c_MaxBoneCount = 24;
	attribute vec4 a_BoneIndices;
	attribute vec4 a_BoneWeights;
	uniform mat4 u_Bones[c_MaxBoneCount];
#endif

attribute vec3 a_Normal;
varying vec3 v_Normal; 

#if defined(NORMALTEXTURE)||defined(PARALLAXTEXTURE)
	attribute vec4 a_Tangent0;
	varying vec3 v_Tangent;
	varying vec3 v_Binormal;
    #ifdef PARALLAXTEXTURE
	    varying vec3 v_ViewDirForParallax;
    #endif
#endif

#if defined(ALBEDOTEXTURE)||defined(METALLICGLOSSTEXTURE)||defined(NORMALTEXTURE)||defined(EMISSIONTEXTURE)||defined(OCCLUSIONTEXTURE)||defined(PARALLAXTEXTURE)
	attribute vec2 a_Texcoord0;
	varying vec2 v_Texcoord0;
#endif

#if defined(LIGHTMAP)&&defined(UV1)
	attribute vec2 a_Texcoord1;
#endif

#ifdef LIGHTMAP
	uniform vec4 u_LightmapScaleOffset;
	varying vec2 v_LightMapUV;
#endif

uniform vec3 u_CameraPos;
varying vec3 v_EyeVec;
varying vec3 v_PositionWorld;
varying float v_posViewZ;

#ifdef RECEIVESHADOW
	#ifdef SHADOWMAP_PSSM1 
	varying vec4 v_lightMVPPos;
	uniform mat4 u_lightShadowVP[4];
	#endif
#endif

#ifdef TILINGOFFSET
	uniform vec4 u_TilingOffset;
#endif