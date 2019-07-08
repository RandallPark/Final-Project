var freqData = [{
        Politician: "AOC",
        tweets: {
            negative: 140.81600000000003,
            positive: 267.8120000000001
        },
        Word_Count: 74520
    },
    {
        Politician: "Obama",
        tweets: {
            negative: 125.16500000000002,
            positive: 402.6519999999996
        },
        Word_Count: 48268
    },
    {
        Politician: "Bernie",
        tweets: {
            negative: 416.9560000000002,
            positive: 588.0500000000004
        },
        Word_Count: 151400
    },
    {
        Politician: "Trump",
        tweets: {
            negative: 445.8899999999998,
            positive: 785.6200000000001
        },
        Word_Count: 155478
    },
    {
        Politician: "Biden",
        tweets: {
            negative: 161.24999999999986,
            positive: 433.1960000000005
        },
        Word_Count: 76242
    },
    {
        Politician: "Liz Cheney",
        tweets: {
            negative: 226.95800000000006,
            positive: 592.3799999999998
        },
        Word_Count: 61020
    },
    {
        Politician: "Rubio",
        tweets: {
            negative: 550.328,
            positive: 641.5360000000002
        },
        Word_Count: 213902
    },
    {
        Politician: "Pence",
        tweets: {
            negative: 87.16800000000002,
            positive: 652.6100000000004
        },
        Word_Count: 64116
    },
    {
        Politician: "Warren",
        tweets: {
            negative: 620.0860000000006,
            positive: 641.2539999999998
        },
        Word_Count: 183896
    },
    {
        Politician: "Cruz",
        tweets: {
            negative: 109.62999999999998,
            positive: 419.59399999999977
        },
        Word_Count: 73786
    },
    {
        Politician: "SDC",
        tweets: {
            negative: 112.00400000000009,
            positive: 142.00999999999993
        },
        Word_Count: 46372
    },
    {
        Politician: "SRC",
        tweets: {
            negative: 133.814,
            positive: 558.6399999999999
        },
        Word_Count: 89224
    },
    {
        Politician: "HDC",
        tweets: {
            negative: 186.8959999999997,
            positive: 317.57999999999953
        },
        Word_Count: 66690
    },
    {
        Politician: "GOP",
        tweets: {
            negative: 123.70000000000006,
            positive: 334.05600000000015
        },
        Word_Count: 59712
    },
]

// var freqData = [{
//         Politician: "Bernie Sanders",
//         Unnamed: 2300.5,
//         Word_Count: 33.88540734109221,
//         tweets: {
//             negative: 0.09332050134288276,
//             positive: 0.13161369740376017,
//         },
//         neutral: 0.7750671441360805,
//         polarity: 0.13855640107430636
//     },
//     {
//         Politician: "Donald Trump",
//         Unnamed: 5651.5,
//         Word_Count: 32.581307627829005,
//         tweets: {
//             negative: 0.09343880972338647,
//             positive: 0.16463118189438414,
//         },
//         polarity: 0.16611106454316865
//     },
//     {
//         Politician: "Joe Biden",
//         Unnamed: 807.5,
//         Word_Count: 23.589727722772277,
//         tweets: {
//             negative: 0.04989170792079208,
//             positive: 0.13403341584158412,
//         },
//         polarity: 0.22283712871287206
//     },
//     {
//         Politician: "Liz Cheney",
//         Unnamed: 1502.5,
//         Word_Count: 19.310126582278482,
//         tweets: {
//             negative: 0.07182215189873416,
//             positive: 0.18746202531645575,
//         },
//         polarity: 0.24978151898734208
//     },
//     {
//         Politician: "Marco Rubio",
//         Unnamed: 2980.5,
//         Word_Count: 36.18098782138024,
//         tweets: {
//             negative: 0.09308660351826799,
//             positive: 0.1085142083897156,
//         },
//         polarity: 0.02346904600811907
//     },
//     {
//         Politician: "Mike Pence",
//         Unnamed: 4458.5,
//         Word_Count: 36.18098782138024,
//         tweets: {
//             negative: 0.09308660351826799,
//             positive: 0.1085142083897156,
//         },
//         polarity: 0.02346904600811907
//     },
//     {
//         Politician: "Senator Warren",
//         Unnamed: 4526.5,
//         Word_Count: 30.38598810310641,
//         tweets: {
//             negative: 0.10245968274950398,
//             positive: 0.10595736946463974,
//         },
//         polarity: 0.0007567415730337269
//     },
//     {
//         Politician: "Ted Cruz",
//         Unnamed: 7223.5,
//         Word_Count: 29.373407643312103,
//         tweets: {
//             negative: 0.043538522637013514,
//             positive: 0.16663780778395546,
//         },
//         polarity: 0.274003335980937
//     }
// ]

dashboard('#dashboard', freqData);