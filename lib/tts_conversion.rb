# frozen_string_literal: true

class TtsConversion
  def self.client(x)
    client = Google::Cloud::TextToSpeech.text_to_speech do |config|
      config.credentials = x
    end
  end

  def self.voice_names(x)
    if gets.strip.empty?
      puts 'Your choice: WaveNet'
      OBJ[0][x][0]['WaveNet']
    else
      puts 'Your choice: Basic'
      OBJ[0][x][0]['Basic']
    end
  end

  def self.codec_select(x)
    if x.empty?
      'MP3'
    else
      'LINEAR16'
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
    File.open 'output.' + audio_format(args[4]).to_s, 'wb' do |file|
      file.write response.audio_content
      audio_format(args[4]).to_s
    end
  end

  def self.audio_format(codec)
    case codec
    when 'LINEAR16'
      'wav'
    else
      'mp3'
      end
  end
end
