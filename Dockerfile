FROM alpine:latest as staging

RUN apk add --no-cache gcc musl-dev

# Original
# ADD https://gist.githubusercontent.com/nirenjan/4450419/raw/79f659285bfc9154c283a4178f35d2a41341c286/bishop.c /bishop.c
ADD https://gist.githubusercontent.com/AJPoulter-Soton/287e61f28d0387d8b9b83520e0a6041b/raw/8d286ac7f0fda22ff8f8d2d7832f54444e22c36a/bishop.c /bishop.c

RUN gcc -static bishop.c -o bishop

RUN /bishop $(sha256sum /bishop.c | awk '{print $1}')
# +--[ RandomArt ]--+
# |          . . .+=|
# |         . . o.=E|
# |          . + = .|
# |         . . o . |
# |        S        |
# |                 |
# |                 |
# |                 |
# |                 |
# +-----------------+

FROM scratch

COPY --from=staging /bishop /bishop

CMD /bishop