fun main() {
    print("Enter Radius of the circle: ")
    val radius: Int? = readLine()?.toIntOrNull()

    if (radius == null || radius <= 0) {
        println("Please enter a valid positive number for the radius.")
    } else {
        val area = 3.14159 * radius * radius
        println("The area of the circle is: $area")
    }
}