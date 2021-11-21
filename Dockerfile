FROM tomcat
RUN apt install maven
RUN apt install git
RUN git clone  https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello/
RUN mvn package
RUN cd target/
ADD hello-1.0.war /var/lib/tomcat9/webapps/