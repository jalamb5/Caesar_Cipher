def caesar_cipher(string, shift)
    # convert string chars to ascii num values
    original_string = string.bytes
    capitals = (65..90).to_a
    lowers = (97..122).to_a
    new_string = ''
    original_string.each do |value|
        # Shift caps/lowers, using the array index and then modulo by length to make sure the letter wrap from z-a. 
        if capitals.include?(value)
            new_string << capitals[((capitals.index(value) + shift) % capitals.length)].chr
        elsif lowers.include?(value)
            new_string << lowers[((lowers.index(value) + shift) % lowers.length)].chr
        # preserve all non-az chars
        else
            new_string << value.chr
        end
    end
    return new_string
end

puts "Enter your message: "
string = gets.chomp
puts "Value to shift by: "
shift = gets.chomp.to_i
puts "Your ciphered message is: "
puts caesar_cipher(string, shift)