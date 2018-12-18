FROM java:8
WORKDIR /home/javahelloworld
COPY src /home/javahelloworld/src
RUN mkdir bin && javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

