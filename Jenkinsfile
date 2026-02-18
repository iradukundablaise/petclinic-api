pipeline{
	agent any

	stages {
		stage('Test Stage') {
			steps {
				echo "🧪 Running tests..."
				sh './mvnw clean test && \ echo "🎉 All tests passed!" || \ echo "❌ Tests failed!"'
			}
		}

		stage('Build Stage') {
			steps {
				echo 'This is a build stage.'
			}
		}

		stage('Deploy Stage') {
			steps {
				echo 'This is a deploy stage.'
			}
		}
	}
}