// Assignment 1

fun main() {

    println(lottery(43, 43))
    println(lottery(43, 34))
    println(lottery(40, 34))
    println(lottery(43, 72))
}

fun lottery(winningNumber: Int, input: Int): String {

    var output = "";

    if (input == null || input < 10 || input > 99) {
        output = "Please enter a valid two-digit number."
    } else {
        val winningNumberString = winningNumber.toString()
        val inputString = input.toString()

        val firstNumber = winningNumberString[0]
        val secondNumber = winningNumberString[1]
        val firstNumberInput = inputString[0]
        val secondNumberInput = inputString[1]

        output = when {
            input == winningNumber -> "Congratulations, you have won \$10,000"
            firstNumber == secondNumberInput && secondNumber == firstNumberInput -> "Congratulations, you have won \$3,000"
            firstNumber == firstNumberInput || secondNumber == secondNumberInput -> "Congratulations, you have won \$1,000"
            firstNumber == secondNumberInput || secondNumber == firstNumberInput -> "Congratulations, you have won \$1,000"
            else -> "Sorry, no match."
        }
    }

    return output
}
