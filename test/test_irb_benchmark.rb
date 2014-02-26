require 'minitest/autorun'
require 'irb_benchmark'

class TestIrbBenchmark < MiniTest::Test
  def setup
    @stdout = StringIO.new
  end

  def test_print
    bm = Benchmark.measure{ }
    $stdout = @stdout
    IrbBenchmark.print bm
    $stdout.rewind
    assert_equal $stdout.read, bm.to_s
  end
end