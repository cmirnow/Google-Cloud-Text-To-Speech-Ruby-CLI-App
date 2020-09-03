## Google Cloud TTS Ruby CLI App

**How to convert text to speech using Google Cloud Text-to-Speech API and Ruby CLI**

![Google Cloud TTS Ruby CLI App](https://github.com/cmirnow/Google-Cloud-Text-To-Speech-Ruby-CLI-App/blob/master/pic/cli_tts.gif)

Using the power of Google Cloud Text-to-Speech API and Ruby here is a simple interface to convert text to speech.
You only need key.json (API access key), put it in the root of this application. And that's really all.

> This application supports SSML and two conversion formats: MP3 and WAV.

Languages Google Cloud TTS Ruby CLI App supports:
- Deutsch (Deutschland)
- English (United States)
- Español (España)
- Français (Canada)
- Français (France)
- Nederlands (Nederland)
- Polski (Polska)
- Suomi (Suomi)
- Русский (Россия)
- Українська (Україна)

**Be careful, the script is made for Linux.**

How to start:

```bash
gem install google-cloud-text_to_speech
git clone https://github.com/cmirnow/Google-Cloud-Text-To-Speech-Ruby-CLI-App.git
cd Google-Cloud-Text-To-Speech-Ruby-CLI-App
ruby bin/tts.rb
```

[Description](https://masterpro.ws/google-cloud-text-to-speech-ruby-cli-app) (in Russian).

