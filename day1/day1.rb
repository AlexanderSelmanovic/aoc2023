path = "day1\\input1.txt"
total_time = 0

10000.times do
    run_time = 0
    start_time = Time.now

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

    end_time = Time.now
    run_time = end_time - start_time
    total_time += run_time
end

average_time = total_time / 10000

puts "Average time per run"
puts average_time