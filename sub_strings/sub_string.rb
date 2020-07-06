dictionary = ["below","down","go","going","horn",
"how","howdy","it","i","low","own","part","partner"
,"sit"]

def sub_string(string, dictionary)
reply=[]
dictionary.map{|word| reply.push("#{word} =>
#{string.scan(word).length}")}
puts reply
end

sub_string("Howdy partner, sit down! How's it going?",
dictionary)