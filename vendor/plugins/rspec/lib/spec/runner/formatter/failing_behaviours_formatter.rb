module Spec
  module Runner
    module Formatter
      class FailingBehavioursFormatter < BaseTextFormatter      
        def add_example_group(behaviour_name)
          if behaviour_name =~ /(.*) \(druby.*\)$/
            @behaviour_name = $1
          else
            @behaviour_name = behaviour_name
          end
        end
      
        def example_failed(example, counter, failure)
          unless @behaviour_name.nil?
            @output.puts @behaviour_name 
            @behaviour_name = nil
            @output.flush
          end
        end

        def dump_failure(counter, failure)
        end

        def dump_summary(duration, example_count, failure_count, pending_count)
        end
      end
    end
  end
end
