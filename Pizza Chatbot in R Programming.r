#Create pizza ordering chatbot
chatbot <- function() {
  ## Welcome message & name
  print("Hello, welcome to the pizza restaurant! ")
  user <- readline("What's your name: ")
  print(paste("What would you like to eat", user, "?"))

  
  #Annouce variables
  pizza_price <- 0
  pizza_menus <- data.frame( 
    pizza_menu = c("[A] hawaiian pizza", "[B] pepperoni pizza", "[C] cheese pizza"),
    pizza_price = c("199 THB", "249 THB", "249 THB")
  )
  
  print(pizza_menus)
  print("Please choose your order")
  order_pizza <- readline("")
  
  ## Menu selection based on choice
  pizza_name <- ""
  if (order_pizza == "A") {
    pizza_price <- pizza_price + 199
    pizza_name <- paste("hawaiian pizza")
  } else if (order_pizza == "B") {
    pizza_price <- pizza_price + 249
    pizza_name <- paste("pepperoni pizza")
  } else if (order_pizza == "C") {
    pizza_price <- pizza_price + 249
    pizza_name <- paste("cheese pizza")
  } else {
    print("Invalid input. Please choose A, B, or C.")
    chatbot() # Restart the function if invalid input
  }
  
  print(pizza_name)
  cat(pizza_price, " THB\n")
  print("Thank you")
}

