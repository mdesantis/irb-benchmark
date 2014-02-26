# [IrbBenchmark](https://github.com/mdesantis/irb-benchmark)

[IrbBenchmark](https://github.com/mdesantis/irb-benchmark) wraps `irb` commands evaluations in a `Benchmark.measure{ ... }` block and displays the results after the command execution. Example:

```
irb(main):001:0> sleep 1
  0.000000   0.000000   0.000000 (  1.000323)
=> 1
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

#### Classic `require`

```ruby
require 'irb-benchmark'
```

#### [irbtools](https://github.com/janlelis/irbtools) option

```ruby
Irbtools.add_library :irb_benchmark, late: true
```

Note that the former option can be used with irbtools too, so it is the preferred.

### Enabling / disabling

```ruby
IrbBenchmark.enabled = true / false
```

## [Wirb](https://github.com/janlelis/wirb) / [irbtools](https://github.com/janlelis/irbtools) integration

It auto-detects [Wirb](https://github.com/janlelis/wirb) presence and [FancyIrb](https://github.com/janlelis/fancy_irb) configuration for colorized output (both are used by the well-known [irbtools](https://github.com/janlelis/irbtools) gem).

## Known issues

The usage with FancyIrb alters the benchmark measures adding a small overhead.

## Bugs, feature requests, pull requests

Fell free to open an [issue](https://github.com/ProGNOMmers/irb-benchmark/issues) for problems or feature requests, or fork it and make a pull request.

## Thanks to
[janlelis](https://github.com/janlelis) and its [fancy_irb](https://github.com/janlelis/fancy_irb) which saved me from spending time to discover how to monkey-patch `Irb` :-)

## License

Copyright (c) 2012-2014 Maurizio De Santis. [MIT license](LICENSE.txt)
