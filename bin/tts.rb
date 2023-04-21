# frozen_string_literal: true

if Dir['./*.json'].none?
  puts 'Key to access API Google Cloud Text-to-Speech was not found.'
  puts 'Exit'
  exit
end

require_relative '../lib/tts_conversion'
require_relative '../lib/lang'
require 'google/cloud/text_to_speech'

client = TtsConversion.client(Dir['./*.json'][0])

puts ' '
puts '********* MASTERPRO.WS PROJECT ***********'
puts 'Google Cloud Text-to-Speech Ruby CLI APP'
puts '******************************************'
puts ' '
TtsConversion.total_characters
puts ' '

language = TtsConversion.language_selection
language_code = TtsConversion.language_code_find(language)
voice_type = TtsConversion.select_voice_type(language_code)
voice_name = TtsConversion.select_voice_name(LOCALES[0][language_code][0][voice_type])
markup = TtsConversion.markup
codec = TtsConversion.select_codec
speaking_rate = TtsConversion.speaking_rate
pitch = TtsConversion.pitch

puts ' '
puts '***********************************'
puts 'Text-to-Speech conversion started...'
puts '***********************************'

synthesis_input = { markup => TtsConversion.file_read }
voice = { language_code: language_code, name: voice_name }
audio = { audio_encoding: codec, pitch: pitch, speaking_rate: speaking_rate }

TtsConversion.main(client, synthesis_input, voice, audio, codec)

puts '--------------------------------'
puts 'Done'
