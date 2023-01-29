clear:
	clear

fmt:
	terraform fmt

lint: fmt clear
	terraform validate

plan: lint clear
	terraform plan

apply: lint clear
	terraform apply