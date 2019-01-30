#!/bin/sh

kubectl create namespace jenkins 
helm install --name jenkins -f value.yaml --namespace jenkins stable/jenkins

printf $(kubectl get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo

jenkins
admin/7UDMrcvVVR

	  
	  