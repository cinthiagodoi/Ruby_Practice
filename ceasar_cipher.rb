print "What's your text? \n"
str = gets.chomp.downcase
def ceaser_cipher(str)
  a = ("a".."z").to_a
  str.split("").map{|c| next c if c == ' '; a.rotate(a.find_index(c) + 5).first}.join('')
end
p ceaser_cipher(str)


  
  

   

  