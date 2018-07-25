def even_next(n)
    n / 2
end

def odd_next(n)
    3 * n + 1
end

def next_value(n)
    n % 2 == 0 ? even_next(n) : odd_next(n)
end

def collatz(n)
    arr = [n]
    while n != 1
        n = next_value(n)
        arr.push(n)
    end
    arr
end

def longest_collatz
    range = (1..1000000)
    maxlength = 0
    longest = 0
    range.each do |n|
        length = collatz(n).length
        if length > maxlength 
            longest = n
            maxlength = length
        end
    end
    longest
end