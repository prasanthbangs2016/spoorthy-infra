dev:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/dev-backend.tfvars
	terraform apply -auto-approve -var-file env/dev.tfvars

dev-destroy:
	@rm -rf .terraform
	terrafile
	terraform init -backend-config env/dev-backend.tfvars
	terraform destroy -auto-approve -var-file env/dev.tfvars