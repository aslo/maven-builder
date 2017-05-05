FROM maven:3.5.0-jdk-8

# add pre-cached deps
ADD m2/repository /usr/share/maven/ref

# stats from local tests (no docker)
# no cache
#real    1m18.585s
#user    1m36.520s
#sys     0m4.472s

# with cache
#real    0m33.595s
#user    1m22.796s
#sys     0m2.736s


# stats from docker tests
