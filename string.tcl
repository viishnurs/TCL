#!/usr/bin/tclsh


#string ---> albhebaticl characters called string | every ASCII character is included 

set a "\"This is a string to pactice?\"\n"
	#seperator
	#	\n --> new line
	#	\v --> vertical spacing
	#	\t --> tab spacing 
	#	\""--> to get "" in string 
puts $a


#operations with string
#	index ---->  [string index $variable indexnumber 
#	where to search 5{index no.}
puts "#####################  INDEX  ###############################\n"
set a "This TCL session is there"
set b [string index $a 5]
puts $a
puts $b

#	length ---> it give the count of all the index value present in the string 
#	syntax ---> [string length $variable]
#
puts " #################### LENGTH ###############################\n"
set a " this is session there"
set b [string length $a]
puts $a
puts $b


#	compare   -->  it compares the two strings chat by char based on ascii form if the 1st char (based in ascii list) comes in 1st stinf result will be 1
#	if the char comes in 2nd string the result is +1
#	if all the chat of both strings are same then result will be 0
#	


puts " #################### COMPARE ###############################\n"
set a "Hhello"
set b "Hhello"
set c [string compare $a $b]
puts $c


#	wordstart ---> it givens the index value of starting letter of word present at the given index value

puts " #################### wordstart #############################\n"
set a "TCL is importent to learn"
set b [string wordstart $a 10]
puts $b
## output is 7 becz index 10 is in word impoertant and the staring letter of important is  I and its index is 7
#
#	
#
#	wordend ---> it gives the index value of ending letter of word present at the given index
#
#
#
puts " #################### wordend ###############################\n"
set a " this is session there"
set b [string wordend $a 10]
puts $b

#output is 16 becz at index 10 is in the word session and  the ending word is n and its index is 16


#	string first---> It will give the index of the first occurance of the given character/word 
#	syntax --> [string first $what u have to search $where u hve to search]
#	
#
puts " #################### String First ##########################\n"
set a "his is session there"
set b "t"
set c [string first $b $a 10]
puts $c
 
#output ---> 15 becz the 1st "t" is in the 15th index of the above string we used 10 and it will search after the given index and gives the 1st index of the give input
#
#
#
#	string last ---> it gives the index value of the last occurance if the given value
#
puts " #################### string last############################\n"
set a "this is session there"
set b "s"
set c [string last $b $a]
puts $c 

#output --> 11 as the last occurance of the given "s" is at the index 11 so the result is 11 if we give index value if gives the last occurance before that
#		index same like the above string last 



#	string match ---> checks for each and every character between 2 strings if all the chatacters matches result is 1 if any of the character 
#				doesnt match result is 0
#				
#				syntax [string match $what we have to match $where we have to match"
#
puts " #################### string match ##########################\n"
set a "this is tcl"
set b "tcl"
set c [string match $b $a]
puts $c


#	string reverse-----> it reverses the each and every character of the given string 
#
#		syntax ---> [string reverse $varibale]
#
puts " #################### string reverse  #######################\n"
set a " this is session there"
set b [string reverse $a]
puts $b 




#	
#
#	range -----> it gives the characters from given range
#		synatx --> [strange range $varialbe start end ]
#
puts " #################### range   ###############################\n"
set a " this is session there"
set b [string range $a 5 12]
puts $b
puts "[string tolower $a]"
puts "[string toupper $a]"

#tolower ---> changes all the characters to lower case [string tolower $variable]
#toupper ---> changes all the characters to upper case [string toupper $variable]

set d [string reverse [string range $a 5 10]]
puts $d

#output --> it give the character from 5 to 10 in reverser order 
#we can use as many operation in a single line 

#	
#	append ---> adds another string at the end of the parent string 
#		synatx [append parent\string $adding\string]
#			ex: [append a $b]
#				$ should not be used for the string which should we add and we should $ for the variable which is needed to add 
#
#
puts " #################### append  ###############################\n"
set a " this is session there "
set b "of tcl"
set c [append a $b]
puts $c



#trim  ---> it will cut the both end of the given string with some given reference character
#		syntax [string trim $variable what\we\have\to\cut}


puts " ############################### trim #############################\n"
set a "ssssthis is tcl sessionssssss"
set b [string trim $a s]
set c [string trimleft $a s]
set d [string trimright $a s]
puts $b
puts $c
puts $d

#trimleft ---> to trim only left of the string
#trimright ---> to trim only right of the string 
