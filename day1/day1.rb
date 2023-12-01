path = "day1\\input1.txt"
result = 0

File.open(path, "r") do |file|
    file.each_line do |line|
        first_digit = "-1"
        last_digit = "-1"

        line.each_char do |char|
            if char.match?(/\d/)
                if first_digit == "-1"
                    first_digit = char
                else
                    last_digit = char
                end
            end
        end

        char_values = ""

        if last_digit == "-1"
            char_values = first_digit + first_digit
            result += char_values.to_i
        else
            char_values = first_digit + last_digit
            result += char_values.to_i
        end
    end
end

puts result