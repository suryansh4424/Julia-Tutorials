function magic8ball()
    responses = [
                    "It is certain"
                    "It is decidely so"
                    "Without a doubt"
                    "Yes, definitely"
                    "You may rely on it"
                    "As I see it, yes"
                    "Most likely"
                    "Outlook good"
                    "Signs point to yes"
                    "Yes"
                    "Reply hazy, try again"
                    "Ask again later"
                    "Better not tell you now"
                    "Cannot predict now"
                    "Concentrate and ask again"
                    "Don't bet on it"
                    "My reply is no"
                    "My sources say no"
                    "Outlook not so good"
                    "Very doubtful"
    ]
    while true
        println("Ask a yes/no question (blank to exit):")
        if readline() == ""
            break
        end
        println("\n", rand(responses), "\n")
    end
end
