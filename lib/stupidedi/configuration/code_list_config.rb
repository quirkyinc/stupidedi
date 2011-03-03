module Stupidedi
  module Configuration

    class CodeListConfig
      def initialize
        @table = Hash.new
      end

      def register(definition, id)
        @table[id] = definition
      end

      def lookup(id)
        @table[id]
      end

      # @private
      def pretty_print(q)
        q.text "CodeListConfig"
        q.group 2, "(", ")" do
          q.breakable ""
          @table.keys.each do |e|
            unless q.current_group.first?
              q.text ","
              q.breakable
            end
            q.pp e
          end
        end
      end
    end

  end
end