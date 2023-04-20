# frozen_string_literal: true

require 'tty-prompt'

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

  def self.prompt
    TTY::Prompt.new
  end

  def self.language_selection
    prompt.select('What language/locale do you want to use?', LANGUAGES_LOCALES, per_page: 30)
  end

  def self.language_code_find(language)
    CODES[LANGUAGES_LOCALES.find_index(language)]
  end

  def self.select_voice_type(language)
    prompt.select('Choose voice type?', LOCALES[0][language][0].keys)
  end

  def self.select_voice_name(voice_type)
    prompt.select('Choose voice name?', voice_type, per_page: 15)
  end

  def self.select_codec
    audio_file_format(prompt.select('mp3, wav, ogg?', %w[mp3 wav ogg]))
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
    prompt.select('TEXT or SSML?', %w[text ssml])
  end

  def self.speaking_rate
    prompt.ask(
      'Optional speaking rate/speed, in the range [0.25, 4.0]',
      default: '1.0',
      convert: :float
    ) do |q|
      q.in('0.25-4.0')
    end
  end

  def self.pitch
    prompt.ask(
      'Optional speaking pitch, in the range [-20.0, 20.0].',
      default: '0',
      convert: :float
    ) do |q|
      q.in('-20.0-20.0')
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
