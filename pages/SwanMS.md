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
The probe of concept is developed in python 3 with Flask, we are launching the kernel gateway with a sub-process module, but in principle, the notebook can be executed with the kernel gateway 
using other approaches like docker or job-schedulers.

To install and test it, please follow the next steps.

Downloading and installing requirements

```.sh
git clone https://gitlab.cern.ch/ozapatam/swanms.git
cd swanms/
pip3 install -r requirements.txt --user
```

Starting the server

```.sh
./swanms_server 
```

The output is someting like:

```
ozapatam@tuxito-sft:~/Swan/swanms$ ./swanms_server 
 * Static Dir = /home/ozapatam/Swan/swanms/static
 * Templates Dir = /home/ozapatam/Swan/swanms/templates
 * Warning! Directory  /home/ozapatam/Swan/swanms/./microservices/  already exists
 * Serving Flask app "swanms.swanms_server" (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: on
 * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Static Dir = /home/ozapatam/Swan/swanms/static
 * Templates Dir = /home/ozapatam/Swan/swanms/templates
 * Warning! Directory  /home/ozapatam/Swan/swanms/./microservices/  already exists
 * Debugger is active!
 * Debugger PIN: 112-751-545
```
