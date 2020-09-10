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
* ```hl hl_libuv.hl```
* ```hl hl.hl```

## cannon blast!
* osx or linux ```./script.sh```
* windows ```./script.bat```

Benchmarks
=====
* Machine: Windows 10 x64 i7-4771 3.50GHz 4 cores 16gb ram
* Node: v12.11.1
## big: 


|               | Requests/s | Latency | Throughput/Mb | Requests |
| :--           | :-:        | --:     | --:           | --:      |
| hl_libuv      | 5309       | 18.45   | 893           | 27k      |
| fastify_cache | 2283       | 43.17   | 338           | 11k      |
| fastify       | 1315.2     | 75.11   | 156           | 7k       |
| hl            | 1180       | 83.25   | 194           | 6k       |
| express       | 771.2      | 127.86  | 132           | 4k       |

## small:


|               | Requests/s | Latency | Throughput/Mb | Requests |
| :--           | :-:        | --:     | --:           | --:      |
| hl_libuv      | 29732.8    | 3.05    | 23.6          | 149k     |
| fastify       | 17589.6    | 5.2     | 14.6          | 88k      |
| express       | 12570.4    | 7.47    | 10.7          | 63k      |
| fastify_cache | 2538.6     | 38.77   | 428           | 13k      |
| hl            | 1285.2     | 76.51   | 1.01          | 6k       |

## hello:


|               | Requests/s | Latency | Throughput/Mb | Requests |
| :--           | :-:        | --:     | --:           | --:      |
| hl_libuv      | 30094.4    | 3.02    | 3.81          | 150k     |
| fastify_cache | 22120      | 4.06    | 3.5           | 111k     |
| fastify       | 20270.41   | 4.44    | 3.34          | 101k     |
| express       | 14520.8    | 6.33    | 2.71          | 73k      |
| hl            | 1300       | 75.98   |    0.165      | 7k       |