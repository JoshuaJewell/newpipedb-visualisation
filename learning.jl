using PlotlyJS, Images

labels = ["Item1","Item2","Item3","Item4"]
parents = ["","Item1","Item2","Item2"]
values = [3,2,5,2]
marker_colors = ["pink", "royalblue", "lightgray", "purple"]

fig = treemap(
    labels = labels,
    parents = parents,
    values = values,
    marker_colorscale = "Blues",
    textinfo = "label+value+percent parent+percent entry+percent root",
    marker = attr(
        line = attr(width = 1, color = "black",
        )
    )
)

p = plot(fig)

savefig(p, "treemap.png")
img = load("treemap.png")