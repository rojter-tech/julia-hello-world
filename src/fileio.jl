path = "D:\\Github\\rojter-tech\\julia-hello-world\\src"
cd(path)
fi1=open("str1.csv")
fo1=open("str2.csv", "w")
cnt=1
while(!eof(fi1))
    global cnt
    row=readline(fi1)
    row="$cnt,"*row*"\n"
    write(fo1,row)
    print(row)
    cnt+=1
end
close(fi1)
close(fo1)
println("Done")
