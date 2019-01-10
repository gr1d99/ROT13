module Rot13
  class Rot13
    class << self
      def decode(message)
        message.split('').map { |char| char.tr('A-Za-z', 'N-ZA-Mn-za-m') }.join
      end
    end
  end
end

# Usage
# Rot13::Rot13.decode(<some message>)
