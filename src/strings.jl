# Strings Unicode and UTF8 are used in Julia
thisstring = "αbcde"

# triple quote, allows quote within a string
qu = """ "Test" """
println(qu)

# concatenation with asterix *
println(qu * thisstring)
number = 3
println("$number")

stripstring = "   a a a a a a   "
println(stripstring)
println(strip(stripstring,[' ']))

s1 = "abcπΣd"

println("Size of s1: $(sizeof(s1))")
println("Length of s1: $(length(s1))")

hg = 80
s2 = string("xy",3,Char(0x3B1),false,s1,hg)

println("Size of s2: $(sizeof(s2))")
println("Length of s2: $(length(s2))")

s = "abcde"
t = transcode(UInt8,s)

a1 = ascii(s)
#a2_f = ascii(s1) # yields error becaise it contains at least one invalid ascii
a2 = transcode(UInt32, s1)

happyface = Char(0x263A)
