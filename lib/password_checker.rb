class PasswordChecker
  def initialize(pw_hash)
    @hash = JSON.parse(pw_hash)
  end

  def count_valid
    count = 0

    @hash.each do |key, value|
      split_key = key.split(' ')
      get_range = split_key.first.split('-')
      range = (get_range[0].to_i..get_range[1].to_i).to_a
      letter = split_key.last
      value_array = value.split('')
      letter_count = 0

      value_array.each do |ele|
        letter_count += 1 if ele == letter
      end

      count += 1 if range.include?(letter_count)
    end

    count
  end
end
