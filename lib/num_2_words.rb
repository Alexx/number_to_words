require('pry-byebug')

def word_nerd(input)
  single_numbers = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine'}

  unique_numbers = { 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

  double_numbers = { 2 => 'twenty', 3 => 'thirty', 4 => 'forty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety' }

  number_string = ''

  if input / 1000000000000 > 1
    number_string += "#{single_numbers.fetch(input / 1000000000000)} trillion "
    input -= (input / 1000000000000) * 1000000000000
  end

  if input / 1000000000 > 1
    new_number = input / 1000000000

    if new_number >= 100
      number_string += "#{single_numbers.fetch(new_number/100)} hundred "
      new_number -= (new_number/100) * 100
    end
    if new_number <= 9
      number_string += "#{single_numbers.fetch(new_number)} billion "
    elsif new_number <= 19
      number_string += "#{unique_numbers.fetch(new_number)} billion "
    elsif new_number >= 20
      number_string += "#{double_numbers.fetch(new_number / 10)} #{single_numbers.fetch(new_number - (new_number / 10) * 10)} billion "
    end
    input -= (input / 1000000000) * 1000000000
  end

  if input / 1000000 > 1
    new_number = input / 1000000

    if new_number >= 100
      number_string += "#{single_numbers.fetch(new_number/100)} hundred "
      new_number -= (new_number/100) * 100
    end
    if new_number <= 9
      number_string += "#{single_numbers.fetch(new_number)} million "
    elsif new_number <= 19
      number_string += "#{unique_numbers.fetch(new_number)} million "
    elsif new_number >= 20
      number_string += "#{double_numbers.fetch(new_number / 10)} #{single_numbers.fetch(new_number - (new_number / 10) * 10)} million "
    end
    input -= (input / 1000000) * 1000000
  end

  if input / 1000 > 1
    new_number = input / 1000

    if new_number >= 100
      number_string += "#{single_numbers.fetch(new_number/100)} hundred "
      new_number -= (new_number/100) * 100
    end
    if new_number == 0
      number_string += "thousand "
    elsif new_number <= 9 &&
      number_string += "#{single_numbers.fetch(new_number)} thousand "
    elsif new_number <= 19
      number_string += "#{unique_numbers.fetch(new_number)} thousand "
    elsif new_number >= 20
      number_string += "#{double_numbers.fetch(new_number / 10)} #{single_numbers.fetch(new_number - (new_number / 10) * 10)} thousand "
    end
    input -= (input / 1000) * 1000
  end

  if input / 100 > 1
    new_number = input / 100

    if new_number >= 100
      number_string += "#{single_numbers.fetch(new_number)} hundred "
      new_number -= (new_number/100) * 100
    end
    if new_number <= 9
      number_string += "#{single_numbers.fetch(new_number)} hundred "
    elsif new_number <= 19
      number_string += "#{unique_numbers.fetch(new_number)} hundred "
    elsif new_number >= 20
      number_string += "#{double_numbers.fetch(new_number / 10)} #{single_numbers.fetch(new_number - (new_number / 10) * 10)}"
    end
    input -= (input / 100) * 100
  end

    new_number = input

    if new_number <= 9
      number_string += "#{single_numbers.fetch(new_number)}"
    elsif new_number <= 19
      number_string += "#{unique_numbers.fetch(new_number)}"
    elsif new_number >= 20
      number_string += "#{double_numbers.fetch(new_number / 10)} #{single_numbers.fetch(new_number - (new_number / 10) * 10)}"
    end

  return number_string

end
