#!/bin/bash
set -e
real_path=$( cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"; pwd)
cd $real_path;pwd;
mvn clean package install -Dmaven.test.skip=true
