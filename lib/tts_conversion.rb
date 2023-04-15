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
      puts 'Shorten that text! 5000 characters per request only.'
      exit
    else
      puts 'OK'
    end
  end

  def self.show_all_languages
    LANGUAGES_LOCALES.map.with_index { |q, index| puts "#{index} => #{q}" }
  end

  def self.select_voice_type(x)
    t = LOCALES[0][x][0]
    tmp = []
    t.map.with_index do |q, index|
      tmp.push(q)
      puts "#{index} => #{q[0]}"
    end
    tmp[gets.strip.to_i]
  end

  def self.select_voice_name(x)
    x.each_with_index do |t, index|
      print "#{index} => #{t}\n"
    end
  end

  def self.select_codec(type)
      if type.empty? || (%w[mp3 wav ogg].include? type)
      audio_file_format(type)
    else
      puts "The codec name was entered incorrectly. I'm sorry, but youll have to start over."
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
