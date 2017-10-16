defmodule EvenFibonacciNumbers do
	require Integer

	def start() do
    	iterate(0, 1, 0)
	end

	def iterate(first, second, acc) when second < 4000000 do
  		third = first + second

  		new_acc =
  			case Integer.is_even(third) do
  				true -> acc + third
  				false -> acc
  			end

  		iterate(second, third, new_acc)
  	end

  	def iterate(_, second, acc) when second > 4000000 do
  		acc
  	end 
end