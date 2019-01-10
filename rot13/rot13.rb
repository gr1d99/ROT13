module Rot13
  LETTERS = 'abcdefghijklmnopqrstuvwxyz'.freeze
  MAX_LETTERS_LENGTH = 26

  class Rot13
    class << self
      def decode(message)
        apply(message)
      end

      private

      def apply(message)
        result = []
        in_upcase = false
        message.each_char do |char|
          char_index = LETTERS.index(char.downcase)
          in_upcase = upcase?(char) if char_index
          new_char = add_13.call(char_index, in_upcase) if char_index
          result.push(new_char || char)
        end
        result.join
      end

      def add_13
        lambda do |index, is_upper|
          new_index = index + 13
          new_index -= MAX_LETTERS_LENGTH if new_index > 25
          new_char = LETTERS[new_index]
          new_char.upcase! if is_upper
          new_char
        end
      end

      def upcase?(char)
        char.upcase == char
      end
    end
  end
end

# Usage
# Rot13::Rot13.decode(<some message>)
