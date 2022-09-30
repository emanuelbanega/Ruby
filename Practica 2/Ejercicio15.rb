def da_nil?
    return yield.nil?
end

puts da_nil? { }