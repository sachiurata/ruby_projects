#年齢
class Age
  attr_accessor :name
  attr_accessor :birth_year
  
  def initialize(name,birth_year)
   self.name = name
   self.birth_year = birth_year
  end
  
  def say_age
   puts "#{self.name}さんは今年数え" + (2023 - self.birth_year + 1).to_s + "歳です。"
  end  
  
end

taro = Age.new("太郎", 1982)
taro.say_age


#厄年
class Yakudoshi < Age

 attr_accessor :sex

 def initialize(name,birth_year,sex)
   self.name = name
   self.birth_year = birth_year
   self.sex = sex
 end
 
 def yakudoshi
   if self.sex == "male" 
     if self.birth_year == 1999 || self.birth_year == 1982 || self.birth_year == 1963
      puts "#{self.name}さんは今年厄年です。"
     else
      puts "#{self.name}さんは今年厄年ではありません。" 
     end
   else
     if self.birth_year == 2005 || self.birth_year == 1991 || self.birth_year == 1987 || self.birth_year == 1963
      puts "#{self.name}さんは今年厄年です。"
     else
      puts "#{self.name}さんは今年厄年ではありません。" 
     end
   end
 end
 
end

taro = Yakudoshi.new("太郎", 1992, "male")
taro.say_age
taro.yakudoshi
hanako = Yakudoshi.new("花子",1990,"female")
hanako.say_age
hanako.yakudoshi

#じゃんけん
class Win
  attr_accessor :hand
  
  def initialize(hand)
    self.hand = hand
  end
  
  def win(another,the_other)
    puts "#{self.hand}は#{another}に勝ち、#{another}は#{the_other}に勝ちます。"
  end
end

stone = Win.new("グー")
stone.win("チョキ","パー")
scissors = Win.new("チョキ")
scissors.win("パー","グー")
paper = Win.new("パー")
paper.win("グー","チョキ")

#BMI
class Bmi
  attr_accessor :name
  attr_accessor :freind
  attr_accessor :weight
  attr_accessor :height
  
  def initialize(name, freind, weight, height)
    self.name = name
    self.freind = freind
    self.weight = weight
    self.height = height
  end
  
  def bmi
    puts "#{self.name}さんのBMIは" + (self.weight/self.height/self.height).to_s + "です。"
  end
  
  def say
    if self.weight/self.height/self.height < 18.5
      puts "#{self.freind}さんは「#{self.name}さん、痩せ過ぎですよ」と言いました。"
    elsif self.weight/self.height/self.height >= 25
      puts "#{self.freind}さんは「#{self.name}さん、ちょっと太りすぎてない？」と言いました。"
    else
      puts "#{self.freind}さんは「#{self.name}さんは健康的な体型ね」と言いました。"
    end
  end
  
end

yamada = Bmi.new("山田", "鈴木", 80, 1.6)
yamada.bmi
yamada.say
suzuki = Bmi.new("鈴木", "田中", 45, 1.55)
suzuki.bmi
suzuki.say


#メンタリング3/6
class People
  attr_accessor :name
  def initialize(name)
    self.name = name
   puts "Peopleのインスタンスが作られました"
  end
  def self.introduce
    puts "私はPeopleクラスです"
  end
  def say
    puts "私の名前は#{self.name}です"
  end
  
  def talk(other)
    puts "#{self.name}が#{other.name}に話しかける"
  end

end

class ChildPeople < People
  attr_accessor :age
  def initialize(name,age)
    #self.name = name
    super(name)
    self.age = age
  end
  def introduce
    puts "私の名前は#{self.name}、年齢は#{self.age}です"
  end
end

People.introduce
ChildPeople.introduce
sachi = People.new("さち")
sachi.say
shima = People.new("しま")
puts shima.name
shima.say
sachi.talk(shima)
shima.talk(sachi)
#people.name = "さち"
#p shima
tanaka = ChildPeople.new("田中", 20)
tanaka.introduce