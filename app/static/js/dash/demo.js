var freqData = [{
        age_started: "Barak Obama",
        treatment_status: {
            "treatment_completed": 23371,
            "treatment_incomplete": 32410
        }
    },
    {
        age_started: "Donald Trump",
        treatment_status: {
            "treatment_completed": 82156,
            "treatment_incomplete": 114096
        }
    },
    {
        age_started: "Bernie Sanders",
        treatment_status: {
            "treatment_completed": 115029,
            "treatment_incomplete": 148584
        }
    },
    {
        age_started: "Alexandria Ocasio Cortez",
        treatment_status: {
            "treatment_completed": 80090,
            "treatment_incomplete": 108891
        }
    },
    {
        age_started: "Elizabeth Warren",
        treatment_status: {
            "treatment_completed": 50415,
            "treatment_incomplete": 74736
        }
    },
    {
        age_started: "Liz Cheney",
        treatment_status: {
            "treatment_completed": 33048,
            "treatment_incomplete": 55144
        }
    },
    {
        age_started: "Ted Cruz",
        treatment_status: {
            "treatment_completed": 38677,
            "treatment_incomplete": 63039
        }
    },
    {
        age_started: "Mitch McConnell",
        treatment_status: {
            "treatment_completed": 9000,
            "treatment_incomplete": 19889
        }
    }
]

dashboard('#dashboard', freqData);