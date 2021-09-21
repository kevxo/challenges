items =  [%w[phone blue pixel], %w[computer silver lenovo], %w[phone gold iphone]]
rule_key = 'color'
rule_value = 'silver'

items2 = [%w[phone blue pixel], %w[computer silver phone], %w[phone gold iphone]]
rule_key2 = 'type'
rule_value2 = 'phone'

items3 = [%w[qqqq qqqq qqqq], %w[qqqq qqqq qqqq], %w[qqqq qqqq qqqq], %w[qqqq qqqq qqqq],
          %w[qqqq qqqq qqqq], %w[qqqq qqqq qqqq], %w[qqqq qqqq qqqq]]
rule_key3 = 'name'
rule_value3 = 'qqqq'

def count_matches(items, rule_key, rule_value)
  count = 0

  items.length.times do |i|
    if items[i].index(rule_value) && rule_keys[rule_key.to_sym] == items[i].index(rule_value) || items[i][rule_keys[rule_key.to_sym]] == rule_value
      count += 1
    end
  end

  count
end

def rule_keys
  {
    "type": 0,
    "color": 1,
    "name": 2
  }
end

p count_matches(items, rule_key, rule_value)
p count_matches(items2, rule_key2, rule_value2)
p count_matches(items3, rule_key3, rule_value3)
