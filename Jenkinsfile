Jenkinsfile (Declarative Pipeline)
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bazel build //source/common/network:utility_lib
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                bazel build //test/mocks/access_log:access_log_mocks
            }
        }
    }
}
