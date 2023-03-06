class Age
  
  attr_accessor :name
  
  @@year = 2023
  
  def age(birthyear)
    p name, @@year - birthyear
  end

end

girl1 = Age.new
girl1.name = "Hana"
girl1.age(2016)


class Age
  
  attr_accessor :name
  
  attr_accessor :birthyear
  
  @@year = 2023
  
  def age
    p name, @@year - birthyear
  end

end

girl1 = Age.new
girl1.name = "Hana"
girl1.birthyear = 2016
girl1.age
girl2 = Age.new
girl2.name = "Rin"
girl2.birthyear = 2013
girl2.age


class Avg
  
  attr_accessor :name
  attr_accessor :math
  attr_accessor :english
 
 def call
  puts "私の名前は" + name + "です"
 end
 def avg
   puts (math + english) / 2
 end
  
end

student1 = Avg.new
student1.name = "Taro"
student1.math = 80
student1.english = 60
student1.call
student1.avg

class Pass
  
  attr_accessor :name
  attr_accessor :math
  attr_accessor :english

def if_pass
  if (math + english) >= 120
    puts "合格です！！"
  elsif (math + english) < 60
    puts "頑張りましょう"
  else 
    puts "まずますです"
  end
end
  
end 

person1 = Pass.new
person1.name = "太郎"
person1.math = 20
person1.english = 30
puts person1.name + "さん"
person1.if_pass


class Pass
  
  attr_accessor :name
  attr_accessor :math
  attr_accessor :english

def if_pass
  if (math + english) >= 120
    puts "合格です！！"
  elsif (math + english) < 60
    puts "頑張りましょう"
  else 
    puts "まずますです"
  end
end
  
end 

person1 = Pass.new
person1.name = "太郎"
person1.math = 30 
person1.english = 40 
puts person1.name + "さん"
person1.if_pass


#子ども料金　500円、　大人料金　1000円、　高齢者料金　800円の合計の料金を出す。
class Total
  
  attr_accessor :child_number
  attr_accessor :adult_number
  attr_accessor :eldery_number

 def sum
   p 500 * child_number + 1000 * adult_number + 800 * eldery_number
 end
    
end

group1 = Total.new
group1.child_number = 2
group1.adult_number = 2
group1.eldery_number = 0
group1.sum

