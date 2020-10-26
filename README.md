# About

This repository houses the CryptDB demonstration I built for Brown's CS2390 class. Its intent is to make it easy for future presenters to build, use and work on top of the system. 

CryptDB is an encrypted database made famous in [`Popa et. al`](https://cs.brown.edu/courses/csci2390/2020/readings/cryptdb.pdf). You can find the original repository (abandoned since 2014) [here](https://github.com/CryptDB/cryptdb). Some helpful details about future and prior work are on the official website [here](https://css.csail.mit.edu/cryptdb/).

# Build Instructions

Everything is done via Docker. Make sure you have the latest Docker engine installed for [your platform](https://docs.docker.com/get-docker/).

The order of building is straightforward:

```
docker build ./cryptdb --tag cryptdb:latest # builds a container containing just CryptDB
docker build ./demo --tag presentation:latest # builds on top of previous container to run automatic exampel queries for demo
```

# Running

You may now run the presentation interactively just by doing:

```
docker run -it presentation:latest
```

**Warning**: The `mysql` client built in `cryptdb` traps SIGINT (CTRL+C) signals to disallow quick and easy exit. If you run `presentation:latest`, you have to go all the way through the demo to exit the container.

If you just want to run CryptDB without the demo, do

```
docker run -it cryptdb:latest
```

and consult the steps in `crytpdb/doc/README` to learn how to query (or just look at `demo/start.sh` for how to connect).

Note this version of CryptDB is modified to not use any password for user `root` (owing to some MySQL issues I was reluctant to spend time fixing) for easy access, instead of the default `letmein` password.