# Code That Is Implemented

*Includes code snippets and examples to demonstrate each concept practically.*

**Action:** Execute > Code

2. Apply the YAML configurations in the `tekton` directory:
   ```sh
   kubectl apply -f task.yaml
   kubectl apply -f pipeline.yaml
   kubectl apply -f pipeline-run.yaml
   
   kubectl apply -f tester-role-binding.yaml
   kubectl apply -f tester-role.yaml
   ```


   @rifaterdemsahin ➜ /workspaces/PipelineAutomation/6_🔣_Symbols/3_Pipelines (main) $    kubectl apply -f tekton/
task.tekton.dev/echo-date-task created
pipelinerun.tekton.dev/echo-date-pipeline-run created
pipeline.tekton.dev/echo-date-pipeline created
rolebinding.rbac.authorization.k8s.io/tester-role-binding unchanged
role.rbac.authorization.k8s.io/tester-role unchanged
@rifaterdemsahin ➜ /workspaces/PipelineAutomation/6_🔣_Symbols/3_Pipelines (main) $ 

---

tkn pipelinerun logs echo-date-pipeline-run -f
kubectl logs -l app=tekton-pipelines-controller -n tekton-pipelines
