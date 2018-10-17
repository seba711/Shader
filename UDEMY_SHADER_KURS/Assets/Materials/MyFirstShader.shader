Shader "Holistic/HelloShader"{

Properties {
	_myColour ("Example Colour", Color)=(1,1,1,1)
	_myEmission ("Example Emission", Color)=(1,1,1,1)
	_myNormals ("Example Normals", Color)=(1,1,1,1)
}

SubShader {

	CGPROGRAM
		#pragma surface surf Lambert

		struct Input {
			float2 uvMainTex;
		};

		fixed4 _myColour,_myEmission, _myNormals;

		void surf (Input IN, inout SurfaceOutput o) {
			o.Albedo=_myColour.rgb;
			o.Emission=_myEmission.rgb;
			o.Normal=_myNormals.rgb;
		}
	ENDCG

	}
	FallBack "Diffuse"
}