dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
def substrings (words, dictionary = [])
  result = []
  words.downcase.split(" ").each do |a|
    compare = dictionary.select {|str| a =~ /#{str}/} 
    result += compare 
  end
  result.tally
end 
  p substrings("below", dictionary)
  p substrings("Howdy partner, sit down! How's it going?", dictionary)

