require "stringer/version"

module Stringer
  class Error < StandardError; end
  # Your code goes here...
  def self.spacify *strings
  	string = ""
  	strings.each do |s|
  		if strings.index(s)==0
  			string += s
  		else
  			string += " " + s
  		end
  	end
  	string
  end

  def self.minify string, max_length
  	result = ""
  	if string.length>max_length
  		for i in 0...max_length
  			result += string[i]
  		end
  		result += "..."
  	else
  		return string
  	end
  	result
  end

  def self.replacify original, replaced, replacement
  	if original.include? replaced
  		original[replaced] = replacement
  	else
  		return original
  	end
  	original
  end

  def self.tokenize string
  	result = []
  	temp = ""
  	for i in 0...string.length
  		if string[i]!=" "
  			temp += string[i]
  		else
  			result.push(temp)
  			temp = ""
  		end
  	end
  	if temp
  		result.push(temp)
  	end
  	result
  end

  def self.removify original, string
  	if original.include? string+" "
  		original[string+" "] = ""
  	end
  	original
  end

end
