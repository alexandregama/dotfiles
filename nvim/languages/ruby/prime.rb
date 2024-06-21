def prime_numbers_up_to(max)
  primes = []
  (2..max).each do |num|
    is_prime = true
    (2..Math.sqrt(num)).each do |i|
      if num % i == 0
        is_prime = false
        break
      end
    end
    primes << num if is_prime
  end
  primes
end

puts "Enter a number:"
max = gets.to_i
prime_numbers = prime_numbers_up_to(max)
puts "Prime numbers up to #{max}:"
puts prime_numbers.join(', ')
