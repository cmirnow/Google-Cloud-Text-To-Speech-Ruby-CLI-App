# frozen_string_literal: true

if Dir['./*.json'].none?
  puts 'Key to access API Google Cloud Text-to-Speech was not found in the application directory.'
  puts 'Exit'
  exit
end

puts ' '
puts '********* MASTERPRO.WS PROJECT ***********'
puts 'Google Cloud Text-to-Speech in Ruby CLI'
puts '--------------------------------'

require_relative '../lib/lang.rb'
require_relative '../lib/tts_conversion.rb'
require 'google/cloud/text_to_speech'
client = TtsConversion.client(Dir['./*.json'][0])

puts 'What language/locale do you want to use? choose between 0-9:

Deutsch (Deutschland)
English (United States)
Español (España)
Français (Canada)
Français (France)
Nederlands (Nederland)
Polski (Polska)
Suomi (Suomi)
Русский (Россия)
Українська (Україна)'

language = LANGUAGES[gets.strip.to_i]
puts 'Your choice: ' + language

puts 'WaveNet or Basic? (default WaveNet):'
voice_names_array = TtsConversion.voice_names(language)

puts 'Now select the locale number:'
voice_names_array.each_with_index do |t, index|
  print index.to_s + ' => ' + t + "\n"
end

voice_name = voice_names_array[gets.strip.to_i]
puts 'Your choice: ' + voice_name

puts 'TEXT or SSML? default TEXT:'
markup = TtsConversion.markup(gets.strip)
puts 'Your choice: ' + markup

puts 'MP3 or WAV? (default MP3):'
codec = TtsConversion.codec_select(gets.strip)
puts 'Your choice: ' + codec

doc = File.read('./text.txt')
puts 'Yout text: ' + doc

puts 'Text to sound conversion started...'
synthesis_input = { markup => doc }
voice = { language_code: language, name: voice_name }
audio = { audio_encoding: codec }

TtsConversion.index(client, synthesis_input, voice, audio, codec)
puts 'Done'
