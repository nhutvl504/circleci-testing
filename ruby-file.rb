require_relative 'learn_ruby'

# I need a class
ramble = LearnRuby.new('C')
second_ramble = LearnRuby.new('Perl')

# can you hear me calling?
puts ramble.some_words
puts second_ramble.some_words
