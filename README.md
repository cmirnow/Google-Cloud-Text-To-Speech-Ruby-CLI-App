## Google Cloud TTS Ruby CLI App

**How to convert text to speech using Google Cloud Text-to-Speech API and Ruby CLI**

<img src="https://github.com/cmirnow/Google-Cloud-Text-To-Speech-Ruby-CLI-App/blob/master/pic/cli_tts.gif" alt="Google Cloud Text-to-Speech Ruby CLI App" width="100%"/>

Using the power of Google Cloud Text-to-Speech API and Ruby here is a simple interface to convert text to speech.
You only need key.json (API access key), put it in the root of this application. And that's really all.

:sound: | This application supports select TEXT or SSML, and three conversion formats: MP3 (MPEG Audio Layer III), WAV (LINEAR16) and OGG (OGG_OPUS).
:---: | :---  

Languages Google Cloud TTS Ruby CLI App supports:
- Arabic (multi-region)
- Català (Espanya)
- Dansk (Danmark)
- Deutsch (Deutschland)
- English (Australia)
- English (Great Britain)
- English (India)
- English (United States)
- Español (España)
- Español (US)
- Français (Canada)
- Français (France)
- Italiano (Italia)
- Japanese (Japan)
- Latviešu (latviešu)
- Magyar (Magyarország)
- Nederlands (Nederland)
- Norsk bokmål (Norge)
- Polski (Polska)
- Português (Brasil)
- Português (Portugal)
- Română (România)
- Suomi (Suomi)
- Íslenska (Ísland)
- Čeština (Česká republika)
- Ελληνικά (Ελλάδα)
- Български (България)
- Русский (Россия)
- Українська (Україна)
- हिन्दी (भारत)

**Be careful: this script was written for use on linux.**

How to start:

```bash
gem install google-cloud-text_to_speech
git clone https://github.com/cmirnow/Google-Cloud-Text-To-Speech-Ruby-CLI-App.git
cd Google-Cloud-Text-To-Speech-Ruby-CLI-App
```
Copy and paste text into the file "text_or_ssml.txt".

```bash
ruby bin/tts.rb
```