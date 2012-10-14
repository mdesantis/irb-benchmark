require 'irb'
require 'benchmark'

module IRB
  class Context

    alias evaluate_non_benchmarked evaluate

    def evaluate(*args)
      if IrbBenchmark.enabled
        IrbBenchmark.print Benchmark.measure{ evaluate_non_benchmarked(*args) }
      else
        evaluate_non_benchmarked(*args)
      end
    end

  end
end
