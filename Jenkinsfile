pipeline {
    agent any

    environment {
        DB_HOST = 'localhost:3306'
        DB_NAME = 'fruitdb'
    }

    stages {
        stage('Run Database Query') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'my-mariadb', usernameVariable: 'DB_USER', passwordVariable: 'DB_PASS')]) {
                        sh """
                        echo 'Running SQL Query...'
                        mysql -h $DB_HOST -u $DB_USER -p$DB_PASS $DB_NAME -e "SELECT * FROM fruits;"
                        """
                    }
                }
            }
        }
    }
}
