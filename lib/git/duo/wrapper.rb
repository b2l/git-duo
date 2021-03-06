module Git
  module Duo
    class Wrapper
      PIPE_STDOUT_TO_STDERR = '2>&1'

      def initialize(directory)
        @directory = directory
      end

      def config(args)
        `git --git-dir=#{@directory} config #{args} #{PIPE_STDOUT_TO_STDERR}`.split("\n")
      end
    end
  end
end
