#lambda example 1

add_10 = ->(x){ x +10}
puts add_10.call 4
#lambda example 2

suma_10 = lambda { |x| x+10 }
puts suma_10.call 10

#lambda example 3

sume_10 = lambda do |x|

	x+10
end
puts sume_10.call 2
