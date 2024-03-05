node ('New-Appserver') 
{
	def app	
	stage('Cloning git')
	{
		checkout scm
	}

	stage('SCA-SAS-SNYK-TEST')
	{
		
	}

	
	stage ('Build-and-tag')
	{
		app = docker.build("johncollegeacc769/nodejs_2024")
	}


	stage ('Post-to-Dockerhub')
	{
		docker.withRegistry('https://registry.hub.docker.com', 'dockerhub_credentials')
		{
			app.push("latest")
		}
	}


	stage ('pull-image-server')
	{
		sh "docker-compose down"
		sh "docker-compose up -d"
	}
	
}