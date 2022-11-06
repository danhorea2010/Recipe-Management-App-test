class Api::V1::IngredientsController < Api::V1::ApiController
    def index
        render json: [{
            name: "Test ingredient 1",
            calories: "150",
            macros: [
                protein: 5,
                fat: 3,
                carbs: 10
            ],
            type: "Vegan",
            average_price: 10 

        }, 
        {
            name: "Test ingredient 2",
            calories: "250",
            macros: [
                protein: 20,
                fat: 9,
                carbs: 2
            ],
            type: "Meat",
            average_price: 35 
        }    
    
    ]
    end
end
