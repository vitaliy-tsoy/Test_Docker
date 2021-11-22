FROM tomcat
RUN apt update
RUN apt install maven -y
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR ./boxfuse-sample-java-war-hello/
RUN mvn package
WORKDIR ./boxfuse-sample-java-war-hello/target/
COPY ./hello-1.0.war /var/lib/tomcat9/webapps/
