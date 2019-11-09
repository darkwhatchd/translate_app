# frozen_string_literal: true

module Save
  class SaveData
    def save(api_answer, phrase, input, output)
      File.open("#{Time.now}.txt", 'w') do |line|
        line.puts("Texto enviado em #{input}:")
        line.puts(phrase)
        line.puts("Tradução para #{output}:")
        line.puts(api_answer)
      end
    end
  end
end
