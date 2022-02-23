class WordCounter
  def self.counter input 
    input = input.join(" ") if input.is_a?(Array)

    input.scan(/[a-zA-Z_]+/).inject(Hash.new(0)) do |output, word|
      output[word.downcase.to_sym] +=1
      output
    end
  end
end