docker-h2o-benchmark
====================

  * A benchmark toolkit for compare h2o and nginx on docker container


Requirments
-----------

  * Docker host (recommended: boot2docker or CoreOS)
  * **NOTE: This benchmark is runnning on Docker host only**
     * So, If you'd like to running CoreOS on VMs, you need to `git clone` this repository on CoreOS
     * However, If you use boot2docker, you can run this benchmark is `$ make` command only ;-)

0. Run all phase
----------------

NOTE: `make` is required

```
$ make
```

1. Build
--------

```
$ make build

# or 

$ ./build.sh
```

2. Listen
---------

```
$ make listen

# or 

$ ./listen.sh
```

3. Benchmark
------------

```
$ make benchmark

# or 

$ ./benchmark.sh
```

4. Cleanup
----------

```
$ make clean

# or 

$ ./clean.sh
```

5. My Tested Environments
-------------------------

  * Host: Mac mini late 2012 CPU/2.6Ghz, MEM: 16GB 1600MHz DDR3
  * OS: OSX Mavericks 10.9.5
  * Geust: CoreOS alpha CPU/v2 core MEM: 4096MB 
  * VM: VirtualBox 4.3.16 r95972

6. Author
---------

Naoki OKAMURA (Nyarla) <nyarla@thotep.net>

7. UNLICENSE
------------

  * This package is under the Public domain.

NOTE:

  * `nginx/nginx.conf` is copied from https://gist.github.com/kazuho/c9c12021567e3ab83809

