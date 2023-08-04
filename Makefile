.PHONY: sonar-scan scanner-setup

SONARQUBE_URL=127.0.0.1:9000
YOUR_REPO_TOSCAN=
YOUR_PROJECT_KEY=
PROJECT_AUTH_TOKEN=


scanner-setup:
	@docker run \ --rm \ -e SONAR_HOST_URL="http://${SONARQUBE_URL}" \
		 -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=${YOUR_PROJECT_KEY}" \
		 -e SONAR_TOKEN="${PROJECT_AUTH_TOKEN}" \ 
		 -v "${YOUR_REPO_TOSCAN}:/usr/src" \ 
		 sonarsource/sonar-scanner-cli


sonar-scan: ## run sonarqube
	../sonar-scanner-4.8.0.2856-macosx/bin/sonar-scanner \
		-Dsonar.projectKey=${YOUR_PROJECT_KEY} \
		-Dsonar.host.url=http://${SONARQUBE_URL} \
  		-Dsonar.token=${PROJECT_AUTH_TOKEN}
		


		