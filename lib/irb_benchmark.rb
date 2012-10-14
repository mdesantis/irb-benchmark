module IrbBenchmark

  VERSION = File.read(File.expand_path('../../VERSION', __FILE__)).chomp.freeze

  @enabled = true

  class << self

    attr_accessor :enabled

    def print(bm)
      if defined?(Wirb) and (!defined?(FancyIrb) || FancyIrb[:colorize, :output])
        $stdout.print Wirb.colorize_result bm.inspect
      else
        $stdout.print bm.inspect
      end
    end

  end

end

require 'irb_benchmark/irb_ext'
