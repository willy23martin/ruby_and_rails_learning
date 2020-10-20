# Unique and Inmutables:
new_symbol = :symbol
puts :symbol
n_symbol = :"Symbol with spaces"
puts :n_symbol
a_symbol = :symbol
puts new_symbol.object_id
puts a_symbol.object_id
# are the same symbol, same memory reference.