---
title: Swan GPU
layout: content
toc: true
---

# Studies of Docker/GPU architectures for SWAN
{:.no_toc}
-

<table style="width:100%">
  <tr>
    <td colspan="2" style="text-align:center"><img src="{{ site.baseurl }}/img/logo_swan_letters.png" style="width:250px"/></td>
  </tr>
  <tr>
    <td style="text-align:center"><img src="{{ site.baseurl }}/img/nvidiacuda.png" style="width:250px" /></td>
    <td style="text-align:center"><img src="{{ site.baseurl }}/img/AMD_Radeon_logo.png" style="width:250px" /></td>
  </tr>
</table>

* Table of Contents 
{:toc}
<br>


## Description 
-----------
This research is about the current status of gpu devices that can be used in docker to integrate it to SWAN. 
We describe the technologies and architectures that can be implemented with it limitations, specially for NVIDA and AMD GPUs.
The objetive is to support GPU executions to run mathematical problems that uses vector, matrices or in general tensors operations.



## NVidia architecture
The NVidia Gpu is a procesor that has different architectures (Turing, Volta, Pascal, Maxwell, Kepler and Fermi) according to the generation of the hardware of the specifications required by the market.
The basic difference with the CPU is that allows to do vectorial operations instead scalar operations, that is very useful to process elements like a vectors, matrices or in general Tensors, that are very used in mathematical problems like for example machine learning algorithms.
Nvidia has support through docker using the next schema.


<table style="width:100%">
  <tr>
   <td style="text-align:center"><img src="https://devblogs.nvidia.com/wp-content/uploads/2016/06/nvidia-docker.png"  /></td>
  </tr>
</table>

### Notes
-----------
<b>1)</b> The dependency between CUDA/CUDNN and Ndivia drivers can be confuse and maybe a nightmare, there is some charts about how to configure the hardware and software to use NVidia with CUDA according to the GPU architecture (See [link](https://docs.nvidia.com/deploy/cuda-compatibility/index.html)) <br>
<b>2)</b> We can not put limitations for users in hardware (See [link](https://github.com/nvidia/nvidia-docker/wiki/Frequently-Asked-Questions#can-i-limit-the-gpu-resources-eg-bandwidth-memory-cuda-cores-taken-by-a-container)) <br>





# AMD Radeon architecture
-----------
The Radeon GPUs has support for machine learning frameworks too. The architecture in docker is similar to the implemented in NVidia schema.

<center>
<img src="{{ site.baseurl }}/img/AmdDocker.jpg" style="width:80%"  />
</center>

## Notes
-----------
<b>1)</b> The support for important machine learning frameworks like tensorflow is relatively new. <br>
<b>2)</b> Appear to be that we can not put limitations for users in hardware.<br>


# Conclusion
-----------
We can implement a solution over docker for NVidia and AMD GPUs using the next schema.
For the general architecture see the next image:

<b>1)</b> In the OS layer we need to install NVIDIA/AMD GPU Driver, the driver is not installed in the docker image.<br>
<b>2)</b> We can create our docker image based on preconfigure images provided by Nvidia (See [link](https://github.com/NVIDIA/nvidia-docker)) or AMD (See [link](https://hub.docker.com/u/rocm/)) <br>
<b>3)</b> CUDA(Nvidia),  ROCm(AMD) frameworks, the machine learning packages, software and services provided by CERN like CVMFS, ROOT etc.. will be installed in the docker image. <br>

<center>
    <img src="{{ site.baseurl }}/img/GpuDocker.png"  />
</center>


# References
* [https://devblogs.nvidia.com/nvidia-docker-gpu-server-application-deployment-made-easy/](https://devblogs.nvidia.com/nvidia-docker-gpu-server-application-deployment-made-easy/)
* [https://github.com/nvidia/nvidia-docker/wiki/Frequently-Asked-Questions](https://github.com/nvidia/nvidia-docker/wiki/Frequently-Asked-Questions)
* [https://docs.nvidia.com/deploy/cuda-compatibility/index.html](https://docs.nvidia.com/deploy/cuda-compatibility/index.html)
* [https://developer.nvidia.com/cuda-faq](https://developer.nvidia.com/cuda-faq)
* [https://github.com/NVIDIA/nvidia-docker](https://github.com/NVIDIA/nvidia-docker)
* [https://www.amd.com/en/graphics/servers-radeon-instinct-deep-learning](https://www.amd.com/en/graphics/servers-radeon-instinct-deep-learning)
* [https://community.amd.com/community/radeon-instinct-accelerators/blog/2018/11/13/the-amd-deep-learning-stack-using-docker](https://community.amd.com/community/radeon-instinct-accelerators/blog/2018/11/13/the-amd-deep-learning-stack-using-docker)
* [https://github.com/RadeonOpenCompute/ROCm](https://github.com/RadeonOpenCompute/ROCm)
* [https://rocm.github.io/](https://rocm.github.io/)
