docker-h2o-benchmark
====================

  * A benchmark toolkit for compare h2o and nginx on docker container


Requirments
-----------

  * Docker host (recommended: boot2docker or CoreOS)
  * `make` (requirement on boot2docker)

### **Important NOTES**

**This benchmark is running on Docker host only**.

So, this problem has been caused by listening address for h2o and nginx,
And, h2o and nginx are listening on `docker0` gateway IP address.

I understand this issue is so complicated,
However, I'm not found more better solution yet

Run all phase
-------------

On Boot2Docker in OSX:

```
$ git clone git://github.com/nyarla/docker-h2o-benchmark
$ cd docker-h2o-benchmark
$ boot2docker up
$ export DOCKER_HOST=<your boot2docker IP>
$ make # that's all ;-)
```

On CoreOS:

```
$ git clone git://github.com/nyarla/docker-h2o-benchmark
$ cd docker-h2o-benchmark
$ ./build.sh
$ ./listen.sh
$ ./benchmark.sh
$ ./clean.sh
```

My Tested Environments
----------------------

  * Host: Mac mini late 2012 CPU/2.6Ghz, MEM: 16GB 1600MHz DDR3
  * OS: OSX Mavericks 10.9.5
  * VM: VirtualBox 4.3.16 r95972
  * Geust1: CoreOS alpha CPU/v2 core, MEM: 4096MB
  * Geust2: boot2docker CPU/v8 core, MEM: 2048MB 

Author
------

Naoki OKAMURA (Nyarla) <nyarla@thotep.net>
 
UNLICENSE
---------

  * This package is under the Public domain.

NOTE:

  * `nginx/nginx.conf` is copied from https://gist.github.com/kazuho/c9c12021567e3ab83809

