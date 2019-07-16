require ('rspec')
require ('pry-byebug')
require('num_2_words')

describe('#num_2_words') do
  it('translates a single digit to a word') do
    expect(word_nerd(789843212)).to(eq('four thousand three hundred'))
  end
end
