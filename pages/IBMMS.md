---
title: Studies on Microservices and  Jupyter technologies for it.
layout: content
toc: true
---


* Table of Contents 
{:toc}
<br>

# Jupyter Kernel Gateway
---------------
Jupyter [Kernel Gateway](https://github.com/jupyter/kernel_gateway) is a web server that provides headless access to Jupyter kernels. Your application communicates with the kernels remotely, through REST calls and Websockets rather than ZeroMQ messages. There are no provisions for editing notebooks through the Kernel Gateway.

## Features

The Jupyter Kernel Gateway has the following features:

* {:.l0} [`jupyter-websocket` mode](https://jupyter-kernel-gateway.readthedocs.io/en/latest/websocket-mode.html) which provides a 
  Jupyter Notebook server-compatible API for requesting kernels and
  communicating with them using Websockets
* {:.l0} [`notebook-http` mode](https://jupyter-kernel-gateway.readthedocs.io/en/latest/http-mode.html) which maps HTTP requests to
  cells in annotated notebooks
* {:.l0} Option to enable other kernel communication mechanisms by plugging in third party personalities
* {:.l0} Option to set a shared authentication token and require it from clients
* {:.l0} Options to set CORS headers for servicing browser-based clients
* {:.l0} Option to set a custom base URL (e.g., for running under tmpnb)
* {:.l0} Option to limit the number kernel instances a gateway server will launch
  (e.g., to force scaling at the container level)
* {:.l0} Option to pre-spawn a set number of kernel instances
* {:.l0} Option to set a default kernel language to use when one is not specified
  in the request
* {:.l0} Option to pre-populate kernel memory from a notebook
* {:.l0} Option to serve annotated notebooks as HTTP endpoints, see
  [notebook-http](https://jupyter-kernel-gateway.readthedocs.io/en/latest/http-mode.html)
* {:.l0} Option to allow downloading of the notebook source when running
  in `notebook-http` mode
* {:.l0} Generation of [Swagger specs](http://swagger.io/introducing-the-open-api-initiative/)
  for notebook-defined API in `notebook-http` mode
* {:.l0} A CLI for launching the kernel gateway: `jupyter kernelgateway OPTIONS`
* {:.l0} A Python 2.7 and 3.3+ compatible implementation



# The IBM's Jupyter Enterprise Gateway
---------------
IBM has a development to use Jupyter gateway in a enterprise platform [https://developer.ibm.com/open/projects/jupyter-enterprise-gateway/](https://developer.ibm.com/open/projects/jupyter-enterprise-gateway/).
They are doing the intregartion with Spark Clusters and given support to an administrative UI, that allows to take actions  over the jupyter kernels, also you can to deploy customized environments using Kubertenes.
You can see more information on [https://jupyter-enterprise-gateway.readthedocs.io/en/latest/](https://jupyter-enterprise-gateway.readthedocs.io/en/latest/) and in the github repository [https://github.com/jupyter/enterprise_gateway](https://github.com/jupyter/enterprise_gateway)


# The SWAN Microservices Proposal 
---------------
Please read this page with the proposal <a href='{{ site.baseurl }}/pages/SwanMS.html'>SWAN MS</a>


# References
---------------

* {:.l0} [https://jupyter-kernel-gateway.readthedocs.io/en/latest/http-mode.html](https://jupyter-kernel-gateway.readthedocs.io/en/latest/http-mode.html)
* {:.l0} [https://github.com/jupyter/kernel_gateway](https://github.com/jupyter/kernel_gateway)
* {:.l0} [https://github.com/jupyterlab/jupyterlab/tree/master/packages/services](https://github.com/jupyterlab/jupyterlab/tree/master/packages/services)
* {:.l0} [https://developer.ibm.com/open/projects/jupyter-enterprise-gateway/](https://developer.ibm.com/open/projects/jupyter-enterprise-gateway/)
