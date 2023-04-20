## Google Cloud TTS Ruby CLI App

**How to convert text to speech using Google Cloud Text-to-Speech API and Ruby CLI**

<img src="https://github.com/cmirnow/Google-Cloud-Text-To-Speech-Ruby-CLI-App/blob/master/pic/cli_tts.gif" alt="Google Cloud Text-to-Speech Ruby CLI App" />

:sound: | This application supports select TEXT or SSML, and three conversion formats: MP3 (MPEG Audio Layer III), WAV (LINEAR16) and OGG (OGG_OPUS).
:---: | :--- 

Using the power of Google Cloud Text-to-Speech API and Ruby here is a simple interface to convert text to speech.
You only need key.json (API access key), put it in the root of this application. And that's really all. 

:bangbang: | Warning: This app has only been tested on Linux (openSUSE Leap / Tumbleweed, Fedora). I have not tested this application on Windows.
:---: | :--- 


How to start:

```bash
gem install google-cloud-text_to_speech tty-prompt
git clone https://github.com/cmirnow/Google-Cloud-Text-To-Speech-Ruby-CLI-App.git
cd Google-Cloud-Text-To-Speech-Ruby-CLI-App
```
Copy and paste text or ssml into the file "text_or_ssml.txt".

```bash
ruby bin/tts.rb
```