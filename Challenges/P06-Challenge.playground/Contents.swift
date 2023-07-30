func loveCalculator() {
   let loveScore = Int.random(in: 0...100)
    
    if loveScore == 100 {
        print("You love each other like Kanye loves Kanye")
    } else {
        print("You'll be forever alone")
    }
}

loveCalculator()


func loveCalculatorModify() {
   let loveScore = Int.random(in: 0...100)
    
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye")
        //~= or loveScore >= 40 && loveScore <= 80
    } else if 40...80 ~= loveScore {
        print("You go together like Coke and Mentos")
    } else {
        print("You'll be forever alone")
    }
}

loveCalculatorModify()
