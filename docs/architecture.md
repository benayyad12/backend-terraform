## Architecture — backend-terraform

Copiez ce fichier et ouvrez-le avec l'extension **Markdown Preview Enhanced** (ou n'importe quelle extension Mermaid compatible) dans VS Code pour l'aperçu et l'export.

```mermaid
flowchart LR
  subgraph Repo [Repository: backend-terraform]
    direction TB
    Root[main.tf\n(root module)]
    Root --> M_s3[modules/s3]
    Root --> M_dynamodb[modules/dynamodb]
    Examples[examples/basic\nREADME.md]
  end

  subgraph AWS [AWS]
    direction TB
    S3[S3 Bucket\n(tfstate)]
    DDB[DynamoDB Table\n(state lock)]
  end

  subgraph CI [GitHub Actions]
    direction TB
    Workflow[.github/workflows/terraform.yml\n(fmt / init / validate)]
    Runner[self-hosted runner\n(actions-runner)]
  end

  M_s3 -->|creates| S3
  M_dynamodb -->|creates| DDB
  Workflow -->|runs on| Runner
  Runner -->|executes| Workflow
  Workflow -->|command| Fmt[terraform fmt -check\n-recursive]
  Workflow -->|command| Validate[terraform init\n-backend=false && terraform validate]
  Repo -->|module source| Workflow
  Repo -->|usage example| Examples
```

---

Usage rapide dans VS Code:
- Installer l'extension `Markdown Preview Enhanced` (shd101wyy.markdown-preview-enhanced).
- Ouvrir `docs/architecture.md` et lancer `Markdown Preview Enhanced: Open Preview to the Side` depuis la palette de commandes.
- Pour exporter en PNG/SVG: `Markdown Preview Enhanced: Export (PNG)` ou `Export (SVG)`.
