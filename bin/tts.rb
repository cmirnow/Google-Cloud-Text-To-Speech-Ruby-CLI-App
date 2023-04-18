# frozen_string_literal: true

if Dir['./*.json'].none?
  puts 'Key to access API Google Cloud Text-to-Speech was not found.'
  puts 'Exit'
  exit
end

puts ' '
puts '********* MASTERPRO.WS PROJECT ***********'
puts 'Google Cloud Text-to-Speech Ruby CLI APP'
puts '------------------------------------------'

require_relative '../lib/tts_conversion'

TtsConversion.total_characters

require_relative '../lib/lang'
require 'google/cloud/text_to_speech'
client = TtsConversion.client(Dir['./*.json'][0])

puts 'What language/locale do you want to use? choose between 0 - 29:'
TtsConversion.show_all_languages

language = TtsConversion.language_selection
puts '--------------------------------'
puts "Your choice: #{language}"
puts '--------------------------------'

puts 'Select Voice type:'
tmp = TtsConversion.select_voice_type(language)
voice_types_array = tmp[1]
puts '--------------------------------'
puts "Your choice: #{tmp[0]}"
puts '--------------------------------'

puts 'Select Voice name:'
voice_name = TtsConversion.select_voice_name(voice_types_array)
puts '--------------------------------'
puts "Your choice: #{voice_name}"
puts '--------------------------------'

puts 'TEXT or SSML? default TEXT:'
markup = TtsConversion.markup(gets.strip)
puts "Your choice: #{markup}"

puts 'mp3, wav, ogg? (default mp3):'
codec = TtsConversion.select_codec(gets.strip)
puts "Your choice: #{codec}"

puts 'Optional speaking rate/speed, in the range [0.25, 4.0]. Default 1.0:'
speaking_rate = TtsConversion.speaking_rate(gets.strip)
puts "Your choice: #{speaking_rate}"

puts 'Optional speaking pitch, in the range [-20.0, 20.0]. Default 0:'
pitch = TtsConversion.pitch(gets.strip)
puts "Your choice: #{pitch}"

TtsConversion.total_characters

puts '***********************************'
puts 'Text to sound conversion started...'
puts '***********************************'
synthesis_input = { markup => TtsConversion.file_read }
voice = { language_code: language, name: voice_name }
audio = { audio_encoding: codec, pitch: pitch, speaking_rate: speaking_rate }

TtsConversion.main(client, synthesis_input, voice, audio, codec)
puts '--------------------------------'
puts 'Done'
