def dictionary
    dict={"hello" => "h",
    "to" =>"2", 
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=> "u",
    "at"=> "@", 
    "and"=> "&"
 }
end 

def word_substituter (string)
    words = string.split(" ")
    words.collect do |word|
    dictionary.collect do |k, v|
      if word.downcase == k 
        word.replace(v)
      end 
    end
  end 
  words.join(" ")
end 

def bulk_tweet_shortener(array)
    array.each do |string|
       puts word_substituter(string)
    end 
end 

def selective_tweet_shortener (string)
    if string.length>140
        word_substituter(string)
    else
        string
    end
end 

def shortened_tweet_truncator(string)
    if string.length>140
        return string[0...137]+"..."
    else
        string
    end
end

