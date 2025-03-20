# Minikube Setup

This project provides a set of YAML configurations to set up a Minikube environment with user roles and permissions.

## Project Structure

The project contains the following files:

- **kubernetes/service-account.yaml**: Defines a ServiceAccount named "automation-sa" in the default namespace.
- **kubernetes/service-account-secret.yaml**: Creates a Secret associated with the "automation-sa" ServiceAccount for authentication with the Kubernetes API.
- **kubernetes/user-config.yaml**: Defines a ConfigMap named "user-config" that contains user information, including names and associated groups.
- **kubernetes/developer-role.yaml**: Defines a Role named "developer-role" that grants permissions to get, list, and watch pods in the default namespace.
- **kubernetes/tester-role.yaml**: Defines a Role named "tester-role" that grants similar permissions to the "tester" user for pods in the default namespace.
- **kubernetes/developer-role-binding.yaml**: Creates a RoleBinding that associates the "developer-role" with the user "Joseph".
- **kubernetes/tester-role-binding.yaml**: Creates a RoleBinding that associates the "tester-role" with the user "Rifat".

## Getting Started

To set up the Minikube environment, follow these steps:

1. Start Minikube:
   ```sh
   minikube start
   ```

2. Apply the YAML configurations in the `kubernetes` directory:
   ```sh
   kubectl apply -f kubernetes/
   ```

This will create the necessary ServiceAccount, Secret, ConfigMap, Roles, and RoleBindings in your Minikube environment.

## Usage

After setting up the environment, you can manage users and their permissions as defined in the configurations. Make sure to adjust the user information in `user-config.yaml` as needed.

For further assistance, feel free to reach out!