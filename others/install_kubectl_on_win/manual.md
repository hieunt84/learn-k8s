## setup kubectl on windows
https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/
- download and install
- config in path
- config info connet to cluster k8s

---
## Fix error
I had this problem, solved it by setting the KUBECONFIG environmental variable like:
$env:KUBECONFIG="C:\Users\your_user_name\.kube\config"
$env:KUBECONFIG="C:\Users\HIT\.kube\config"
On PowerShell
Another reason this could happen is if the actual KUBECONFIG environmental variable is set to an incorrect location or file. You can solve that by simply setting it to nothing/empty like this:
$env:KUBECONFIG="" on power shell and verify it like this:
$env:KUBECONFIG
