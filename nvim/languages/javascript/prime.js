function isPrime(num) {
  if (num <= 1) return false;
  if (num <= 3) return true;

  // Check for divisible by 2 or 3
  if (num % 2 === 0 || num % 3 === 0) return false;

  for (let i = 5; i * i <= num; i += 6) {
    if (num % i === 0 || num % (i + 2) === 0) return false;
  }

  return true;
}

function printPrimes(n) {
  for (let i = 2; i <= n; i++) {
    if (isPrime(i)) {
      console.log(i);
    }
  }
}

// Change this value to print primes up to a different number
const maxNumber = 50;
printPrimes(maxNumber);
