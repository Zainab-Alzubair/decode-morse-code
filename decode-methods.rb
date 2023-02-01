def morse_decode_word(word)
    actual_morse_codes = {
      '.-' => 'a',
      '-...' => 'b',
      '-.-.' => 'c',
      '-..' => 'd',
      '.' => 'e',
      '..-.' => 'f',
      '--.' => 'g',
      '....' => 'h',
      '..' => 'i',
      '.---' => 'j',
      '-.-' => 'k',
      '.-..' => 'l',
      '--' => 'm',
      '-.' => 'n',
      '---' => 'o',
      '.--.' => 'p',
      '--.-' => 'q',
      '.-.' => 'r',
      '...' => 's',
      '-' => 't',
      '..-' => 'u',
      '...-' => 'v',
      '.--' => 'w',
      '-..-' => 'x',
      '-.--' => 'y',
      '--..' => 'z',
      '.----' => '1',
      '..---' => '2',
      '...--' => '3',
      '....-' => '4',
      '.....' => '5',
      '-....' => '6',
      '--...' => '7',
      '---..' => '8',
      '----.' => '9',
      '-----' => '0'
    }
    result = ''
    word.split.each do |code|
      result += actual_morse_codes[code]
    end
    result
  end
  
  def morse_to_sentence(sentence)
    result = ''
    sentence.split('  ').each do |morse_code|
      result += morse_decode_word(morse_code)
      result += ' '
    end
    result.upcase
  end
  
  print morse_to_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')