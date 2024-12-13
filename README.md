# Minikube Kubernetes Sandbox

Welcome to the **Minikube Kubernetes Sandbox**! This repository provides a hands-on environment to learn and experiment with Kubernetes (K8s) components, offering a safe space to explore various tools like **Prometheus**, **Nginx**, **Kubeshark**, and **HashiCorp Vault**. Whether you're just starting with Kubernetes or looking to explore advanced use cases, this sandbox has everything you need.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
- [Components Overview](#components-overview)
  - [Prometheus](#prometheus)
  - [Nginx](#nginx)
  - [Kubeshark](#kubeshark)
  - [HashiCorp Vault](#hashicorp-vault)
- [How to Use](#how-to-use)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This repository is designed to set up a Minikube cluster that mimics a real-world Kubernetes environment. By running this setup, you'll gain practical experience in deploying, managing, and monitoring applications with Kubernetes, along with learning how to implement important tools used in production systems.

## Getting Started

To get started with the sandbox, follow these steps:

1. **Install Minikube**: Follow the official Minikube installation guide for your platform: [Minikube Installation](https://minikube.sigs.k8s.io/docs/).
2. **Clone the Repository**:
    ```bash
    git clone https://github.com/yourusername/minikube-k8s-sandbox.git
    cd minikube-k8s-sandbox
    ```
3. **Start Minikube**:
    ```bash
    minikube start
    ```
4. **Apply the Kubernetes Configurations**:
    ```bash
    kubectl apply -f k8s/
    ```

Once you have everything up and running, you can access the services and start experimenting with the setup!

## Components Overview

Here are the key components deployed in the sandbox environment:

### Prometheus

[Prometheus](https://prometheus.io/) is an open-source monitoring and alerting toolkit widely used in Kubernetes environments. It collects and stores metrics, providing a powerful query language (PromQL) to extract insights from your data. In this sandbox, Prometheus is deployed to monitor the cluster and any applications you choose to deploy.

Key features:
- **Metrics collection**: Monitor and collect time-series data.
- **Alerting**: Set up custom alerts for various thresholds.
- **PromQL**: A flexible query language to analyze your data.

### Nginx

[Nginx](https://www.nginx.com/) is a high-performance web server, reverse proxy, and load balancer. In this sandbox, Nginx can be used to expose your services, manage traffic, and ensure that your applications are highly available.

Key features:
- **Reverse Proxy**: Forward requests to backend services.
- **Load Balancing**: Distribute traffic evenly across multiple instances.
- **TLS/SSL Termination**: Secure communication with HTTPS.

### Kubeshark

[Kubeshark](https://kubeshark.io/) is a tool for monitoring Kubernetes traffic at the network level. It helps you visualize and debug all the network activity between containers in your cluster.

Key features:
- **Network Traffic Analysis**: Visualize and analyze service communication.
- **Kubernetes Debugging**: Get insights into the requests and responses between pods.
- **Real-Time Monitoring**: Track all network traffic in real-time.

### HashiCorp Vault

[HashiCorp Vault](https://www.vaultproject.io/) is a tool for managing secrets and sensitive data, such as API keys, credentials, and tokens. It helps securely store, access, and manage secrets across your Kubernetes cluster.

Key features:
- **Secrets Management**: Securely store sensitive information like passwords and API keys.
- **Dynamic Secrets**: Generate secrets on-demand with policies.
- **Access Control**: Fine-grained access controls based on roles and policies.

## How to Use

Once you have deployed the components, here are some ways you can use them:

1. **Prometheus**:
   - Access the Prometheus UI through the exposed service.
   - Start monitoring cluster metrics by querying the Prometheus instance.
   
2. **Nginx**:
   - Expose a sample application or service using Nginx.
   - Configure load balancing or proxying for your apps.

3. **Kubeshark**:
   - Install the Kubeshark CLI and use it to monitor network traffic between your containers.
   
4. **HashiCorp Vault**:
   - Initialize and unseal Vault.
   - Add secrets to Vault and configure access policies.

## Contributing

We welcome contributions! If you'd like to help improve this project, feel free to open an issue or create a pull request. Please make sure your code passes tests and adheres to the repository's style guidelines.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
