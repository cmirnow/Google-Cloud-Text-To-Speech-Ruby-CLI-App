# frozen_string_literal: true

LANGUAGES = %w[de-DE
               en-US
               es-ES
               fr-CA
               fr-FR
               nl-NL
               pl-PL
               fi-FI
               ru-RU
               uk-UA].freeze

OBJ = [
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
    ],
    'Basic' => %w[
      en-US-Standard-B
      en-US-Standard-C
      en-US-Standard-D
      en-US-Standard-E
      en-US-Standard-G
      en-US-Standard-H
      en-US-Standard-I
      en-US-Standard-J
    ]
  ],
  'es-ES' => [
    'Basic' => [
      'es-ES-Standard-A'
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
  'fi-FI' => [
    'WaveNet' => [
      'fi-FI-WaveNet-A'
    ],
    'Basic' => [
      'fi-FI-Standard-A'
    ]
  ],
  'ru-RU' => [
    'WaveNet' => %w[
      ru-RU-Wavenet-A
      ru-RU-Wavenet-B
      ru-RU-Wavenet-C
      ru-RU-Wavenet-D
    ],
    'Basic' => %w[
      ru-RU-Standard-A
      ru-RU-Standard-B
      ru-RU-Standard-C
      ru-RU-Standard-D
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
