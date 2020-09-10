Weblink Benchmark
=====
*benchmarking nodejs libs (expressjs and fastify) to Weblink (libuv and non libuv)*

Testing
====
```git clone --recursive https://github.com/PXshadow/weblinkBenchmark```

## build
*requires node, npm, haxe, hashlink*
```sh
haxe build.hxml
npm install frameworks-benchmark
```

## launch server
* ```node frameworks-benchmark/fastify.js```
* ```node node frameworks-benchmark/express.js```
* ```hl app.hl```

## cannon blast!
* osx or linux ```./script.sh```
* windows ```./script.bat```
