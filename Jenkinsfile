pipeline {
  agent any

  stages {
    stage('Setup') {
      sh 'echo "Versions: "'
      sh 'chef --version'
      sh 'rubocop --version'
      sh 'foodcritic --version'
      sh 'echo "Updating Berkshelf: "'
      sh 'if [ ! -f Berksfile.lock ]; then berks install; else berks update; fi;'
    }

    stage('Acceptance Testing') {
      steps {
        parallel (

          rubocop: {
            sh 'echo "Starting chefstyle (rubocop): "'
            sh 'rubocop --color'
          },

          foodcritic: {
            sh 'echo "Starting foodcritic: "'
            sh 'foodcritic .'
          },

          ChefSpec: {
            sh 'echo Starting ChefSpec: '
            sh 'chef exec rspec'
          }
        )
      }
    }

    stage('Test Kitchen') {
      sh 'if [ ! -f Berksfile.lock ]; then berks install; else berks update; fi; kitchen test -d always --color'
    }
  }
