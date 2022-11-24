dictionary =["below","down", "do","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(text,dictionary)
    #create new empty hash variable
    result = {} #or Hash.new(0)
    #lowercase word 
    lowered_text = text.downcase

    # iterate over arr (dictionary) of words
    dictionary.each do |word|
        #create variable that will count words that match the scanned word(s) (string(s)) 
        matches = lowered_text.scan(word).length
        #create new key/value pair containing word and number of times found
        result[word] = matches unless matches == 0
    end
    #return the result
    p result
end

sub_strings('own', dictionary)
