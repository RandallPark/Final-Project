var freqData = [{
        Politician: "AOC",
        tweets: {
            positive: 1471,
            negative: 637
        },
        Word_Count: 74520
    },
    {
        Politician: "Obama",
        tweets: {
            positive: 2418,
            negative: 445
        },
        Word_Count: 48268
    },
    {
        Politician: "Bernie",
        tweets: {
            positive: 2868,
            negative: 1600
        },
        Word_Count: 151400
    },
    {
        Politician: "Trump",
        tweets: {
            positive: 3124,
            negative: 1648
        },
        Word_Count: 155478
    },
    {
        Politician: "Biden",
        tweets: {
            positive: 2584,
            negative: 648
        },
        Word_Count: 76242
    },
    {
        Politician: "Liz Cheney",
        tweets: {
            positive: 2362,
            negative: 798
        },
        Word_Count: 61020
    },
    {
        Politician: "Rubio",
        tweets: {
            positive: 3388,
            negative: 2524
        },
        Word_Count: 213902
    },
    {
        Politician: "Pence",
        tweets: {
            positive: 2840,
            negative: 286
        },
        Word_Count: 64116
    },
    {
        Politician: "Warren",
        tweets: {
            positive: 3364,
            negative: 2688
        },
        Word_Count: 183896
    },
    {
        Politician: "Cruz",
        tweets: {
            positive: 2092,
            negative: 426
        },
        Word_Count: 73786
    },
    {
        Politician: "SDC",
        tweets: {
            positive: 966,
            negative: 538
        },
        Word_Count: 46372
    },
    {
        Politician: "SRC",
        tweets: {
            positive: 3244,
            negative: 526
        },
        Word_Count: 89224
    },
    {
        Politician: "HDC",
        tweets: {
            positive: 2068,
            negative: 784
        },
        Word_Count: 66690
    },
    {
        Politician: "GOP",
        tweets: {
            positive: 1774,
            negative: 466
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