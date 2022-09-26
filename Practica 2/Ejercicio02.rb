def ordenar(*args)
    return args.sort
end

puts ordenar(1, 4, 6, 2, 3, 5, 0, 10, 9) # => [0, 1, 2, 3, 4, 5, 6, 9, 10]