# This is the main algorithm solution for the Luhn challenge in the coding bootcamp 2019

module Luhn
    def self.is_valid?(number)
        #write the solution here

        puts "New Test With Number #{number}"
        numarray = []
        numarray = number.digits
        length = numarray.length

# In this loop I will set up the array with the values that come from testing for a multiple of the even index digits
# breater than or equal to 10. If they are then I subtract 9 from that digit.
        i = length - 1
        count = 0
        while i > 0
            if i % 2 != 0
                puts "The even digits are #{numarray[i]}"
                testval = numarray[i] + numarray[i]
                puts "The digit doubled is #{testval}"
                numarray[i] = testval
                if testval >= 10
                    numarray[i] = testval - 9
                    puts "Numarray - 9 = #{numarray[i]}"
                end
            end
 #           puts numarray[i]
            i -= 1
            count += 1
        end

        puts "The current value of the numarray is #{numarray}"
# In this loop I will sum all the digits
        arrsum = numarray.sum
        puts arrsum

        if arrsum % 10 == 0
            return true
        end
    else
        return false
    end
end