---
title: About the Fellowship
layout: content
---

The project will implement a turn-key system that allows companies to provide their data scientists with a collaborative ML based data analysis platform, accessible via a web browser and that allows to transparently exploit an existing IT infrastructure. 

The focus is to work with the All-In-Image company under agreement KM4257/EP/KT/292C, in connection with the Knowledge Transfer office at CERN. 

The main objectives of this project are: 
* {:.l0}  Integrate SWAN with GPUs 
* {:.l1} Configure and test exploitation of GPUs from Docker containers 
* {:.l1} Investigate exclusive/shared access to GPUs from Docker containers, study role of VMs 
* {:.l1} Validate the CVMFS software stack for ML GPU usage 
* {:.l1} Expose the Docker-GPU integration in the SWAN on-premises version (interface, configuration of user session) 
* {:.l0} Create a prototype instance of SWAN on-premises which can be deployed at CERN and on AII infrastructure 
* {:.l1} Deploy the prototype SWAN on-premises with GPU integration 
* {:.l1} Prepare documentation for experts 
* {:.l1} Collect feedback from users and optimize accordingly 
* {:.l0} Development of a microservices platform for execution of ML computations 
* {:.l1} Deployment of a scalable RESTful server using a Python web framework (e.g. Flask) to publish microservices 
* {:.l1} Automate the conversion of notebooks to a set of microservices in the aforementioned server (e.g. by using Jupyter Gateway) 
* {:.l1} Automate the deployment of necessary building blocks on the server side: CVMFS for software, EOS and/or some other storage system for data 
* {:.l1} Study the management of credentials on the server side for doctors and their access to patient data 
* {:.l0} Investigate use of new Jupyter interfaces (JupyterLab) to visualize medical data from AII (if time allows)
