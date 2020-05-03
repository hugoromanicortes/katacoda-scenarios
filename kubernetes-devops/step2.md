Helm is a tool for managing Kubernetes packages called charts. Helm can do the following:
 - Create new charts from scratch
 - Package charts into chart archive (tgz) files
 - Interact with chart repositories where charts are stored
 - Install and uninstall charts into an existing Kubernetes cluster
 - Manage the release cycle of charts that have been installed with Helm
 
For Helm, there are three important concepts:
 - The **chart** is a bundle of information necessary to create an instance of a Kubernetes application.
 - The **config** contains configuration information that can be merged into a packaged chart to create a releasable object.
 - A **release** is a running instance of a chart, combined with a specific config.
 
Helm is an executable which is implemented into two distinct parts:

The **Helm Client** is a command-line client for end users. The client is responsible for the following:
 - Local chart development
 - Managing repositories
 - Managing releases
 - Interfacing with the Helm library
     - Sending charts to be installed
     - Requesting upgrading or uninstalling of existing releases
     
The **Helm Library** provides the logic for executing all Helm operations. It interfaces with the Kubernetes API server and provides the following capability:
 - Combining a chart and configuration to build a release
 - Installing charts into Kubernetes, and providing the subsequent release object
 - Upgrading and uninstalling charts by interacting with Kubernetes
 
The standalone Helm library encapsulates the Helm logic so that it can be leveraged by different clients.

![Helm 3 Architecture](/hugoromanicortes/katacoda-scenarios/tree/master/kubernetes-devops/assets/helm/helm3-architecture.png)

## Install Helm

Helm 2.x comes pre-installed on these instances, however we want to use the version 3 of Helm for this demo.

`cd helm`{{execute HOST1}}

`chmod +x install.sh | bash install.sh`{{execute HOST1}}
