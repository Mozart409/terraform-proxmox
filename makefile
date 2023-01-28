clear:
	clear

fmt:
	terraform fmt

lint: fmt clear
	terraform validate

plan: lint clear
	terraform plan -out=plan.out

apply: lint clear
	terraform apply