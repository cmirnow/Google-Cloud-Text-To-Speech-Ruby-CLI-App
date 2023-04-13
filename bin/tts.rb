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

require_relative '../lib/tts_conversion.rb'

TtsConversion.total_characters

require_relative '../lib/lang.rb'
require 'google/cloud/text_to_speech'
client = TtsConversion.client(Dir['./*.json'][0])

puts 'What language/locale do you want to use? choose between 0-9:

Arabic (multi-region)
Български (България)
Català (Espanya)
Čeština (Česká republika)
Dansk (Danmark)
Deutsch (Deutschland)
Ελληνικά (Ελλάδα)
English (Australia)
English (Great Britain)
English (India)
English (United States)
Español (España)
Español (US)
Suomi (Suomi)
Français (Canada)
Français (France)
हिन्दी (भारत)
Magyar (Magyarország)
Íslenska (Ísland)
Italiano (Italia)
Japanese (Japan)
Latviešu (latviešu)
Norsk bokmål (Norge)
Nederlands (Nederland)
Polski (Polska)
Português (Brasil)
Português (Portugal)
Română (România)
Русский (Россия)
Українська (Україна)'

language = LANGUAGES[gets.strip.to_i]
puts '--------------------------------'
puts 'Your choice: ' + language
puts '--------------------------------'

puts 'WaveNet or Basic? (default WaveNet):'
tmp = TtsConversion.voice_names(language)
voice_names_array = tmp[0]
puts '--------------------------------'
puts 'Your choice: ' + tmp[1]
puts '--------------------------------'

puts 'Now select the locale number:'
voice_names_array.each_with_index do |t, index|
  print index.to_s + ' => ' + t + "\n"
end

voice_name = voice_names_array[gets.strip.to_i]
puts '--------------------------------'
puts 'Your choice: ' + voice_name
puts '--------------------------------'

puts 'TEXT or SSML? default TEXT:'
markup = TtsConversion.markup(gets.strip)
puts 'Your choice: ' + markup

puts 'MP3 or WAV? (default MP3):'
codec = TtsConversion.codec_select(gets.strip)
puts 'Your choice: ' + codec

TtsConversion.total_characters

puts '***********************************'
puts 'Text to sound conversion started...'
puts '***********************************'
synthesis_input = { markup => TtsConversion.file_read }
voice = { language_code: language, name: voice_name }
audio = { audio_encoding: codec }

TtsConversion.index(client, synthesis_input, voice, audio, codec)
puts '--------------------------------'
puts 'Done'
