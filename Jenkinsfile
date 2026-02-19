pipeline{
	agent { label 'lenovo-node' }

	stages {
		stage('Test Stage') {
			steps {
				echo "🧪 Running tests..."
				sh './mvnw clean test && echo "🎉 All tests passed!" || echo "❌ Tests failed!"'
			}
		}

		stage('Build Stage') {
			steps {
				// Build a docker image and push to Docker Hub
				echo '🚀 Building Docker image...'
				sh 'docker build -t antonioblaise/petclinic:$BUILD_NUMBER .'
				echo '📤 Pushing Docker image to Docker Hub...'
				sh 'docker push antonioblaise/petclinic:$BUILD_NUMBER'
			}
		}

		stage('Deploy Stage') {
			steps {
				echo 'This is a deploy stage.'
			}
		}
	}
}