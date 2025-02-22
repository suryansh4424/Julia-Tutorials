using VegaDatasets
using DataVoyager
using VegaLite

#Load data-
data = dataset("iris")
#dislplay all rows-
vscodedisplay(data)
#plot-
v = Voyager(data)
#specify
p = data |> @vlplot(:point, x=:petalLength, y=:petalWidth, color=:species)
display(p)
save("iris_voyager.png",p)
save("iris_voyager.svg",p)