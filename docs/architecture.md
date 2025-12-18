
# Architecture — backend-terraform

Diagramme montrant la relation entre le dépôt, les modules, AWS (S3/DynamoDB) et la CI.

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

## Aperçu & export

- Dans VS Code installez une extension Mermaid (par ex. `Markdown Preview Enhanced`) puis ouvrez ce fichier et lancez la prévisualisation.
- Pour exporter une image depuis VS Code, utilisez l'option d'export de l'extension (PNG/SVG).

## Option CI (automatique)

Le workflow CI peut générer l'image automatiquement (via `npx @mermaid-js/mermaid-cli`) et l'injecter dans le résumé du job. Cela nécessite Node/npm sur le runner.

