# let's get Classical
class LearnRuby
  # the progeamming language that Ruby reminds me of
  attr_accessor :name

  # what language does Ruby most remind you of?
  def initialize(name)
    @name = name
  end

  # and don't say Perl
  def check_name
    puts 'why do you think that?' if @name == 'Perl'
  end

  # so, I'm asleep still, so this is even more rambling
  def some_words()
    # I should try a gets
    puts "puts reminds me of another language"
    # an old man and a young man try to program
    puts 'was it c?'
    # whom knows which language? 
    puts "or was it perl?"
    # but, put where?
    puts 'either way, I\'m sure it stands for put string'
    # a quote by any other name
    puts 'I wonder what quote style I should be using, \" or \''
    # I use this too much
    puts "..."
    # the universe is lonely, it wants a friend
    puts 'wasn\'t I supposed to say "hello world" at some point?'
    check_name
    puts "(btw, the answer is #{@name}"
  end
end
