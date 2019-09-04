[![CircleCI](https://circleci.com/gh/emrepacaci/project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://circleci.com/gh/emrepacaci/project-ml-microservice-kubernetes/tree/master)

# Scaling Microservices

This project is about operationalizing a Machine Learning Microservice using kubernetes. The microservice serves out predictions (inference) about housing prices through API calls. The `sklearn` model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home data about highway access, teacher-to-pupil ratios, and so on.This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies


### Other Libraries
While you still have your .devops environment activated, you will still need to install:

    Docker
    Hadolint
    Kubernetes (Minikube)
    
 For Mac:
 
    brew cask install virtualbox
    
 * Minikube

     `brew cask install minikube`

    
### Files explanation

* config.yml: CircleCI configuration file for running the tests
* app.py: Python flask app that serves out predictions (inference) about housing prices through API calls
* Dockerfile: Dockerfile for building the docker image
* docker_out.txt: contain log info about prediction values after running make prediction script
* kubernetes_out.txt: contain log info about prediction values after running make_prediction_kubernetes.sh 
* make_prediction.sh: Send a request to the Python flask app to get a prediction, for localhost
* make_prediction_kubernetes.sh: Send a request to the Python flask app to get a prediction, for minikube kubernetes
* Makefile: includes instructions on environment setup and lint tests
* run_docker.sh: file to be able to get Docker running, locally
* run_kubernetes.sh: file to run the app in kubernetes
* upload_docker.sh: file to upload the image to docker Hub for kubernetes

### How to Run
 1. You should have a virtual machine like VirtualBox and minikube installed, as per the project environmet instructions.To     run this app in docker image locally, type terminal command:

        ./run_docker.sh
        
 2. After you’ve called run_docker.sh, and app is and running on image, make a prediction using a separate terminal tab and     run:
 
        ./make_prediction.sh
        
 3. After running this app locally, push it to Docker Hub, type terminal command:
 
        ./upload_docker.sh
        
4. Now, You can run this app in Kubernetes cluster. To do that, you need to start a local cluster. you have already            installed Minikube now start Minikube:

        Minikube start 
        
5. To deploy this application in kubernetes run:
        
       ./run_kubernetes.sh
        
6. After you’ve called run_kubernetes.sh, and a pod is up and running, make a prediction using a separate terminal tab and      run:

        ./make_prediction_kubernetes.sh
        
