#!/usr/bin/tclsh

#list --- list the value 
set name [list shaym mohan]
set b "list he name is $name"
puts $b


#split -- spliting the value [split $variable "with what"]
#a orange_apple_red_yellow

set a "orange_apple_red_yellow"
set b [split $a "_"]
puts $b


#a orange-apple/red/yello_blue"
#

set a "orange-apple/red/yello_blue"
set b [split $a "_/"]
puts $b


#append ---> lappend variable added element at last 

set b "the tcl class"
lappend b going on
# we should not use $a in the lappend . append is used to add 
puts $b

set a "my name is "
lappend a vishnu rs
puts $a

#index ---> [lindex $variable]

set a "this is TCL class"
set b [lindex $a 1]
puts $b

#to give output of TCL class

set a "this is TCL class"
set b [lindex $a 2 ]
set c [lindex $a 3]
set d [lrange $a 2 3]
puts $d
puts "$b $c"


#lengts ---> [ llength $variable]

set a "ornage_banana_red_green"
set d [llength $a]
#the above lines will get 1 so we need to split with _
puts $d
set b [split $a "_"]
set c [llength $b]
#the a has been splited with _ and we get the length
puts $c
puts [llength $b]


#insert -->linsert [linsert $name index "anythign"]
#
#
# "this is tcl class" --- > "this is important tcl class"
#syntax 
#set variable [lintex $1stvariable indexnumber "inserting value"]
#exa ---? set b [linsert $a 2 "important"]
#

set a "this is tcl class"
set b [linsert $a 2 important]
puts $b


#"this is tcl class" ----> "this is important tcl class of VLSI"
#

set a "this is tcl class"
set b [linsert $a 2 important]
lappend b of VLSI
puts $b


#range --> lrange [ lrange $name from to]
#this is the the tcl class" ---> is the tcl


set a "this is the tcl class"
set b [lrange $a 1 3 ]
puts $b


##sorting ---> [lsort  -option $name]
#  		-dictonary --> to short in alphabatical order
#		- use man lsort in terminal 
#		without option it will be ASCII
#
set a "is the class going on for tcl"
set b [lsort $a]
set c [lsort -dictionary $a]
puts $c
puts $b


#replace --> [lreplace  $name from to what u want] 
#red white green pink ---> red white yello pink
set a "red white green pink"
set b [lreplace $a 2 2 yello] 
puts $b




#setting --> [lset name index changed ]

set a "red white green pink"
set b [lset a 3 blue]
puts $b


#concatination 	--->  [concat $a $b]


set a "this is tcl class"
set b "wich is important in vlsi"
set c [concat $a $b]`
puts $c

#assign ---lassign $name assignedname1 assignedname2 ..... assignedname n


set a " red blue yellow green white"
lassign $a c1 c2 c3 c4 c5
puts $c1
puts $c2
puts $c3
puts $c4
puts $c5
