FROM java

ENV SBT_VERSION=0.13.16

RUN wget -q -O /tmp/sbt.deb https://dl.bintray.com/sbt/debian/sbt-${SBT_VERSION}.deb && dpkg -i /tmp/sbt.deb && rm -f /tmp/sbt.deb

WORKDIR /app

ADD . /app

RUN sbt compile

CMD ["sbt", "run"]
