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
