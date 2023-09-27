#!/usr/bin/tclsh
# write the programm which print all the number divisible by 9 and 5 from 1 -100
puts "all number divisivle by 9 and 5 from  1-100 :"
for {set i 1} {$i <= 100} {incr i} {
	if {[expr $i % 9] == 0} {
		if {[expr $i % 5] == 0} {
			puts $i
		}
	}


}


# another method 
puts " anothe method to print the above "
for {set i 1} {$i <= 100} {incr i} {
	if {([expr $i % 9 ] == 0) && ([expr $i % 5]) == 0 } {
		puts $i
	}
}
