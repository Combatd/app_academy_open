def sum_to(n)
    return nil if n < 1
    return n if n === 1
    n + sum_to(n - 1)
end