def fibonacci_series(limit):
    a, b = 0, 1
    while a <= limit:
        print(a, end=" ")
        a, b = b, a + b


if __name__ == "__main__":
    limit_number = int(input("Enter the limit for the Fibonacci series: "))
    fibonacci_series(limit_number)
