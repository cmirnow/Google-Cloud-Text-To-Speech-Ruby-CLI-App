# frozen_string_literal: true

class TtsConversion
  def self.client(x)
    client = Google::Cloud::TextToSpeech.text_to_speech do |config|
      config.credentials = x
    end
  end

  def self.file_read
    File.read('./text_or_ssml.txt')
  end

  def self.total_characters
    x = file_read.size
    puts "The length of your content is #{x} characters."
    if x > 5000
      puts 'Shorten that text! Total bytes per request: 5000.'
      exit
    elsif x < 3
      puts 'Place your text in the file "text_or_ssml.txt" and try again.'
      exit
    else
      puts "OK! Let's begin the process of converting text to speech."
    end
  end

  def self.show_all_languages
    LANGUAGES_LOCALES.map.with_index { |q, index| puts "#{index} => #{q}" }
  end

  def self.language_selection
    input = gets.strip
    if (0..29).map(&:to_s).include? input
      CODES[input.to_i]
    else
      error_message
      exit
    end
  end

  def self.select_voice_type(lang)
    locales = LOCALES[0][lang][0]
    hash_locales = Hash[locales.each_with_index.map { |value, index| [index, value] }]
    puts hash_locales.map.with_index { |lang, index| "#{index} => #{lang[1][0]}" }
    foolproof(hash_locales)
  end

  def self.foolproof(hash_locales)
    input = gets.strip
    if hash_locales.keys.map(&:to_s).include? input
      hash_locales[input.to_i]
    else
      error_message
      exit
    end
  end

  def self.select_voice_name(voice_types_array)
    voice_types_array.each_with_index do |t, index|
      print "#{index} => #{t}\n"
    end
    foolproof1(voice_types_array)
  end

  def self.foolproof1(voice_types_array)
    input = gets.strip
    keys_voice_types_hash = Hash[voice_types_array.each_with_index.map do |value, index|
                                   [index, value]
                                 end
 ].keys
    if keys_voice_types_hash.map(&:to_s).include? input
      voice_types_array[input.to_i]
    else
      error_message
      exit
    end
  end

  def self.error_message
    puts "The entry was incorrect. I'm sorry, but youll have to start over."
  end

  def self.select_codec
    type = gets.strip
    if type.empty? || (%w[mp3 wav ogg].include? type)
      audio_file_format(type)
    else
      error_message
      exit
    end
  end

  def self.audio_file_format(type)
    case type
    when 'wav'
      'LINEAR16'
    when 'ogg'
      'OGG_OPUS'
    else
      'MP3'
    end
  end

  def self.audio_file_type(codec)
    case codec
    when 'LINEAR16'
      'wav'
    when 'OGG_OPUS'
      'ogg'
    else
      'mp3'
    end
  end

  def self.markup
    if gets.strip.empty?
      'text'
    else
      'ssml'
    end
  end

  def self.speaking_rate
    x = gets.strip
    if x.empty?
      1.0
    elsif ((0.25..4.0).include? x.to_f) && (x.to_f.is_a? Float)
      x.to_f
    else
      error_message
      exit
    end
  end

  def self.pitch
    x = gets.strip
    if x.empty?
      0.0
    elsif ((-20.0..20.0).include? x.to_f) && (x.to_f.is_a? Float)
      x.to_f
    else
      error_message
      exit
    end
  end

  def self.main(*args)
    response = args[0].synthesize_speech input: args[1], voice: args[2], audio_config: args[3]
    File.open "output.#{audio_file_type(args[4])}", 'wb' do |file|
      file.write response.audio_content
      audio_file_type(args[4]).to_s
    end
  end
end
