=begin
 Pseudocode

1) Take in a 16 digit number
2) Break down into separate values
3) Multiple every other number starting from the 2nd to last
4) Rejoin and split into separate again
5) Add all values
6) Mod 10 and if 0, valid. If not, invalid. Return true or false

=end


class CreditCard
  def initialize(card_num)
    @card_num = card_num.to_s
    if @card_num.length != 16
      raise ArgumentError.new("This is not a valid credit card")
    end
  end

  def check_card?
    # Separates into single digits, reverses it, checks for every other, returns x as an integer.
    card_array = @card_num.chars.reverse.map.with_index{|x,i| i%2==0 ? x.to_i : x.to_i*2}
    # Join the numbers together back into a string and chars it again so that I can add all values
    sum = card_array.join.chars.map{|x| x.to_i}.reduce(:+)
    sum % 10 == 0 ? true : false
  end

end

cc_test = CreditCard.new(4061724061724061)
p cc_test.check_card?
cc_test = CreditCard.new(4061724061722041)
p cc_test.check_card?