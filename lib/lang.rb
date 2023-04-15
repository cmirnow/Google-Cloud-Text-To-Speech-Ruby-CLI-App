# frozen_string_literal: true

CODES = %w[ar-XA
           bg-BG
           ca-ES
           cs-CZ
           da-DK
           de-DE
           el-GR
           en-AU
           en-GB
           en-IN
           en-US
           es-ES
           es-US
           fi-FI
           fr-CA
           fr-FR
           hi-IN
           hu-HU
           is-IS
           it-IT
           ja-JP
           lv-LV
           nb-NO
           nl-NL
           pl-PL
           pt-BR
           pt-PT
           ro-RO
           ru-RU
           uk-UA].freeze

LANGUAGES_LOCALES = [
  'Arabic (multi-region)',
  'Български (България)',
  'Català (Espanya)',
  'Čeština (Česká republika)',
  'Dansk (Danmark)',
  'Deutsch (Deutschland)',
  'Ελληνικά (Ελλάδα)',
  'English (Australia)',
  'English (Great Britain)',
  'English (India)',
  'English (United States)',
  'Español (España)',
  'Español (US)',
  'Suomi (Suomi)',
  'Français (Canada)',
  'Français (France)',
  'हिन्दी (भारत)',
  'Magyar (Magyarország)',
  'Íslenska (Ísland)',
  'Italiano (Italia)',
  'Japanese (Japan)',
  'Latviešu (latviešu)',
  'Norsk bokmål (Norge)',
  'Nederlands (Nederland)',
  'Polski (Polska)',
  'Português (Brasil)',
  'Português (Portugal)',
  'Română (România)',
  'Русский (Россия)',
  'Українська (Україна)'
].freeze

