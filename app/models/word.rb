class Word < ActiveRecord::Base
  # Remember to create a migration!

  def anagrams
    word = self.word.chomp
    anagrams = []
    Word.all.each do |dict_word|
      if word.downcase.split(//).sort == dict_word.word.chomp.downcase.split(//).sort
        anagrams << dict_word.word.chomp
      end
    end
    anagrams
  end
end
