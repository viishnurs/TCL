#!/usr/bin/tclsh

#find largest number

set a {10 20 30 40 60 32 59 45 24 59 21 66 94 99}
set b [lindex $a 0]

foreach num $a {


	if {$num > $b} {
	set b $num
	}
	
}
puts "the largest number is $b"

