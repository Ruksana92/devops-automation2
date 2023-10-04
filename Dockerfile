FROM openjdk:11
EXPOSE 8080
ADD target/devops-automation2.jar devops-automation2.jar
ENTRYPOINT ["java","-jar","/devops-automation2.jar"]
