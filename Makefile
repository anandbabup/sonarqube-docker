.PHONY: server scanner SONARQUBE_URL YOUR_REPO_TOSCAN YOUR_PROJECT_KEY PROJECT_AUTH_TOKEN

SONARQUBE_URL=host.docker.internal:9000
YOUR_REPO_TOSCAN=/Users/anandbabup/Documents/Project/vve-bff-conference/src
YOUR_PROJECT_KEY=vve-bff-conference
PROJECT_AUTH_TOKEN=sqp_cbda5cf9860cc316302b0877e02dc6962f921339

server:
	@docker compose up

scanner:
	@docker run --rm \
	-e SONAR_HOST_URL="http://${SONARQUBE_URL}" \
	-e SONAR_SCANNER_OPTS="-Dsonar.projectKey=${YOUR_PROJECT_KEY}" \
	-e SONAR_TOKEN=${PROJECT_AUTH_TOKEN} \
	-v "${YOUR_REPO_TOSCAN}:/usr/src" \
	sonarsource/sonar-scanner-cli
	

		