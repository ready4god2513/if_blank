require "if_blank/version"

class Object
  
  # Check to see if the current string
  # is empty (empty).  If it is, allow
  # its return value to be the result of a passed
  # in block, or else a replacement string
  # Converts self to a string.
  def if_blank?(replacement = "")
    return self unless self.tap do |obj| 
      obj.strip! if obj.respond_to?(:strip!)
    end.empty?
    
    block_given? ? yield : replacement
  end
  
end

class NilClass
  def empty?
    true
  end
end