class Array
    def randomly
        self.each{ | elemento |
            yield elemento
        }
    end
end

[1, 2, 3, 4].randomly { |x| puts x + 1 }