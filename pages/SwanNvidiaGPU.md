---
title: Swan NVIDIA GPU
layout: content
toc: true
---

# Docker/GPU architectures for SWAN with NVidia GPUs

**NOTE:** The code was integrated to the official SWAN repositories

{:.no_toc}

<table style="width:100%">
  <tr>
    <td colspan="2" style="text-align:center"><img src="{{ site.baseurl }}/img/logo_swan_letters.png" style="width:250px"/></td>
    <td style="text-align:center"><img src="{{ site.baseurl }}/img/nvidiacuda.png" style="width:250px" /></td>
  </tr>
</table>

* Table of Contents
{:toc}
<br>


-----------
# Description
-----------
This is a wiki to configure nvidia support in docker, We will explain how to configure the host and the docker images, to run for example tensoflow application.

-----------
# NVidia architecture
-----------
The NVidia Gpu is a processor that has different architectures (Turing, Volta, Pascal, Maxwell, Kepler and Fermi) according to the generation of the hardware and the specifications required by the market.
The basic difference with the CPU is that allows to do vectorial operations instead scalar operations, that is very useful to process elements like a vectors, matrices or in general Tensors, that are used in mathematical problems like for example machine learning algorithms.
Nvidia has support through docker using the next schema.


<table style="width:100%">
  <tr>
   <td style="text-align:center"><img src="https://devblogs.nvidia.com/wp-content/uploads/2016/06/nvidia-docker.png"  /></td>
  </tr>
</table>


-----------
# SWAN GPU architecture
-----------

The GPU will be expose in the container through a nvidia-docker connector that allows to use directly the device, but at the moment
there is not way to control the memory and cuda cores between the users.
The CMVFS will have a machine learning stack of software ready to use in the GPU device, using nvidia techonolies like cuda, cudnn and cublas 
Also some machine learning popular packages like tensorflow, PyTorch, Scikit-Learn  and more.
<center>
<img src='{{ site.baseurl }}/img/SWAN_GPU_ARCH.png' />
</center>


-----------
# Centos 7 Host Configuration
-----------

The first step is to configure all the repositories needed.
```sh
 yum groupinstall "Development Tools"
 yum install kernel-devel epel-release
 yum install dkms
 rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
 yum install https://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
```

-----------
## Install the NVidia driver
-----------

```sh
yum install kmod-nvidia
```

To load the new driver we need may remove the old one (nouveau)
```sh
rmmod nouveau
modprobe nvidia
```

To check that the driver is working run 
```sh
nvidia-smi
```

you should see something like

<img src='{{ site.baseurl }}/img/nvidia-smi-example.png'/>

-----------
## Install Docker CE
-----------

Installing prerequisites
```sh
yum install -y yum-utils \
device-mapper-persistent-data \
lvm2
```

Configuring the repository
```sh
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
```

Install Docker
```sh
yum install docker-ce
```

Start Docker
```sh
systemctl start docker
```

-----------
## Install CVMFS and CERN Cloud Infrastructure Utils
-----------

CVMFS is the service to load stacks of software using LCG.
Configuring the repositories.

```sh
yum install https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest.noarch.rpm
tee /etc/yum.repos.d/cci7-utils.repo <<-'EOF'
[cci7-utils]
name=CERN Cloud Infrastructure Utils
baseurl=http://linuxsoft.cern.ch/internal/repos/cci7-utils-stable/x86_64/os/
enabled=1
gpgcheck=0
EOF
```

Installing CVMFS Docker

```sh
yum install -y docker-volume-cvmfs atlas
```

-----------
## Install nvidia-docker
-----------
nvidia docker [https://github.com/NVIDIA/nvidia-docker](https://github.com/NVIDIA/nvidia-docker) is a software (middleware) that should be installed in host where you want to run your docker images with nvidia cuda support.
To install is please follow the next instructuions:

**Make sure you have installed the [NVIDIA driver](https://github.com/NVIDIA/nvidia-docker/wiki/Frequently-Asked-Questions#how-do-i-install-the-nvidia-driver) and a [supported version](https://github.com/NVIDIA/nvidia-docker/wiki/Frequently-Asked-Questions#which-docker-packages-are-supported) of [Docker](https://docs.docker.com/engine/installation/) for your distribution (see [prerequisites](https://github.com/NVIDIA/nvidia-docker/wiki/Installation-(version-2.0)#prerequisites)).**

**If you have a custom `/etc/docker/daemon.json`, the `nvidia-docker2` package might override it.**  

If you are **not** using the official `docker-ce` package on CentOS/RHEL, use the next section.

```sh
# Add the package repositories
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.repo | \
  sudo tee /etc/yum.repos.d/nvidia-docker.repo

# Install nvidia-docker2 and reload the Docker daemon configuration
sudo yum install -y nvidia-docker2
sudo pkill -SIGHUP dockerd
```


-----------
## Notes
-----------
<b>1)</b> The dependency between CUDA/CUDNN and Ndivia drivers can be confuse and maybe a nightmare, there is some charts about how to configure the hardware and software to use NVidia with CUDA according to the GPU architecture (See [link](https://docs.nvidia.com/deploy/cuda-compatibility/index.html)) <br>
<b>2)</b> We can not put limitations for users in hardware (See [link](https://github.com/nvidia/nvidia-docker/wiki/Frequently-Asked-Questions#can-i-limit-the-gpu-resources-eg-bandwidth-memory-cuda-cores-taken-by-a-container)) <br>
