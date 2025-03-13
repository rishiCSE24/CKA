#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <option>"
    echo "Valid options: init, del"
    exit 1
fi

# Read the first argument
opt="$1"

# Check the option
if [ "$opt" == "init" ]; then
    echo "Initializing..."
    # Add initialization logic here
    kubectl apply -f deployment.yaml
    kubectl apply -f service.yaml
    kubectl apply -f ingress.yaml
elif [ "$opt" == "del" ]; then
    echo "Deleting..."
    # Add deletion logic here
    kubectl delete -f ingress.yaml
    kubectl delete -f service.yaml
    kubectl delete -f deployment.yaml
else
    echo "Invalid option"
    exit 1
fi