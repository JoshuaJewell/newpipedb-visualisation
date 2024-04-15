using PlotlyJS, Images

p = plot(rand(10, 4))
savefig(p, "howthehellwillifindthis.png")

img = load("howthehellwillifindthis.png")