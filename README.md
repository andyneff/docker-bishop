# Bishop Randomart docker

- Inspired by https://askubuntu.com/questions/602068/how-to-generate-randomart-of-anyfile
- Using https://gist.github.com/nirenjan/4450419

Usage:

```
docker run -i --rm andyneff/bishop /bishop 0123456789abcdef
# or
echo 0123456789abcdef | docker run --rm andyneff/bishop /bishop
+--[ RandomArt ]--+
|    .o=.o.       |
|     ..=.        |
|       ..        |
|      .  .       |
|     +  S        |
|    . o          |
|       .         |
|        .        |
|       .E        |
+-----------------+
```
