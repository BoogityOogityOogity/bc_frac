#This is a fractions program that will add, subtract, multiply, divide, and reduce fractions. It might also turn a fraction into a decimal.

require 'rational'
#above require allows you acces to two methods
#lcm and gcd
#lcm = lowest common multiple
#gcd = greatest common divisor
#use like this 4.gcd(12) would result in 4
#or 12.lcm(3) would result in 3
#Methods Definition Section
#**************************************************

#all methods should call redux when finished before reporting answer
def add_frac(frac1,frac2)
	frac1_num = frac1[0]*frac2[1]
	frac2_num = frac1[1]*frac2[0]
	num = frac1_num + frac2_num
	denom = frac1[1]*frac2[1]
	redux_frac_sing(num,denom)
end



def sub_frac(frac1,frac2)
	frac2[0] = frac2[0] * -1
	add_frac(frac1,frac2)
end



def mult_frac(frac1,frac2)
	num = frac1[0]*frac2[0]
	denom = frac1[1]*frac2[1]
	redux_frac_sing(num,denom)
end



def div_frac(frac1,frac2)
	invert_frac_program(frac2)
	num = frac1[0]*frac2[0]
	denom = frac1[1]*frac2[1]
	gcd = num.gcd(denom)
	num = num/gcd
	denom = denom/gcd
	frac = [num,denom]
	print_frac(frac)
end



def redux_frac_sing(num,denom)
	gcd = num.gcd(denom)
	num_redux = num/gcd
	denom_redux = denom/gcd
	frac = [num_redux,denom_redux]
	print_frac(frac)
end



def redux_fracs(frac1,frac2)
	gcd_frac1 = frac1[0].gcd(frac1[1])
	gcd_frac2 = frac2[0].gcd(frac2[1])
	frac1_redux_num = frac1[0]/gcd_frac1
	frac1_redux_denom = frac1[1]/gcd_frac1
	frac2_redux_num = frac2[0]/gcd_frac2
	frac2_redux_denom = frac2[1]/gcd_frac2
	puts "#{frac1_redux_num}/#{frac1_redux_denom}"
	puts "#{frac2_redux_num}/#{frac2_redux_denom}"
end



def to_decimal(frac1,frac2)
	frac1_dec = frac1[0].to_f/frac1[1].to_f
	frac2_dec = frac2[0].to_f/frac2[1].to_f
	puts frac1_dec
	puts frac2_dec
end



def invert_frac(frac1,frac2)
	frac1_reverse = frac1.reverse!
	frac2_reverse = frac2.reverse!
	puts "#{frac1[0]}/#{frac1[1]}"
	puts "#{frac2[0]}/#{frac2[1]}"
end



def invert_frac_program(frac2)
	frac2_reverse = frac2.reverse!
end



def print_frac(frac)
	puts "#{frac[0]}/#{frac[1]}"
end

#**************************************************
puts "Welcome to my fraction calcuator. Enter two fractions like this, one whole fraction at a time, pressing enter in between the fractions. For example you would type a/b Enter, then c/d Enter."

frac1 = gets.chomp
frac2 = gets.chomp

frac1 = frac1.split("/")
frac2 = frac2.split("/")

frac1.collect! {|x| x.to_i}
frac2.collect! {|x| x.to_i}

puts "Would you like to add(1), subtract(2), multiply(3), divide(4), reduce(5), invert(6), or turn to decimal(7) your fractions? Enter the number of your choice."

choice = gets.to_i

case choice
	when 1
		add_frac(frac1,frac2)
	when 2
		sub_frac(frac1,frac2)
	when 3
		mult_frac(frac1,frac2)
	when 4
		div_frac(frac1,frac2)
	when 5
		redux_fracs(frac1,frac2)
	when 6
		invert_frac(frac1,frac2)
	when 7
		to_decimal(frac1,frac2)
end









#Procedural section of code
#***************************************************















#************************************************
