def substrs(words, dictionary)
  found = {}
  dictionary.each do |substr|
    ocurrences = words.scan(/#{substr}/i).length
    found[substr] = ocurrences unless ocurrences == 0
  end
  found
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrs("belowlow", dictionary)

puts substrs("Howdy partner, sit down! How's it going?", dictionary)
