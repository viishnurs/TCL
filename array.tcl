#!/usr/bin/tclsh

#array:array is a collection of element /list with same array name but with different index name 

#how to create array??
#syntax --> set arrayname(index1) {elemetn1 element 2 ... elementn}
#	-->set arrayname(index2) {element1 .... elementn set color(house) {pink yellow white blue}

set color(bus) {red blue yellow}
set color(office) {white blue yellow pink green white red }
set color(table) {brown green white}
set color(phone) {black white grey green blue red purple}


#how to get array value for particular index ?? 
#
#to give the content in phone
set a $color(phone)
puts $a
#we can use list operations with assigend value 

#to get the size of array : no of index in a array
#to get size use set b [array size arrayname]
set b [array size color]
puts $b

#to get all the index of array that is house bus office talbe phone
# index are given in random order 
# to get index use command set c [array names arrayname]
#
set c [array name color]
puts $c

#to print complete array with index and element 
#parray arrayname
parray color

#get array index  which has more elements in it 
#
set ind [array name color]
#all the index of the array are stored in ind
#ind --> table office house phone bus 
set temp 0
set results ""
foreach higest $ind {
	set ac $color($higest)
	set al [llength $ac ]
	if { $al > $temp } {
	set temp $al
	set results $higest
	} elseif {$al == $temp} {
		lappend results $higest
	}
	
}
puts "the higest is '$results' with $temp"



################################################################################################################################
#another method of declaring array 
#
## syntax   
# 
#array set arrayname [list index1 {elements } index2 {elemnets} index3 {elements} ]
#
array set color [list house {pink yellow white blue} bus {white yellow } phone {blue black white} ]

##################    anothe method of creating array ######################################################
#regular array
set student(1) {10 20 30}
set student(2) {20 10 40}
set student(3) {50 56 12}


 
puts "##############################------> MARKS PROGRAM <---------------##########################################"
set marks [dict create s1 {30 40 30} s2 {40 70 50} s3 {50 80 30} ]
#write a program to get highest by adding
#use dict keys
#
set temp 0
set x [dict keys $marks]
foreach kin $x {
	set kcn [dict get $marks $kin]
	set t 0
	foreach i $kcn {
		set t [expr $t +$i]	
		
	}
	if {$t > $temp} {
		set temp $t
		set result $kin
	} elseif {$t == $temp} {
		lappend result $kin
	}
		
		
}
puts "the student with higest marks are - $result with makrs of $temp"























