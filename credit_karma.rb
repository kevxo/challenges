#  Given an account defined as:

#  Account
#    balance (decimal number)
#    name: (string)
#    accountType (e.g. credit card, checking, savings)
#    openedDate: (time stamp)

#  for example
#    balance: 1000.00
#    name   : Chase Freedom
#    accountType   : credit card
#    opened Date: 6/19/2004

#  Compare 2 sets of accounts for a user - one set from the current month, and one set from the prior month, e.g.:

#  previous: [ { "balance":2000.0, "name":"Chase Freedom", "type":"credit_card", "openedDate":1111680799 }, { "balance":100.0, "name":"Citibank", "type":"credit_card", "openedDate":1000680799 } ]
#  current:  [ { "balance":1000.0, "name":"Chase Freedom", "type":"credit_card", "openedDate":1111680799 }, { "balance":500.0, "name":"American Express", "type":"credit_card", "openedDate":1222680799 } ]

#     * print out "<name>: <balance change>" for accounts that are in both months, e.g. "Chase Freedom: -1000"
#     * print out "<name>: added" for those that are in the current month but not the previous month, e.g. "American Express: added"
#     * print out "<name>: deleted" for those that are in the previous month but not the current month, e.g. "Citibank: deleted"

class Account
  attr_reader :prev_credit_cards, :current_credit_cards

  def initialize(previous, current)
    @prev_credit_cards = previous
    @current_credit_cards = current
  end

  def change_in_balance(previous, current)
    difference = previous[:balance] - current[:balance]

    "#{previous[:name]}: -#{difference}"
  end

  def added_card
    result = nil
    @current_credit_cards.each do |obj2|
      result = "#{obj2[:name]}: added" unless @prev_credit_cards.include?(obj2[:name])
    end

    result
  end

  def deleted_card
    result = nil
    @prev_credit_cards.each do |obj|
      result = "#{obj[:name]}: deleted" unless @current_credit_cards.include?(obj[:name])
    end

    result
  end
end

previous = [{ "balance": 2000.0, "name": 'Chase Freedom', "type": 'credit_card', "openedDate": 1_111_680_799 },
            { "balance": 100.0, "name": 'Citibank', "type": 'credit_card', "openedDate": 1_000_680_799 }]

current = [{ "balance": 1000.0, "name": 'Chase Freedom', "type": 'credit_card', "openedDate": 1_111_680_799 },
           { "balance": 500.0, "name": 'American Express', "type": 'credit_card', "openedDate": 1_222_680_799 }]

account = Account.new(previous, current)

p account.change_in_balance(previous.first, current.first)
p account.added_card
p account.deleted_card
