Got it! Here are the commands to execute the pipeline script in a Minikube environment:

1. **Start Minikube**:
    ```sh
    minikube start
    ```

2. **Create the Service Account**:
    Create a file named `service-account.yaml` with the following content:
    ```yaml
    apiVersion: v1
    kind: ServiceAccount
    metadata:
      name: automation-sa
      namespace: default
    ```
    Apply the configuration:
    ```sh
    kubectl apply -f service-account.yaml
    ```

3. **Create the Secret for the Service Account**:
    Create a file named `service-account-secret.yaml` with the following content:
    ```yaml
    apiVersion: v1
    kind: Secret
    metadata:
      name: automation-sa-secret
      annotations:
         kubernetes.io/service-account.name: automation-sa
    type: kubernetes.io/service-account-token
    ```
    Apply the configuration:
    ```sh
    kubectl apply -f service-account-secret.yaml
    ```

4. **Create the ConfigMap for User Information**:
    Create a file named `user-config.yaml` with the following content:
    ```yaml
    apiVersion: v1
    kind: ConfigMap
    metadata:
      name: user-config
    data:
      users: |
         - name: Joseph
            groups:
              - developers
         - name: Rifat
            groups:
              - testers
    ```
    Apply the configuration:
    ```sh
    kubectl apply -f user-config.yaml
    ```

5. **Create Roles**:
    Create a file named `developer-role.yaml` with the following content:
    ```yaml
    apiVersion: rbac.authorization.k8s.io/v1
    kind: Role
    metadata:
      name: developer-role
      namespace: default
    rules:
      - apiGroups: [""]
         resources: ["pods"]
         verbs: ["get", "list", "watch"]
    ```
    Apply the configuration:
    ```sh
    kubectl apply -f developer-role.yaml
    ```

    Create a file named `tester-role.yaml` with the following content:
    ```yaml
    apiVersion: rbac.authorization.k8s.io/v1
    kind: Role
    metadata:
      name: tester-role
      namespace: default
    rules:
      - apiGroups: [""]
         resources: ["pods"]
         verbs: ["get", "list", "watch"]
    ```
    Apply the configuration:
    ```sh
    kubectl apply -f tester-role.yaml
    ```

6. **Create Role Bindings**:
    Create a file named `developer-role-binding.yaml` with the following content:
    ```yaml
    apiVersion: rbac.authorization.k8s.io/v1
    kind: RoleBinding
    metadata:
      name: developer-role-binding
      namespace: default
    subjects:
      - kind: User
         name: Joseph
         apiGroup: rbac.authorization.k8s.io
    roleRef:
      kind: Role
      name: developer-role
      apiGroup: rbac.authorization.k8s.io
    ```
    Apply the configuration:
    ```sh
    kubectl apply -f developer-role-binding.yaml
    ```

    Create a file named `tester-role-binding.yaml` with the following content:
    ```yaml
    apiVersion: rbac.authorization.k8s.io/v1
    kind: RoleBinding
    metadata:
      name: tester-role-binding
      namespace: default
    subjects:
      - kind: User
         name: Rifat
         apiGroup: rbac.authorization.k8s.io
    roleRef:
      kind: Role
      name: tester-role
      apiGroup: rbac.authorization.k8s.io
    ```
    Apply the configuration:
    ```sh
    kubectl apply -f tester-role-binding.yaml
    ```

These commands will set up the users, groups, roles, and role bindings in your Minikube environment. Let me know if you need any further assistance!