# Play Nim game:
#     Game starts with 12 tokens.
#     User goes 1st.
#     Julia goes 2nd.
#     Each players takes 1,2 or 3 tokens, in turns.
#     The player who takes the last token is winner
#     Note : There is a trick through which 2nd player can always win

function nimgame()
    tokencount = 12
    takenum = 0
    while true
        while true
            permitted = collect(1:min(3, tokencount))
            println("\nOf the remaining $tokencount tokens,")
            print("how many do you take ($permitted)?")
            takenum = parse(Int, readline())
            if takenum in permitted
                break
            end
        end
        tokencount -= 4
        println("\n Julia takes $(4 - takenum),")
        println(" so there are $tokencount tokens left.")
        if tokencount < 1
            println("\n Julia Wins as Always (lol)")
            break
        end
    end
end
