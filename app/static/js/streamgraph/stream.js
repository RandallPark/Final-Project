// set the dimensions and margins of the graph
var margin = { top: 20, right: 30, bottom: 30, left: 60 },
    width = 460 - margin.left - margin.right,
    height = 400 - margin.top - margin.bottom;

// append the svg object to the body of the page
var svg = d3.select("#my_dataviz")
    .append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
    .append("g")
    .attr("transform",
        "translate(" + margin.left + "," + margin.top + ")");


d3.csv('static/js/streamgraph/polarity_stream_data.csv', function(error, data) {

    console.log(data);

    // this parses the data into something D3 can read
    data.forEach(function(d) {
        console.log("d.key: ", d.year);
        let nums = d.year.split('-');
        d.year = (+nums[0] + (+nums[1] - 1) / 12)
        console.log(`Set year to ${d.year}`);
        d.Bernie_Sanders = +d.Bernie_Sanders,
            d.Donald_Trump = +d.Donald_Trump,
            d.House_of_Democrats = +d.House_of_Democrats,
            d.House_of_Republican = +d.House_of_Republican,
            d.Joe_Biden = +d.Joe_Biden,
            d.Liz_Cheney = +d.Liz_Cheney,
            d.Marco_Rubio = +d.Marco_Rubio,
            d.Mike_Pence = +d.Mike_Pence,
            d.Senate_of_Democrats = +d.Senate_of_Democrats,
            d.Senate_of_Republican = +d.Senate_of_Republican,
            d.Senator_Warren = +d.Senator_Warren,
            d.Ted_Cruz = +d.Ted_Cruz
            // if (+d[key] === +d[key]) {
            //     d[key] = +d[key]
    });



    console.log(data)
        // List of groups = header of the csv files
    var keys = data.columns.slice(0)
    console.log(`Keys: ${keys}`)


    // Add X axis
    var x = d3.scaleLinear()
        .domain(d3.extent(data, function(d) { return d.year; }))
        .range([0, width]);
    svg.append("g")
        .attr("transform", "translate(0," + height + ")")
        .call(d3.axisBottom(x).ticks(5));

    // Add Y axis
    var y = d3.scaleLinear()
        .domain([-1100, 1100])
        .range([height, 0]);
    svg.append("g")
        .call(d3.axisLeft(y));

    // color palette
    var color = d3.scaleOrdinal()
        .domain(keys)
        .range(['#e41a1c', '#377eb8', '#4daf4a', '#984ea3', '#ff7f00', '#ffff33', '#a65628', '#f781bf', '#e41a1c', '#377eb8', '#4daf4a'])

    console.log(`Color for 'bernie': ${color('Bernie_Sanders')}`);

    //stack the data?
    var stackedData = d3.stack()
        .offset(d3.stackOffsetSilhouette)
        .keys(keys)
        (data)

    console.log(`stackedData: ${stackedData}`);

    // Show the areas
    svg
        .selectAll("mylayers")
        .data(stackedData)
        .enter()
        .append("path")
        .style("fill", function(d) { return color(d.key); })
        .attr("d", d3.area()
            .x(function(d, i) { return x(d.data.year); })
            .y0(function(d) { return y(d[0]); })
            .y1(function(d) { return y(d[1]); })
        )

})