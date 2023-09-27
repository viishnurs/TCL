#!/usr/bin/tclsh

#write a progarm to get all the numbers divisible 9 for 1 to 100

# 9 18 27 36 45 54 63 72 81 90 99

puts "numbers divisible 9 from 1 to 100 are: "

for {set i 1} {$i<=100} {incr i} {
	
	if {[expr $i % 9] == 0} {
		puts $i

	}
}

#write a progarm to get all the numbers divisible 9 or 5  from 1 to 100
# 5 9 15 18 20 27 ...... 

puts " number divisible for 9 or 5 are :"

for {set i 1} {$i <= 100} {incr i} {
	if {[expr $i % 9] == 0} {
		puts $i
	} elseif {[expr $i % 5 ] == 0} {
		puts $i
	}

}
	
