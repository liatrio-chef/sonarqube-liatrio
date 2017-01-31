name             'sonarqube-liatrio'
maintainer       'Liatrio'
maintainer_email 'justin@liatrio.com'
license          'All rights reserved'
description      'Wrapper cookbook that Installs/Configures sonarqube-liatrio'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.5'

issues_url 'https://github.com/liatrio-chef/sonarqube-liatrio/issues' if respond_to?(:issues_url)
source_url 'https://github.com/liatrio-chef/sonarqube-liatrio' if respond_to?(:source_url)

depends 'java' # '~> 1.39.0'
depends 'sonarqube' # '~> 0.3.3'
