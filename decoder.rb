MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0',
  '.-.-.-' => '.',
  '-.-.--' => '!',
  '--..--' => ',',
  '..--..' => '?',
  '..--.-' => '_',
  '.-.-..' => '>',
  '.----.' => "'",
  '-....-' => '-'
}.freeze
# method to decode morse character
def decode_morse_char(morse_char)
  MORSE_CODE[morse_char] || ''
end
# checking character decoding
morse_char = '....'
decoded_morse_char = decode_morse_char(morse_char)
puts decoded_morse_char
# method to decode morse word
def decode_morse_word(morse_word)
  decoded_word = ''
  letters = morse_word.split

  letters.each do |letter|
    decoded_letter = decode_morse_char(letter)
    decoded_word += decoded_letter
  end

  decoded_word
end
# checking word decoding
morse_word = '.... . .-.. .-.. ---'
decoded_morse_word = decode_morse_word(morse_word)
puts decoded_morse_word
# method to decode morse sentense
def decode_morse_sentence(morse_sentence)
    decoded_sentence = ''
    words = morse_sentence.split
    
    words.each do |word|
        decoded_word = decode_morse_word(word)
        decoded_sentence += "#{decoded_word} "
    end
    
    decoded_sentence.strip
end

# checking sentence decoding
morse_sentence = '.... . .-.. .-.. ---   .-- --- .-. .-.. -..'
decoded_sentence = decode_morse_sentence(morse_sentence)
puts decoded_sentence
