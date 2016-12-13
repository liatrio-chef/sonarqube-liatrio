name             'sonarqube-liatrio'
maintainer       'Liatrio'
maintainer_email 'drew@liatrio.com'
license          'All rights reserved'
description      'Wrapper cookbook that Installs/Configures sonarqube-liatrio'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.3'

depends 'java' # '~> 1.39.0'
depends 'sonarqube' # '~> 0.3.3'
