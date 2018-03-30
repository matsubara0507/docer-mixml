# docer-mixml

## USAGE

```sh
$ docker build -t mixml .
$ docker run --rm mixml ./mixml -h
Usage:  mixml [-c|t|v|x|h] [files...]

Options:
  -c  type-check only
  -t  type-check only with tracing
  -v  evaluate (default)
  -x  evaluate in checked mode
  -h  print usage
$ docker run --rm mixml ./mixml fib.mixml
[Processing fib.mixml...]
fib 10 = 55
```
