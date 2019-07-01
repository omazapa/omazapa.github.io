---
title: NVidia Virtual GPUs
layout: content
toc: true
---


* Table of Contents 
{:toc}
<br>

# NVidia Virtual GPUs
---------------

We can split a GPU into a set of [vGPUs](https://www.nvidia.com/en-us/data-center/virtual-gpu-technology/) using an special driver developed by NVidia
* {:.l0} The software is proprietary (prices in the link)  https://images.nvidia.com/content/grid/pdf/Virtual-GPU-Packaging-and-Licensing-Guide.pdf
* {:.l0} The driver is configured at the level of the hypervisor
* {:.l0} The number of vGPUs is defined launching the VMs
* {:.l0} It can support different hypervisors, VMWare, XEN, RedHat KVM etc..
* {:.l0} At the moment it only works  in the NVidia cards with Tesla architecture (newest models)

<center>
<img src='https://docs.nvidia.com/grid/latest/grid-vgpu-user-guide/graphics/architecture-grid-vgpu.png'/>
<img src='{{ site.baseurl }}/img/design-visualization-virtual-gpu-technology.jpg'/>
</center>


# Interesting Links
---------------

* {:.l0} [https://cloud.google.com/compute/docs/gpus/](https://cloud.google.com/compute/docs/gpus/)
* {:.l0} [https://cloud.google.com/nvidia/](https://cloud.google.com/nvidia/)
