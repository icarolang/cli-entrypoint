name: CI
on:
  [ push ]
jobs:
  container-test-job:
    runs-on: ubuntu-latest
    container:
      image: maven:3.8.6-amazoncorretto-11
      env:
        ICARO_HOME: /home/dilbert/icaro
    steps:
      - name: tests
        run: mvn test