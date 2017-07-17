def get_change(change_value)
	change_hash = {}
	# amount_remaining = change_value
	if change_value >= 100 
		change_hash["dollar"] = change_value / 100
		change_value = change_value % 100
	end
	if change_value >= 25 
		change_hash["quarter"] = change_value / 25
		change_value = change_value % 25
	end
	if change_value >= 10 
		change_hash["dime"] = change_value / 10
		change_value = change_value % 10
	end 
	if change_value >= 5
		change_hash["nickel"] = 1
		change_value = change_value - 5
	end
	if change_value >= 1
		change_hash["penny"] = change_value
	end
	change_hash
end

# def get_change(change_value)
# 	change_hash = {}
# 	until change_value == 0
# 	if change_value >= 25 && change_value <= 99
# 		change_hash["quarter"] = change_value % 25
# 		change_value = change_value - (change_hash["quarter"] * 10)
# 	if	change_value >= 10 && change_value <= 24
# 		change_hash["dime"] = change_value % 10
# 		change_value = change_value - (change_hash["dime"]* 10)
# 	elsif change_value >= 5 && change_value <= 9
# 		change_hash["nickel"] = 1
# 		change_value = change_value - 5
# 	elsif change_value < 5 && change_value > 0
# 		change_hash["penny"] = change_value
# 		change_value = change_value - change_hash[:penny] * 1
# 	end
# 	end
# 	change_hash
# end