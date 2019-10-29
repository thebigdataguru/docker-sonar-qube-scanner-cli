#!/bin/sh
cp -f /src/sonar-scanner.properties /sonar-scanner/conf/
/sonar-scanner/bin/sonar-scanner -Dsonar.projectBaseDir=/src
