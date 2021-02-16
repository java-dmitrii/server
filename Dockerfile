FROM openjdk:11 as build
COPY src/Main.java .
RUN javac Main.java

FROM openjdk:11
COPY --from=build Main.class .
CMD ["java","Main"]