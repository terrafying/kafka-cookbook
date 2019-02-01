name 'kafka-cluster'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache-2.0'
issues_url 'https://github.com/bloomberg/kafka-cookbook/issues'
source_url 'https://github.com/bloomberg/kafka-cookbook'
description 'Application cookbook which installs and configures Apache Kafka.'
long_description 'Application cookbook which installs and configures Apache Kafka.'
version '1.4.2'
chef_version '>= 12.9'

supports 'ubuntu', '>= 14.04'
supports 'centos', '>= 7.0'
supports 'redhat', '>= 7.0'
supports 'amazon2', '> 0.0'

depends 'java'
depends 'libartifact', '~> 1.3'
depends 'poise', '~> 2.2'
depends 'poise-service', '~> 1.0'
depends 'selinux'
depends 'sysctl'
depends 'ulimit'
