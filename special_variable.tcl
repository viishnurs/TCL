#!/usr/bin/tclsh


#argc-----> it contains argument count which is passed along with the executing file 
#argv-----> it contains argument value which is passed along with the executing file
#
#
#

#gives the count of value we have given
puts $argc
#gives what value we have given 
puts $argv


#if we assign argv to the file we can pass the required variable while execuiting 
lassign $argv cn pn

set tcn ""
		set i 1
		#set the variable to assign what is in the clock_info file and read the flie and assign it in fh_read 
		set fh_read [open clock_info r]
		#while loop is used to read all the line that is gets is used to read the fh_read if its >=0 then there is a line without empty 
		while {[gets $fh_read line] >= 0} {
				if {$i == 1} {
				#to set the total parameter name that is preiod mode mrt mft from index 1 to end in clock_info file
				set tpn [lrange $line 1 end]
				incr i
				continue
				}
				#the above loop continues the till the end of line 

				if {$line == ""} {
				continue
				}
				#to set the clock that is SDRAM_CLK to sys_2x_clk from the clock_info flie which had index 0 and goes to next line with 0 index
				set a [lindex $line 0]
				lappend tcn $a
				incr i
		}
		
		close $fh_read
		#if the given clock name and paramater is not present the below 29-39 line code will run if not 41 line will continue
		set flag [lsearch $tcn $cn]
		if {$flag == -1} {
			puts "no clock with this name"
		return
		}

		set flag1 [lsearch $tpn $pn]
		if {$flag1 == -1} {
		puts "no paramerter with this name"
		return
		}
#if the entered value is correctly present in the flie the below line will print 
puts "clock name and parameter name is correct proceed with search operator"


#we have to open the file again so that the above assigned should read from 1st line if we didnt close above then the lines will continue so we have to open again
		set j 1 
		set fh_read [open clock_info r]
		while {[gets $fh_read line] >= 0} {
				if {$j == 1} {
					set ind [lsearch $line $pn]
					incr j	
					continue 

				} 
				if {[lindex $line 0 ]  == $cn } {
						set result [lindex $line $ind]	


				}
		incr j

		}	

close $fh_read
puts "the $pn of clock $cn is : $result"
return $result

}
#assigning the above proc code to get what we need    exapmple is given below
#clock_opr $cn $pn
