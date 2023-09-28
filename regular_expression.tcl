#!/usr/bin/tclsh
#
#
#regular expression --->> pattern in regular expression is compared with the string , if pattern is present in string regrexpr will evaluate true if pattern is not present in string regexpr will evaluate false  
#
#+ ---> we use + and char before + can be repeat n number of times but char should be present min pnce 
#[] ---> to indicate range of characters



set a "Today     class is       TCL and mentor is         Deepak"
#regexp is the syntax of list 
if {[regexp -nocase {tcl and} $a]} {
	puts "pattern matched"
	}
#
#+ ---> we use + and char before + can be repeat n number of times but char should be present min pnce 
#[] ---> to indicate range of characters
# . ---> any character atlist one character should be present
#  * --> may repeat  n number of times even it is not preset


#set b " today class is tcl and mentor is deepak"
#syntax 
#         [regexp -nocase {[]+  +anything +[a-z]+ + .......} $name of assigned string   nameofvaribale where the given pattern is matched }
#
if {[regexp -nocase {[a-z]+ +class +is +([a-z]+) +and +mentor +is +([a-z]+)} $a allpattern firstbracket secondbracket] } {
	puts "matched"
	puts $allpattern
	puts $firstbracket
	puts $secondbracket
	}




