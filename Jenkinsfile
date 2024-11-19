pipeline {
    agent any

    environment {
        DB_HOST = '127.0.0.1'
        DB_NAME = 'fruitdb'
    }

    stages {
        stage('Run Test Query') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'my-mariadb', usernameVariable: 'DB_USER', passwordVariable: 'DB_PASS')]) {
                        sh '''
                        echo 'Running SQL Connection...'
                        mysql -h $DB_HOST -P 3306 -u $DB_USER -p$DB_PASS fruitdb -e "SELECT * FROM fruits;" > query_results.txt
                        '''
                    }
                }
            }
        }
    }

      stages {
        stage('Run Queries') {
            steps {
                script {
                    // Make the script executable
                    sh 'chmod +x queries.sh'

                    // Run the shell script
                    sh './queries.sh'
                }
            }
        }
    }
}