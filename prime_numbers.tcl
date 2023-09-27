#!usr/bin/tclsh
#
#
proc prime {m n} {
	for {set i $m} {$i <= $n} {incr i} {
		set flag 0
		for {set j 2} {$j <= $i/2} {incr j} {
			if {[expr $i%$j] == 0} {
				set flag 1
			}
		}
	
	if {$flag == 0} {
	lappend a $i
	}
	
}
	return $a
}

set y [prime 100 200]
puts "\n$y"
