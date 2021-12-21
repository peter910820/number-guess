secret_number = rand(1:100)
judge = 0
println("guess the number(between 1 and 100)")
while judge == 0
    input = readline(stdin)
    guess_number = parse(Int64, input)
    if guess_number > 100
        println("number is between 1 and 100!!!")
    elseif  secret_number == guess_number
        println("Congratulations!!! your answer is correct!!!")
        global judge = 1
    else
        if guess_number < secret_number
            println("too small!!")
        else
            println("too big!!")
        end
    end
end