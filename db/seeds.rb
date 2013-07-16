require_relative '../app/models/word'

File.open("/usr/share/dict/words").each_line do |line|
  Word.create({ word: line})
end
