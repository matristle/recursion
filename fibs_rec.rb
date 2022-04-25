def fibs_rec(number, array = [0,1])
    if number == 0
        return [0]
    elsif number == 1
        return array
    else
        array << array[-2] + array[-1]
        fibs_rec(number - 1, array)
    end
end

#------------------------------------------------------------------------------

p fibs_rec(8) # expected: [0, 1, 1, 2, 3, 5, 8, 13]

20.times do |number|
    p fibs_rec(number)
end

