#
# Cookbook: kafka-cluster-cookbook
# License: Apache 2.0
#
# Copyright (C) 2015 Bloomberg Finance L.P.
#
default['kafka-cluster']['service_name'] = 'kafka'
default['kafka-cluster']['service_user'] = 'kafka'
default['kafka-cluster']['service_group'] = 'kafka'

# @see https://gist.github.com/jkreps/c7ddb4041ef62a900e6c
default['kafka-cluster']['config']['path'] = '/etc/kafka/kafka.properties'
default['kafka-cluster']['config']['properties']['broker.id'] = 1
default['kafka-cluster']['config']['properties']['port'] = 9_092
default['kafka-cluster']['config']['properties']['log.dirs'] = '/tmp/kafka'
default['kafka-cluster']['config']['properties']['log.segment.bytes'] = 536_870_912
default['kafka-cluster']['config']['properties']['log.retention.check.interval.ms'] = 300_000
default['kafka-cluster']['config']['properties']['log.retention.hours'] = 168
default['kafka-cluster']['config']['properties']['num.io.threads'] = 8
default['kafka-cluster']['config']['properties']['num.network.threads'] = 4
default['kafka-cluster']['config']['properties']['num.partitions'] = 8
default['kafka-cluster']['config']['properties']['replica.lag.max.messages'] = 10_000_000
default['kafka-cluster']['config']['properties']['socket.receive.buffer.bytes'] = 1_048_576
default['kafka-cluster']['config']['properties']['socket.request.max.bytes'] = 104_857_600
default['kafka-cluster']['config']['properties']['socket.send.buffer.bytes'] = 1_048_576
default['kafka-cluster']['config']['properties']['zookeeper.connection.timeout.ms'] = 1_000_000
default['kafka-cluster']['config']['log4j']['customized'] = false
default['kafka-cluster']['config']['log4j']['fileAppender'] = 'org.apache.log4j.RollingFileAppender'
default['kafka-cluster']['config']['log4j']['maxFileSize'] = '50MB'
default['kafka-cluster']['config']['log4j']['maxNumFiles'] = '20'
default['kafka-cluster']['config']['log4j']['level']['root'] = 'INFO'
default['kafka-cluster']['config']['log4j']['level']['kafka'] = 'INFO'
default['kafka-cluster']['config']['log4j']['level']['stdout.threshold'] = 'INFO'
default['kafka-cluster']['config']['log4j']['level']['kafka.network.RequestChannel'] = 'WARN'
default['kafka-cluster']['config']['log4j']['level']['kafka.network.Processor'] = 'WARN'
default['kafka-cluster']['config']['log4j']['level']['kafka.request.logger'] = 'WARN'
default['kafka-cluster']['config']['log4j']['level']['kafka.controller'] = 'TRACE'
default['kafka-cluster']['config']['log4j']['level']['kafka.log.LogCleaner'] = 'INFO'
default['kafka-cluster']['config']['log4j']['level']['state.change.logger'] = 'TRACE'
default['kafka-cluster']['config']['log4j']['level']['kafka.authorizer.logger'] = 'WARN'
default['kafka-cluster']['config']['log4j']['level']['zookeeper'] = 'INFO'

default['kafka-cluster']['service']['mirror'] = 'https://archive.apache.org/dist/kafka/'
default['kafka-cluster']['service']['version'] = '0.8.22'
default['kafka-cluster']['service']['scala_version'] = '2.10'
default['kafka-cluster']['service']['environment']['KAFKA_HEAP_OPTS'] = '-Xmx1G -Xms1G'
default['kafka-cluster']['service']['binary_checksum'] = '3ba1967ee88c7f364964c8a8fdf6f5075dcf7572f8c9eb74f0285b308363ecab'
default['kafka-cluster']['service']['binary_url'] = "%{mirror}/%{version}/kafka_%{scala_version}-%{version}.tgz" # rubocop:disable Style/StringLiterals

default['kafka-cluster']['ulimit']['filehandle_limit'] = 32_768
