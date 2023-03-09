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
   super(name, birth_year)
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


#はらぺこあおむし
class Catapillar
  attr_accessor :day
  attr_accessor :fruit
  attr_accessor :number

  def initialize(day, fruit, number)
    self.day = day
    self.fruit = fruit
    self.number = number
  end
  def eat
    puts "#{self.day}、#{self.fruit}を#{self.number}食べました。それでもおなかはぺっこぺこ。"
  end
end

day1 = Catapillar.new("月曜日","りんご","ひとつ")
day1.eat
day2 = Catapillar.new("火曜日","なし","ふたつ")
day2.eat
day3 = Catapillar.new("水曜日","すもも","みっつ")
day3.eat
day4 = Catapillar.new("木曜日","いちご","よっつ")
day4.eat
day5 = Catapillar.new("金曜日","オレンジ","いつつ")
day5.eat


#大きなかぶ
class Grandma
  attr_accessor :first
  attr_accessor :second
  attr_accessor :but
  def initialize(first,second,but)
    self.first = first
    self.second = second
    self.but = but
  end
  def call
    puts "#{first}は#{second}をよんできました。"
  end
  def grandpa
    puts "かぶを#{first}が引っぱって、#{first}を#{second}が引っぱって、"
  end
  def didnot
    puts "「うんとこしょ、どっこいしょ」#{but}、かぶはぬけません。"
  end
end

character1 = Grandma.new("おじいさん","おばあさん","それでも")
character1.call
character1.grandpa
character1.didnot

class Grand_daughter < Grandma
  attr_accessor :first
  attr_accessor :second
  attr_accessor :third
  attr_accessor :but
  def initialize(first,second,third,but)
    super(first,second,but)
    self.third = third
  end
  def call
    puts "#{second}は#{third}をよんできました。"
  end
  def grandma
    puts "#{second}を#{third}が引っぱって、"
  end
end

character2 = Grand_daughter.new("おじいさん","おばあさん","まごむすめ","やっぱり")
character2.call
character2.grandpa
character2.grandma
character2.didnot

class Dog < Grand_daughter
 attr_accessor :first
 attr_accessor :second
 attr_accessor :third
 attr_accessor :forth
 attr_accessor :but
 
 def initialize(first,second,third,forth,but)
   super(first,second,third,but)
   self.forth = forth
 end
 def call
    puts "#{third}は#{forth}をよんできました。"
  end
 def grand_daughter
   puts "#{third}を#{forth}が引っぱって、"
 end
end

character3 = Dog.new("おじいさん","おばあさん","まごむすめ","犬","まだまだ")
character3.call
character3.grandpa
character3.grandma
character3.grand_daughter
character3.didnot

class Cat < Dog
 attr_accessor :first
 attr_accessor :second
 attr_accessor :third
 attr_accessor :forth
 attr_accessor :fifth
 attr_accessor :but
 
 def initialize(first,second,third,forth,fifth,but)
   super(first,second,third,forth,but)
   self.fifth = fifth
   def call
    puts "#{forth}は#{fifth}をよんできました。"
  end
   def dog
     puts "#{forth}を#{fifth}が引っぱって、"
   end
 end
end

character4 = Cat.new("おじいさん","おばあさん","まごむすめ","犬","ねこ","なかなか")
character4.call
character4.grandpa
character4.grandma
character4.grand_daughter
character4.dog
character4.didnot

class Mouse < Cat
 attr_accessor :first
 attr_accessor :second
 attr_accessor :third
 attr_accessor :forth
 attr_accessor :fifth
 attr_accessor :sixth

 def initialize(first,second,third,forth,fifth,sixth,but)
  super(first,second,third,forth,fifth,but)
  self.sixth = sixth
 end
 def call
    puts "#{fifth}は#{sixth}をよんできました。"
  end
 def cat
   puts "#{fifth}を#{sixth}が引っぱって、"
 end
 def didnot
    puts "「うんとこしょ、どっこいしょ」「うんとこしょ、どっこいしょ」（すっぽーん！）とうとう、かぶは抜けました。"
 end
end

character5 = Mouse.new("おじいさん","おばあさん","まごむすめ","犬","ねこ","ねずみ","-")
character5.call
character5.grandpa
character5.grandma
character5.grand_daughter
character5.dog
character5.cat
character5.didnot


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