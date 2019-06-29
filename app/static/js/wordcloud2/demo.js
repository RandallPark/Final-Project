// Don't forget to load dom. Otherwise, maketextCloud function might fail to work.
$().ready(function() {

    // Make sure the format => [ {"text": String, "value": Number}, ..., ... ]
    // Value should be greater than 0
    data = [
        { "text": "Legal", "value": 80 },
        { "text": "President", "value": 18 },
        { "text": "Austrian", "value": 2 },
        { "text": "neo-Nazi", "value": 6 },
        { "text": "fringe", "value": 2 },
        { "text": "Remember", "value": 6 },
        { "text": "Bush", "value": 2 },
        { "text": "trip", "value": 18 },
        { "text": "last", "value": 18 }
    ]

    // you can use own color converting function if you want
    var my_color = d3.scale.category20();
    var href_func = function(d) { return "#" + d.text }

    // maketextCloud(data, css selector that you wanna insert in, scale of svg, class name of svg, font-family, rotate or not, your color converting function)
    makeWordCloud(data, href_func, "div.my_svg", 200, "my_svg", "Helvetica", false, my_color)

    // [ svg class, font-family, rotate texts or not, color function ] are optional.
    // the simplest way => window.makeWordCloud(data, "body", 500)

})

// $('#my_svg').appendTo('#my_svg');