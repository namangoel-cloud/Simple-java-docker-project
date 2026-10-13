## This is a docker file for the Java application
##
# Date:  13/10/2026
#SOURCE IMAGE

FROM alpine/java:22-jdk

# CREATING THE WORKING DIRECTORY IN THE CONTAINER

WORKDIR /app

# COPYing the each and every code in the /app of the containe from the host machine 

#COPY . .
COPY src/Main.java /app/Main.java

# Compiling the java program into the /app inside the containe 

RUN javac /app/Main.java

# Execute the java program inside the container

CMD ["java", "Main"]
