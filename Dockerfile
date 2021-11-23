FROM tomcat
RUN apt-get update && apt-get install -y \
    maven \
    git
WORKDIR /home/boxfuse/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR boxfuse-sample-java-war-hello/
RUN mvn package
WORKDIR target/
RUN cp hello-1.0.war /usr/local/tomcat/webapps/
