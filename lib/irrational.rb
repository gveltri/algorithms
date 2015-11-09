class Irrational

  def self.square_root_of(target,depth)
    target = target.to_f
    number = 0.0
    while number**2 < target
      number+=1.0
      puts number
    end

    number-= 1.0
    exponent = 0
    
    while exponent < depth
      delta = 1.0/(2**exponent)
      if (number + delta)**2 < target
        number += delta
        puts "#{number} + #{delta} is less than the target"
      else
        puts "#{number} + #{delta} is greater than the target"
      end
      exponent+=1
    end

    puts number
    return number
  end

end

Irrational.square_root_of(2,100)
puts Math.sqrt(2)
