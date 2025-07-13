#Repeat Lyrics to song at `n` and counting down to 1.

function song(start::Integer)
    lines(i) = i == 0 ? "No more Lines" : i == 1 ? "1 line" : "$i lines"
    # also writtena s -
    # function lines(i)
    #     if i == 0
    #         return "No more Lines"
    #     elseif i == 1
    #         return "1 line"
    #     else
    #         return "$i lines"
    #     end
    # end
    for i in start:-1:1
        println("""
                    $(lines(i)) of code on the Screen,
                    $(lines(i)) of code...
                    \tControl the Flow,
                    \tDelete the Row,
                    $(lines(i-1)) of Code on the Screen!!!
        """)
    end
end

#to Run- song(99) 
