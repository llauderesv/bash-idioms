def fibonacci(n):
    # Initialize a list to store Fibonacci numbers
    fib = [0] * (n + 1)
    
    # Base cases
    fib[0] = 0
    fib[1] = 1
    
    # Build up the solution by using previously calculated values
    for i in range(2, n + 1):
        fib[i] = fib[i - 1] + fib[i - 2]
    
    # Return the n-th Fibonacci number
    return fib[n]

# Example: Find the 10th Fibonacci number
print(fibonacci(10))  # Output: 55