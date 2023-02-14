From ubantu
Run apt install java -y
Run mkdir/opt/sonarqube
WORKDIR /opt/sonarqube
ADD https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.0.65466.zip
RUN tar -xvzf sonarqube 9.9.0.65466
RUN mv sonarqube 9.9.0.65466/*/opt/sonarqube
expose 9000
CMD["/opt/sonarqube/bin/linux/catalina.sh","run"]
