node {
    def app

    stage('Clone the repository') 
	{

        checkout scm
    }

    stage('Build the docker image') 
	{

        app = docker.build("vinuv/casestudy")
    }

    stage('Push the docker image') 
	{
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') 
		{
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
	
	stage('Run the docker image') 
	{
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub')  
		{
			docker.image('vinuv/casestudy').withRun('-p 80:3000') 
			{
				/* run the image */
			}
		}
    }
}
