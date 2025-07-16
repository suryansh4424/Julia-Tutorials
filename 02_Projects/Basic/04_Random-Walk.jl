#Random walk

function randomwalk(n::Integer)
    x = [0]
    y = [0]
    for i in 1:n
        step = rand((-1,1))
        direction = rand(("x","y"))
        if direction == "x"
            push!(x, x[i] + step)
            push!(y, y[i])
        else
            push!(x, x[i])
            push!(y, y[i] + step)
        end
    end
    return x, y
end

function randomwalkplots(walkers::Integer, steps::Integer)
    scene = Scene()
    for i in 1:walkers
        x,y = randomwalk(steps)
        lines!(x,y, linewidth = 5, color = (rand(RGBf0),0.5)) #RGB and alpha -> color strenth
    end
    scene
end



