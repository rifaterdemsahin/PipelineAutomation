# Code That Is Implemented

*Includes code snippets and examples to demonstrate each concept practically.*

**Action:** Execute > Code

```bash
tkn pipeline delete --all && tkn pipelinerun delete --all && tkn task delete --all && tkn taskrun delete --all
```

2. Apply the YAML configurations in the `tekton` directory:
   ```sh
   kubectl apply -f task.yaml
   kubectl apply -f pipeline.yaml
   kubectl apply -f pipeline-run.yaml
   
   kubectl apply -f tester-role-binding.yaml
   kubectl apply -f tester-role.yaml
   kubectl apply -f developer-role.yaml
   ```

---

tkn pipelinerun logs echo-date-pipeline-run -f
kubectl logs -l app=tekton-pipelines-controller -n tekton-pipelines
