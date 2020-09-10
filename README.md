Weblink Benchmark
=====
*benchmarking nodejs libs (expressjs and fastify) to Weblink (libuv and non libuv)*

Usage
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

Benchmarks
=====
* Machine: Windows 10 x64 i7-4771 3.50GHz 4 cores 16gb ram
* Node: v12.11.1
## big: 


|          | Requests/s | Latency | Throughput/Mb |
| :--      | :-:        | --:     | --:           |
| hl_libuv | 5314.0     | 18.42   | 889           |
| fastify  | 1315.2     | 75.11   | 156           |

## small:


|          | Requests/s | Latency | Throughput/Mb |
| :--      | :-:        | --:     | --:           |
| hl_libuv | 29732.8    | 3.05    | 23.6          |
| fastify  | 17589.6    | 5.2     | 14.6          |

## hello:


|          | Requests/s | Latency | Throughput/Mb |
| :--      | :-:        | --:     | --:           |
| hl_libuv | 30094.4    | 3.02    | 3.81          |
| fastify  | 20270.41   | 4.44    | 3.34          |