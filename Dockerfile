FROM ubuntu as base

RUN apt install --yes tree

COPY --link test.txt /tmp/test.txt

FROM ubuntu as build

COPY --link --from=base /tmp/test.txt /app/