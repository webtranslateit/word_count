class Hash
  def word_count
    count = 0
    self.each_pair do |key, value|
      count += value.to_s.word_count
    end
    count
  end
end

