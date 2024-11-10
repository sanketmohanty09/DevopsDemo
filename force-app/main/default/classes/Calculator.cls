public with sharing class Calculator {

    /**
     * Method to add two numbers
     * @param num1 First number
     * @param num2 Second number
     * @return Sum of num1 and num2
     */
    public static Decimal add(Decimal num1, Decimal num2) {
        return num1 + num2;
    }

    /**
     * Method to subtract two numbers
     * @param num1 First number
     * @param num2 Second number
     * @return Result of num1 minus num2
     */
    public static Decimal subtract(Decimal num1, Decimal num2) {
        return num1 - num2;
    }

    /**
     * Method to multiply two numbers
     * @param num1 First number
     * @param num2 Second number
     * @return Product of num1 and num2
     */
    public static Decimal multiply(Decimal num1, Decimal num2) {
        return num1 * num2;
    }

    /**
     * Method to divide two numbers
     * @param num1 Dividend
     * @param num2 Divisor
     * @return Quotient of num1 divided by num2
     * @throws DivideByZeroException if num2 is zero
     */
    public static Decimal divide(Decimal num1, Decimal num2) {
        if (num2 == 0) {
            throw new DivideByZeroException('Cannot divide by zero');
        }
        return num1 / num2;
    }

    /**
     * Method to calculate the power of a number
     * @param base The base number
     * @param exponent The exponent
     * @return Result of base raised to the power of exponent
     */
    public static Decimal power(Decimal base, Integer exponent) {
        return Math.pow(base, exponent);
    }

    /**
     * Method to calculate the square root of a number
     * @param num Number to calculate the square root for
     * @return Square root of num
     * @throws IllegalArgumentException if num is negative
     */
    public static Decimal sqrt(Decimal num) {
        if (num < 0) {
            throw new IllegalArgumentException('Cannot calculate the square root of a negative number');
        }
        return Math.sqrt(num);
    }
}
