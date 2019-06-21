---
title: SWAN Microservices
layout: content
toc: true
---

# SWAN Microservices

{:.no_toc}

<table style="width:100%">
  <tr>
    <td colspan="2" style="text-align:center"><img src="{{ site.baseurl }}/img/logo_swan_letters.png" style="width:250px"/></td>
    <!-- <td style="text-align:center"><img src="{{ site.baseurl }}/img/nvidiacuda.png" style="width:250px" /></td> -->
  </tr>
</table>

* Table of Contents
{:toc}
<br>


-----------
# Description
-----------
SWAN MS (MicroServices) is a server that allows to launch microservices using [Jupyter Kernel Gateway](https://github.com/jupyter/kernel_gateway).
The microservices will have access to EOS to read the data and to CVMFS to load the software enviroments using LCG stacks, in a similar way that is provide SWAN 
in the Jupyter notebook interface.

-----------
# Architecture
-----------
<center>
<img src="{{ site.baseurl }}/img/SWAN_MS.png" />
</center>


-----------
# Prototype
-----------
The probe of concept is developed in python with Flask, launching the kernel gateway with sub process, but in principle, the notebook can be executed with the kernel gateway 
using other approaches like docker or job-schedulers.


