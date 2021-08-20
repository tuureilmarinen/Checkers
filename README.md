# Checkers
Tiralabra 2021

[![Build Status](https://www.travis-ci.com/tuureilmarinen/Checkers.svg?branch=master)](https://www.travis-ci.com/tuureilmarinen/Checkers)

[CheckersLibrary](https://github.com/tuureilmarinen/CheckersLibrary)

[CLI for testing the algorithms.](https://github.com/tuureilmarinen/CheckersAppCLI)

```
./CheckersAppCLI 
USAGE: CheckersAppCLI <black> <white> [--fen <fen>] [--black-min-max-depth <black-min-max-depth>] [--black-min-max-cache-depth <black-min-max-cache-depth>] [--white-min-max-depth <white-min-max-depth>] [--white-min-max-cache-depth <white-min-max-cache-depth>]
ARGUMENTS:
  <black>                 Black player. (cli, random, min-max-alpha-beta)
  <white>                 White player. (cli, random, min-max-alpha-beta)

OPTIONS:
  --fen <fen>             Initial starting position. 
  --black-min-max-depth <black-min-max-depth>
                          Black Min-Max search depth. 
  --black-min-max-cache-depth <black-min-max-cache-depth>
                          Black Min-Max accepted cache depth. 
  --white-min-max-depth <white-min-max-depth>
                          White Min-Max search depth. 
  --white-min-max-cache-depth <white-min-max-cache-depth>
                          Black Min-Max accepted cache depth. 
  -h, --help              Show help information.


./CheckersAppCLI random random --fen B:W18,19,21,23,24,26,29,30,31,32:B1,2,3,4,6,7,9,10,11,12 
B:W18,19,21,23,24,26,29,30,31,32:B1,2,3,4,6,7,9,10,11,12
```

For detailed documentation see: (./docs/sources/)
For deteailed documentation about tests see: (./docs/tests/)

Ks. ./hy-docs/maarittely.md
