# frozen_string_literal: true

module DataM
  class InputData
    def input_data
      puts 'Digite a frase que deseja traduzir: '
      @phrase = gets.chomp
      puts 'Agora informe o idioma usado: '
      @input = gets.chomp
      puts 'Agora informe o idioma desejado: '
      @output = gets.chomp
      api_data
    end

    def api_data
      data = YandexData::Translate.new
      translated_text = data.translate(@phrase, @input, @output)
      save_data(translated_text)
    end

    def save_data(translated_text)
      arq = Save::SaveData.new
      arq.save(translated_text, @phrase, @input, @output)
    end
  end
end
