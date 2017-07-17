class Change
  def change(amount)
    available_coins  = [100,50,25,10,5,1]
    coins            = []          # holds list of coins to return
    remaining_amount = amount
    available_coins.each do |coin| # counts down finds biggest coins first
      if ((remaining_amount/coin).to_int > 0)
      then (remaining_amount/coin).to_int.times { coins << coin }
        puts "Remaining Amount: #{remaining_amount} | Coin: #{coin}"
        remaining_amount = amount - coins.inject(:+)
      end                         # coins.inject(:+) sums array items
    end                           # stackoverflow.com/a/1538801/1148249
    puts "Amount #{amount} >> Coins: #{coins}\n\n"
    return coins
  end
end