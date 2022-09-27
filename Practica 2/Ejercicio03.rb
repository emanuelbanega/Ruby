def ordenar(*args)
    return args.sort
end

entrada = [10, 9, 1, 2, 3, 5, 7, 8]
puts ordenar(*entrada) # => [1, 2, 3, 5, 7, 8, 9, 10]