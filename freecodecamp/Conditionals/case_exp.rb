# Using a case expression

## used when comparing a single variable to many values

def get_day_name(day)
    case day
    when "mon" # day == "mon"
        return "Monday"
    when "tue", "tues"
        return "Tuesday"
    when "wed"
        return "Wednesday"
    when "thu", "thur", "thurs"
        return "Thursday"
    when "fri"
        return "Friday"
    when "sat"
        return "Saturday"
    when "sun"
        return "Sunday"
    else # equivalent to "default" in other PLs
        return "Invalid abbreviation"
    end
end

puts get_day_name("thur")
