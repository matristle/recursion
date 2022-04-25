def fibs(number)
    array = [0,1]

    if number.negative?
        return "Your argument is not a positive number"
    elsif !(number.is_a? Integer)
        return "Your argument is not an integer"
    else
        if number == 0
            return array[0]
        elsif number == 1
            return array[0..1] # this seems unnecessary but I intend to be explicit
        else
            index = 2
            until array.length == number do 
                array << array[index - 2] + array[index - 1]
                index += 1
            end

            return array
        end
    end
end

#------------------------------------------------------------------------------

20.times do |number|
    p fibs(number)
end

p fibs(-1)
p fibs(2.4)


