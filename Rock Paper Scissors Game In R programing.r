# Create Rock, Paper, Scissors Game in R Programming Language

game <- function() {
    print("Hello, welcome to the game!")
    user <- readline("What's your name: ")
    print("Let's play game!")

    user_score <- 0
    comp_score <- 0
    hands <- c("hammer", "scissor", "paper")

    for (round in 1:5) {
    # print round number
    print(paste("Round:", round))

    # print comp_hand
    comp_hand <- sample(hands,1)
    print(paste("Computer chose:", comp_hand))


    # print user_hand
    user_hand <- readline("Choose your hand: scissor, paper, hammer | quit ")
    print(paste("User chose:", user_hand))

    if (user_hand == "quit") {
        break
    }

    if (comp_hand == "hammer" & user_hand == "hammer") {
        comp_score & user_score + 0 }
    else if (comp_hand == "hammer" & user_hand == "scissor") {
        comp_score <- comp_score + 1 }
    else if (comp_hand == "hammer" & user_hand == "paper") {
        user_score <- user_score + 1 }
    else if (comp_hand == "paper" & user_hand == "paper") {
        comp_score & user_score + 0 }
    else if (comp_hand == "paper" & user_hand == "hammer") {
        comp_score <- comp_score + 1 }
    else if (comp_hand == "paper" & user_hand == "scissor") {
        user_score <- user_score + 1 }
    else if (comp_hand == "scissor" & user_hand == "scissor") {
        comp_score & user_score + 0}
    else if (comp_hand == "scissor" & user_hand == "paper") {
        comp_score <- comp_score + 1 }
    else if (comp_hand == "scissor" & user_hand == "hammer") {
        user_score <- user_score + 1 }
    else if (user_hand == "quit") {
        user_score & comp_score + 0 }
    }

    # print score
    scores <- list(computer = comp_score , user = user_score)
    return(scores)
}
