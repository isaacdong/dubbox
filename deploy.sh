#!/usr/bin/env bash
pwd
#mvn clean package -Dmaven.test.skip=true
mvn org.apache.maven.plugins:maven-deploy-plugin:2.8.2:deploy-file \
	-DrepositoryId=Snapshots \
	-Durl=http://10.6.222.54:8081/nexus/content/repositories/snapshots/ \
	-DpomFile=./dubbo-maven/pom.xml \
	-Dfile=./dubbo/target/dubbo-2.8.4.jar \
	-Dsources=./dubbo/target/dubbo-2.8.4-sources.jar
