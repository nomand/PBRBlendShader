# PBRBlendShader
A set of PBR shaders for Unity3d.

Using editor vertex blending tools (like Unity's recently purchased Polybrush.) you can blend barious PBR properties.

<img src='/Documentation/WET01.gif'/>

### Features

These were made with Unity's Polybrush in mind, however any vertex painter will work.

* Custom drag and drop inspectors with material properties autoassignment.
* **BlendTwo** Blends two PBR materials together. `currently broken`.
* **BlendWet**: Paint wentess / water onto a PBR material.
* **BlendRough**: Paint additional roughness onto a PBR material,  maintaining base heigtmap.
* **BlendBase**: Paint additional albedo onto a PBR material, maintaining base heigtmap.

download the **unitypackage** for shaders and associated scripts only or download the project for other setup.
I never got around to implementing Emissive properties.

### Disclaimer

These shaders were made using ShaderForge. Now that ShaderForge is discontinued and native Substance support has been removed from Unity, these shaders will only work in Unity version up to 2017.4.5. Unity 2018 broke ShaderForge. I may revisit these in the future and update them to Unity's shader graph, but with introduction of new Scriptable pipelines, there's a lot for me to learn, therefore I'm making this available, feel free to submit pull requests.

### License

Refer to the [License](LICENSE.md) for rights and limitations.

Master branch contains code from:

* SlightlyMad's [Volumetric Lights](https://github.com/SlightlyMad/VolumetricLights)
* Torahhorse's [FPS Drifter Controller](https://github.com/jackaperkins/first-person-drifter)
* Unity's [Post Processing stack v2](https://github.com/Unity-Technologies/PostProcessing/tree/v2)

Observe their respective licenses.