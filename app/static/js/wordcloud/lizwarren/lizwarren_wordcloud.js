function makeWordCloud(data, href_func, parent_elem, svgscale, svg_class, font, rotate_word, my_colors) {

    var color_converter = null
    if (my_colors) { color_converter = my_colors } else { color_converter = d3.scale.category20() }

    function draw(words) {

        d3.select(parent_elem).append("svg")
            .attr("width", svgscale)
            .attr("height", svgscale)
            .attr("class", svg_class)
            .attr("class", "graph-svg-component")
            .append("g")
            .attr("transform", "translate(" + svgscale / 2 + "," + svgscale / 2 + ")")
            .selectAll("a")
            .data(words)
            .enter()
            .append("a")
            .attr("xlink:href", href_func)
            .text(function(d) { return d.text; })
            .append("text")
            .style("font-size", function(d) { return d.size + "px"; })
            .style("font-family", font)
            .style("fill", function(d, i) { return color_converter(i); })
            .attr("text-anchor", "middle")
            .attr("transform", function(d) {
                return "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")";
            })
            .text(function(d) { return d.text; })
    }

    // if (svg_class) { d3.select("." + svg_class).remove() } else { d3.select("svg").remove() }

    var data_max = d3.max(data, function(d) { return d.value });
    var sizeScale = d3.scale.linear().domain([0, data_max]).range([0, 1])

    data = data.map(function(d) {
        return { text: d.text, size: 5 + sizeScale(d.value) * 30 };
    })

    var layout = d3.layout.cloud().size([svgscale, svgscale])
        .words(data)
        .padding(5)
        .fontSize(function(d) { return d.size; })

    // 単語を回転させるか否か
    if (!rotate_word) { layout.rotate(function() { return ~~(Math.random() * 2.5) * 20; }) }

    layout
        .on("end", draw)
        .start();
}