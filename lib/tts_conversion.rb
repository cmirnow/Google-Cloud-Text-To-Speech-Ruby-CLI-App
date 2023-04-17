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
    puts "The length of your content is #{file_read.size} characters."
    if file_read.size > 5000
      puts 'Shorten that text! Total bytes per request: 5000.'
      exit
    else
      puts 'OK'
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

  def self.select_codec(type)
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

  def self.markup(x)
    if x.empty?
      'text'
    else
      'ssml'
    end
  end

  def self.index(*args)
    response = args[0].synthesize_speech input: args[1], voice: args[2], audio_config: args[3]
    File.open "output.#{audio_file_type(args[4])}", 'wb' do |file|
      file.write response.audio_content
      audio_file_type(args[4]).to_s
    end
  end
end
