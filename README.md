# IrbBenchmark

## Description

It wraps irb evaluations in a `Benchmark.measure{ ... }` block and displays 
the results after the command execution. Example:

```
>> Array.new(1_000_000) { rand }
  0.090000   0.000000   0.090000 (  0.098862)
[0.09192661098573907, ...
```

## Installation

```
$ gem install irb-benchmark
```

## Usage

### Single shot usage

```
$ irb -rirb-benchmark
```

### In `.irbrc`

* classic require: `require 'irb-benchmark'`
* irbtools option: `Irbtools.add_library :irb_benchmark, late: true` (require can be used with irbtools too)

### Enabling / disabling

```ruby
IrbBenchmark.enabled = true / false
```

## Wirb / irbtools integration

It auto-detects [Wirb](https://github.com/janlelis/wirb) presence and 
[FancyIrb](https://github.com/janlelis/fancy_irb) configuration for colorized 
output (both are used by the well-known 
[irbtools](https://github.com/janlelis/irbtools) gem).

## Known issues

The usage with FancyIrb alters the benchmark measures adding a small overhead;
I'm working on it.

## Bugs, feature requests, pull requests

Fell free to open an [issue](https://github.com/ProGNOMmers/irb-benchmark/issues)
for problems or feature requests, or fork it and make a pull request.

## Thanks to
[janlelis](https://github.com/janlelis) and its [fancy_irb](https://github.com/janlelis/fancy_irb)
which saved me from spending time to discover how to monkey-patch Irb :-)

## Copyright

Copyright (c) 2012-2014 Maurizio De Santis. See [LICENSE.txt](LICENSE.txt) for
further details.
