module IrbBenchmark

  VERSION = File.read(File.expand_path('../../VERSION', __FILE__)).chomp.freeze

  @enabled = true

  class << self

    attr_accessor :enabled

    if defined?(Wirb) and (!defined?(FancyIrb) || FancyIrb[:colorize, :output])
      def print(bm)
        $stdout.print Wirb.colorize_result bm.inspect
      end
    else
      def print(bm)
        $stdout.print bm.inspect
      end
    end

  end

end

require 'irb_benchmark/irb_ext'
