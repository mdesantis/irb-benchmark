require 'irb'
require 'benchmark'

module IRB
  # IRB::Context monkeypatch. Injects benchmark measurements into
  # IRB evaluations.
  class Context
    alias evaluate_non_benchmarked evaluate

    def evaluate(*args)
      if IrbBenchmark.enabled
        bm = Benchmark.measure { evaluate_non_benchmarked(*args) }
        IrbBenchmark.print(bm)
      else
        evaluate_non_benchmarked(*args)
      end
    end
  end
end
