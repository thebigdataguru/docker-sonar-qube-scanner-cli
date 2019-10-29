FROM openjdk:14-jdk-alpine3.10

ENV SCANNER_VERSION=4.1.0.1829

RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SCANNER_VERSION}.zip && \
    unzip sonar-scanner-cli-${SCANNER_VERSION}.zip && \
    rm sonar-scanner-cli-${SCANNER_VERSION}.zip && \
    export SONAR_SCANNER_OPTS="-Xmx1024m" && \
    mv /sonar-scanner-${SCANNER_VERSION} /sonar-scanner

COPY ./sonar.sh /


CMD sh

