FROM ubuntu as base

RUN apt-get update && apt-get install -y tree

COPY --link test.txt /tmp/test.txt

FROM ubuntu as build

COPY --link --from=base /tmp/test.txt /app/