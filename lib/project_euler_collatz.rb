def even_next(n)
    n / 2
end

def odd_next(n)
    (3 * n) + 1
end

def next_value(n)
    if n % 2 == 0
        return even_next(n)
    else
        return odd_next(n)
    end
end

def collatz(n)
    sequence = [n]

    while n != 1
        n = next_value(n)
        sequence.push(n)
    end

    sequence
end

def longest_collatz
    max_starting_num = 0
    max_length = 0

    (1..1000000).each do |number|
        seq = collatz(number)

        if seq.length > max_length
            max_length = seq.length
            max_starting_num = seq.first
        end
    end
    max_starting_num
end