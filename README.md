# UCRiversideProject1--Camou
UCR Project Camou 
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![diagram_filename.PNG](Images/diagram_filename.PNG)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - filebeat-playbook.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly responsive, in addition to restricting access to the network. Load balancers ensure availability through distribution of incoming date to web servers. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the event logs and system metrics.
- FileBeat monitors the log files, collects log events, and forwards them to Elasticsearch
- MetricBeat collects metrics for the system and services running on the server. 

The configuration details of each machine may be found below.

| Name      | Function   | IP Address | Operating System |
|-----------|------------|------------|------------------|
| Jump Box  | Gateway    | 10.0.0.1   | Linux            |
| Web-1     | Server     | 10.0.0.5   | Linux            |
| Web-2     | Server     | 10.0.0.6   | Linux            |
| HandCrazy | Log Server | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump box provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
-Personal IP

Machines within the network can only be accessed by Jump Box Provisioner through port 5601.

A summary of the access policies in place can be found in the table below.

| Name      | Publicly Accessible | Allowed IP Addresses |
|-----------|---------------------|----------------------|
| Jump Box  | Yes                 | Personal             |
| Web-1     | No                  | 10.0.0.5             |
| Web-2     | No                  | 10.0.0.6             |
| HandCrazy | No                  | Personal             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because the systems installation and updates can be replicated easily

The playbook implements the following tasks:
- Install docker.io and python3-pip

![DockerPython.PNG](Images/DockerPython.PNG)

- Increase Virtual Memory 

![IncreaserMemory.PNG](Images/IncreaserMemory.PNG)

- Download and launch a docker Elk container

![LaunchDocker.PNG](Images/LaunchDocker.PNG)
The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![docker_ps_output.PNG](Images/docker_ps_output.PNG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web 1 (10.0.0.5)
- Web 2 (10.0.0.6)

We have installed the following Beats on these machines:
- FileBeat
- MetricBeat

These Beats allow us to collect the following information from each machine:
- FileBeat monitors log directories or specific log file  and forwards tehm to elastisearch
- MetricBeat collects metrics, such as cpu usafe and other statistics on the system to monitor healt of the system. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the configuration files to your Web VMs.
- Update the /etc/ansible/host file to include the IP addresses of your Elk servers VMs and the Web servers group. 
- Run the playbook, and navigate to http://[ElkVMPublicIPAddress]:5601/app/kibana to check that the installation worked as expected.

###Frequently Asked Questions
- _Which file is the playbook? Where do you copy it? filebeat-config.yml asnd it can be copied at ?????????????????
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
filebeat-config.yml,  updated the /etc/ansible/host file and specify which VMs to install by creating webserver and elk groups and adding the private IP for the VMs to the appropriate group
- _Which URL do you navigate to in order to check that the ELK server is running? http://[ElkVMPublicIPAddress]:5601/app/kibana 

