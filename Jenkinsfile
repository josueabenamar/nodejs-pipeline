pipeline
{
	agent any

	environment
	{
		TARGET = "nodejs.tar.gz"
	}

	stages
	{
		stage("Build")
		{
			steps
			{
				echo "building app"

				sh '''
					npm install
					'''
			}
		}

		stage("Test")
		{
			steps
			{
				echo "testing app"

				sh '''
					export APP_MODE=test
					node server.js
					'''
			}
		}

		stage("Create Artifact")
		{
			steps
			{
				echo "creating artifact"
				echo "$TARGET"

				sh '''
					tar --exclude=".git" --exclude=".gitignore" --exclude="Jenkinsfile" -czf $TARGET
					'''
			}
		}

		stage("Publish Artifact")
		{
			steps
			{
				echo "$TARGET"
				archive "$TARGET"
			}
		}
	}
}
