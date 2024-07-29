fun main() {
    println("What is 5 + 9?")
    var userInput: Int? = readLine()?.toIntOrNull()
    var userInput2: Int? = null

    while (userInput != 14) {
        println("Wrong answer, please try again, what is 9+5")
        userInput2 = readLine()?.toIntOrNull()
        userInput = userInput2 // Update userInput with the new input
    }

    println("You have got it!")
}