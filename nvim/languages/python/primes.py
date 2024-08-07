def primes(n: int):
    """Return a list of the first n primes."""
    sieve = [True] * n
    res = []
    x = 0

    # variable just to test the formatter
    j = [1, 2, 3]
    l = [1, 2, 3]

    for i in range(2, n):

        if sieve[i]:
            res.append(i)
            for j in range(i * i, n, i):

                sieve[j] = False

    return res


xs = primes(100)

print(xs)
