pipeline
{
	agent
	{
		dockerfile true
	}

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
					env
					npm --version
					#npm install
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
					#node server.js
					'''
			}
		}

		stage("Create Artifact")
		{
			steps
			{
				echo "creating artifact"

				sh '''
					tar --exclude=".git" --exclude=".gitignore" --exclude="Jenkinsfile" --exclude="Dockerfile" --exclude="$TARGET" -czf $TARGET .
					'''
			}
		}

		stage("Publish Artifact")
		{
			steps
			{
				archive "$TARGET"
			}
		}
	}
}
