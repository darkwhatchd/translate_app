# frozen_string_literal: true

module YandexData
  class Translate
    @@API_KEY = 'trnsl.1.1.20191105T015813Z.e71e0e77c373d8df.a9a704fbd2535217ae82d38ca00838e21261d5cb'
    @@link = 'https://translate.yandex.net/api/v1.5/tr.json/translate'

    def translate(phrase, input, output)
      if phrase != '' && output != ''
        translated = RestClient.get(@@link, params: { key: @@API_KEY, text: phrase, lang: "#{input}-#{output}" })
        translated_phrase = JSON.parse(translated)['text'].join
        puts translated_phrase
        translated_phrase
      else
        puts 'Não foi possivel traduzir'
      end
    end
  end
end