LOCALES = [
  'ar-XA' => [
    'WaveNet' => %w[
      ar-XA-Wavenet-A
      ar-XA-Wavenet-B
      ar-XA-Wavenet-C
      ar-XA-Wavenet-D
    ],
    'Basic' => %w[
      ar-XA-Standard-A
      ar-XA-Standard-B
      ar-XA-Standard-C
      ar-XA-Standard-D
    ]
  ],
  'bg-BG' => [
    'Basic' => %w[
      bg-bg-Standard-A
    ]
  ],
  'ca-ES' => [
    'Basic' => %w[
      ca-es-Standard-A
    ]
  ],
  'cs-CZ' => [
    'WaveNet' => %w[
      cs-CZ-Wavenet-A
    ],
    'Basic' => %w[
      cs-CZ-Standard-A
    ]
  ],
  'da-DK' => [
    'WaveNet' => %w[
      da-DK-Wavenet-A
      da-DK-Wavenet-C
      da-DK-Wavenet-D
      da-DK-Wavenet-E
    ],
    'Basic' => %w[
      da-DK-Standard-A
      da-DK-Standard-C
      da-DK-Standard-D
      da-DK-Standard-E
    ]
  ],
  'de-DE' => [
    'WaveNet' => %w[
      de-DE-WaveNet-F
      de-DE-WaveNet-A
      de-DE-WaveNet-B
      de-DE-WaveNet-C
      de-DE-WaveNet-D
      de-DE-WaveNet-E
    ],
    'Basic' => %w[
      de-DE-Standard-E
      de-DE-Standard-A
      de-DE-Standard-B
      de-DE-Standard-F
    ],
    'Neural2' => %w[
      de-DE-Neural2-B
      de-DE-Neural2-C
      de-DE-Neural2-D
      de-DE-Neural2-F
    ]
  ],
  'el-GR' => [
    'WaveNet' => %w[
      el-GR-Wavenet-A
    ],
    'Basic' => %w[
      el-GR-Standard-A
    ]
  ],
  'en-AU' => [
    'WaveNet' => %w[
      en-AU-Wavenet-A
      en-AU-Wavenet-B
      en-AU-Wavenet-C
      en-AU-Wavenet-D
      en-AU-News-E
      en-AU-News-F
      en-AU-News-G
    ],
    'Basic' => %w[
      en-AU-Standard-A
      en-AU-Standard-B
      en-AU-Standard-C
      en-AU-Standard-D
    ],
    'Neural2' => %w[
      en-AU-Neural2-A
      en-AU-Neural2-B
      en-AU-Neural2-C
      en-AU-Neural2-D
    ]
  ],
  'en-GB' => [
    'WaveNet' => %w[
      en-GB-Wavenet-F
      en-GB-Wavenet-A
      en-GB-Wavenet-B
      en-GB-Wavenet-C
      en-GB-Wavenet-D
      en-GB-News-G
      en-GB-News-H
      en-GB-News-I
      en-GB-News-J
      en-GB-News-K
      en-GB-News-L
      en-GB-News-M
    ],
    'Basic' => %w[
      en-GB-Standard-A
      en-GB-Standard-B
      en-GB-Standard-C
      en-GB-Standard-D
      en-GB-Standard-F
    ],
    'Neural2' => %w[
      en-GB-Neural2-A
      en-GB-Neural2-B
      en-GB-Neural2-C
      en-GB-Neural2-D
      en-GB-Neural2-F
    ]
  ],
  'en-IN' => [
    'WaveNet' => %w[
      en-IN-Wavenet-D
      en-IN-Wavenet-A
      en-IN-Wavenet-B
      en-IN-Wavenet-C
    ],
    'Basic' => %w[
      en-IN-Standard-D
      en-IN-Standard-A
      en-IN-Standard-B
      en-IN-Standard-C
    ]
  ],
  'en-US' => [
    'WaveNet' => %w[
      en-US-WaveNet-G
      en-US-WaveNet-H
      en-US-WaveNet-I
      en-US-WaveNet-J
      en-US-WaveNet-A
      en-US-WaveNet-B
      en-US-WaveNet-C
      en-US-WaveNet-D
      en-US-WaveNet-E
      en-US-WaveNet-F
      en-US-News-K
      en-US-News-L
      en-US-News-M
      en-US-News-N
    ],
    'Basic' => %w[
      en-US-Standard-A
      en-US-Standard-B
      en-US-Standard-C
      en-US-Standard-D
      en-US-Standard-E
      en-US-Standard-F
      en-US-Standard-G
      en-US-Standard-H
      en-US-Standard-I
      en-US-Standard-J
    ],
    'Neural2' => %w[
      en-US-Neural2-A
      en-US-Neural2-C
      en-US-Neural2-D
      en-US-Neural2-E
      en-US-Neural2-F
      en-US-Neural2-G
      en-US-Neural2-H
      en-US-Neural2-I
      en-US-Neural2-J
    ],
    'Studio' => %w[
      en-US-Studio-M
      en-US-Studio-O
    ]
  ],
  'es-ES' => [
    'Basic' => %w[
      es-ES-Standard-A
      es-ES-Standard-B
      es-ES-Standard-C
      es-ES-Standard-D
    ],
    'WaveNet' => %w[
      es-ES-WaveNet-B
      es-ES-WaveNet-C
      es-ES-WaveNet-D
    ],
    'Neural2' => %w[
      es-ES-Neural2-A
      es-ES-Neural2-B
      es-ES-Neural2-C
      es-ES-Neural2-D
      es-ES-Neural2-E
      es-ES-Neural2-F
    ]
  ],
  'es-US' => [
    'Basic' => %w[
      es-US-Standard-A
      es-US-Standard-B
      es-US-Standard-C
    ],
    'WaveNet' => %w[
      es-US-WaveNet-A
      es-US-WaveNet-B
      es-US-WaveNet-C
      es-US-News-D
      es-US-News-E
      es-US-News-F
      es-US-News-G
    ],
    'Neural2' => %w[
      es-US-Neural2-A
      es-US-Neural2-B
      es-US-Neural2-C
    ],
    'Studio' => %w[
      es-US-Studio-B
    ]
  ],
  'fi-FI' => [
    'WaveNet' => %w[
      fi-FI-WaveNet-A
    ],
    'Basic' => %w[
      fi-FI-Standard-A
    ]
  ],
  'fr-CA' => [
    'WaveNet' => %w[
      fr-CA-WaveNet-A
      fr-CA-WaveNet-B
      fr-CA-WaveNet-C
      fr-CA-WaveNet-D
    ],
    'Basic' => %w[
      fr-CA-Standard-A
      fr-CA-Standard-B
      fr-CA-Standard-C
      fr-CA-Standard-D
    ],
    'Neural2' => %w[
      fr-CA-Neural2-A
      fr-CA-Neural2-B
      fr-CA-Neural2-C
      fr-CA-Neural2-D
    ]
  ],
  'fr-FR' => [
    'WaveNet' => %w[
      fr-FR-WaveNet-A
      fr-FR-WaveNet-B
      fr-FR-WaveNet-C
      fr-FR-WaveNet-D
      fr-FR-WaveNet-E
    ],
    'Basic' => %w[
      fr-FR-Standard-E
      fr-FR-Standard-A
      fr-FR-Standard-B
      fr-FR-Standard-C
      fr-FR-Standard-D
    ],
    'Neural2' => %w[
      fr-FR-Neural2-A
      fr-FR-Neural2-B
      fr-FR-Neural2-C
      fr-FR-Neural2-D
      fr-FR-Neural2-E
    ]
  ],
  'hi-IN' => [
    'WaveNet' => %w[
      hi-IN-Wavenet-D
      hi-IN-Wavenet-A
      hi-IN-Wavenet-B
      hi-IN-Wavenet-C
    ],
    'Basic' => %w[
      hi-IN-Standard-D
      hi-IN-Standard-A
      hi-IN-Standard-B
      hi-IN-Standard-C
    ],
    'Neural2' => %w[
      hi-IN-Neural2-A
      hi-IN-Neural2-B
      hi-IN-Neural2-C
      hi-IN-Neural2-D
    ]
  ],
  'hu-HU' => [
    'WaveNet' => %w[
      hu-HU-Wavenet-A
    ],
    'Basic' => %w[
      hu-HU-Standard-A
    ]
  ],
  'is-IS' => [
    'Basic' => %w[
      is-is-Standard-A
    ]
  ],
  'it-IT' => [
    'WaveNet' => %w[
      it-IT-Wavenet-A
      it-IT-Wavenet-B
      it-IT-Wavenet-C
      it-IT-Wavenet-D
    ],
    'Basic' => %w[
      it-IT-Standard-A
      it-IT-Standard-B
      it-IT-Standard-C
      it-IT-Standard-D
    ],
    'Neural2' => %w[
      it-IT-Neural2-A
      it-IT-Neural2-C
    ]
  ],
  'ja-JP' => [
    'WaveNet' => %w[
      ja-JP-Wavenet-A
      ja-JP-Wavenet-B
      ja-JP-Wavenet-C
      ja-JP-Wavenet-D
    ],
    'Basic' => %w[
      ja-JP-Standard-A
      ja-JP-Standard-B
      ja-JP-Standard-C
      ja-JP-Standard-D
    ],
    'Neural2' => %w[
      ja-JP-Neural2-B
      ja-JP-Neural2-C
      ja-JP-Neural2-D
    ]
  ],
  'lv-LV' => [
    'Basic' => %w[
      lv-lv-Standard-A
    ]
  ],
  'nl-NL' => [
    'WaveNet' => %w[
      nl-NL-WaveNet-B
      nl-NL-WaveNet-C
      nl-NL-WaveNet-D
      nl-NL-WaveNet-E
      nl-NL-WaveNet-A
    ],
    'Basic' => %w[
      nl-NL-Standard-A
      nl-NL-Standard-B
      nl-NL-Standard-C
      nl-NL-Standard-D
      nl-NL-Standard-E
    ]
  ],
  'nb-NO' => [
    'WaveNet' => %w[
      nb-NO-Wavenet-A
      nb-NO-Wavenet-B
      nb-NO-Wavenet-C
      nb-NO-Wavenet-D
      nb-NO-Wavenet-E
    ],
    'Basic' => %w[
      nb-NO-Standard-A
      nb-NO-Standard-B
      nb-NO-Standard-C
      nb-NO-Standard-D
      nb-NO-Standard-E
    ]
  ],
  'pl-PL' => [
    'WaveNet' => %w[
      pl-PL-WaveNet-A
      pl-PL-WaveNet-B
      pl-PL-WaveNet-C
      pl-PL-WaveNet-D
      pl-PL-WaveNet-E
    ],
    'Basic' => %w[
      pl-PL-Standard-E
      pl-PL-Standard-A
      pl-PL-Standard-B
      pl-PL-Standard-C
      pl-PL-Standard-D
    ]
  ],
  'pt-BR' => [
    'WaveNet' => %w[
      pt-BR-Wavenet-A
      pt-BR-Wavenet-B
      pt-BR-Wavenet-C
    ],
    'Basic' => %w[
      pt-BR-Standard-A
      pt-BR-Standard-B
      pt-BR-Standard-C
    ],
    'Neural2' => %w[
      pt-BR-Neural2-A
      pt-BR-Neural2-B
      pt-BR-Neural2-C
    ]
  ],
  'pt-PT' => [
    'WaveNet' => %w[
      pt-PT-Wavenet-A
      pt-PT-Wavenet-B
      pt-PT-Wavenet-C
      pt-PT-Wavenet-D
    ],
    'Basic' => %w[
      pt-PT-Standard-A
      pt-PT-Standard-B
      pt-PT-Standard-C
      pt-PT-Standard-D
    ]
  ],
  'ro-RO' => [
    'WaveNet' => %w[
      ro-RO-Wavenet-A
    ],
    'Basic' => %w[
      ro-RO-Standard-A
    ]
  ],
  'ru-RU' => [
    'WaveNet' => %w[
      ru-RU-Wavenet-A
      ru-RU-Wavenet-B
      ru-RU-Wavenet-C
      ru-RU-Wavenet-D
      ru-RU-Wavenet-E
    ],
    'Basic' => %w[
      ru-RU-Standard-A
      ru-RU-Standard-B
      ru-RU-Standard-C
      ru-RU-Standard-D
      ru-RU-Standard-E
    ]
  ],
  'uk-UA' => [
    'WaveNet' => [
      'uk-UA-WaveNet-A'
    ],
    'Basic' => [
      'uk-UA-Standard-A'
    ]
  ]
].freeze
