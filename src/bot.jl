module bot
    badnames = Dict("Dope" => 1,"Knothead" => 1,"Stupid" => 1)
# The bot wants a name
    println("Please give me a name for I have none.")
    name = readline()

    n = get(badnames,name,0)
    if n ==0
        println("$name is nice, I will take it.")
    else
        println("I think that's not a very nice name")
        name = "Sky"
        println("I chose the name $name for myself.")
        println("$name is a strong name and I like it.")
    end
end
