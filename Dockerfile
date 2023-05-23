FROM ubuntu as base

COPY --link test.txt /tmp/test.txt

FROM ubuntu as build

COPY --link --from=base /tmp/test.txt /app/