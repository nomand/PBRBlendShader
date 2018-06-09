# PBRBlendShader
A set of PBR shaders for Unity3d.

Using editor vertex blending tools (like Unity's recently purchased Polybrush.) you can blend barious PBR properties.

### Features

These were made with Unity's Polybrush in mind, however any vertex painter will work.

* Drag and drop material properties autoassignment.
* BlendTwo is currently broken, a shader that blends two PBR materials together.
* BlendWet: Paint wentess / water onto a PBR material.
* BlendRough: Paint additional roughness onto a PBR material.
* BlendBase: Paint additional albedo onto a PBR material.


### Disclaimer

These shaders were made using ShaderForge. Now that ShaderForge is discontinued and native Substance support has been removed from Unity, these shaders will only work in Unity version up to 2017.4.5. Unity 2018 broke ShaderForge. I may revisit these in the future to update them to Unity's shader graph, but with introduction of new Scriptable pipelines, there's a lot for me to learn. Therefore I'm making this available, feel free to submit pull requests.

### License
Refer to the [License.md](License.md) for rights and limitations.