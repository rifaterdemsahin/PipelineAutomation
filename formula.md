Sure! Here's an example of a Kubernetes pipeline script using `kubectl` to create two users, add them to groups, and assign role bindings using a service account:

```yaml
apiVersion: v1
kind: ServiceAccount
metadata:
  name: automation-sa
  namespace: default
---
apiVersion: v1
kind: Secret
metadata:
  name: automation-sa-secret
  annotations:
    kubernetes.io/service-account.name: automation-sa
type: kubernetes.io/service-account-token
---
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
---
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: developer-role
  namespace: default
rules:
  - apiGroups: [""]
    resources: ["pods"]
    verbs: ["get", "list", "watch"]
---
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: tester-role
  namespace: default
rules:
  - apiGroups: [""]
    resources: ["pods"]
    verbs: ["get", "list", "watch"]
---
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
---
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

This script does the following:
1. **Creates a service account** named `automation-sa`.
2. **Creates a secret** for the service account.
3. **Creates a ConfigMap** to store user information.
4. **Defines roles** for developers and testers.
5. **Creates role bindings** to assign roles to the users Joseph and Rifat.

You can apply this script using `kubectl apply -f <filename>.yaml`.

Would you like any additional details or modifications?