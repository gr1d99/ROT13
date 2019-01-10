require_relative '../rot13/rot13'

RSpec.describe Rot13::Rot13 do
  it 'decodes ciphered message' do
    ciphered_message1 = "Jul qvq gur puvpxra pebff gur ebnq?"
    deciphered_message1 = "Why did the chicken cross the road?"

    ciphered_message2 = "Gb trg gb gur bgure fvqr!"
    deciphered_message2 = "To get to the other side!"

    output1 = Rot13::Rot13.decode(ciphered_message1)
    output2 = Rot13::Rot13.decode(ciphered_message2)

    expect(output1).to match(deciphered_message1)
    expect(output2).to match(deciphered_message2)
  end
end
