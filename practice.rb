puts "“Branding Engineer”"
puts "“Hello”"
puts "“HR Tech”"
puts "1"
puts "2"
puts "3"
puts "1"+"2"
puts 1+2
date = 20230302
p date
fruits = ["りんご","メロン","バナナ","イチゴ"]
puts fruits

fruits = { name: "りんご", price: 100 }
puts fruits[:name] 
puts fruits[:price] 
p "かたつむり".length
p "sachi".upcase
p "12".to_i
p "seori"[1]
p "hello,ruby,world".split(',')
p 2 + 3
p 123.to_s
p 99.next
p 100.pred
p 5.zero?
p 0.nonzero?
def print_apple
  p "りんご"
end
def print_orange
  p "オレンジ"
end
def print_hello
  p "こんにちは"
end
print_hello
def print_length
  p "チョコレート".length
end
def print_fruits(name)
  p name
end
print_fruits("りんご")
print_fruits("バナナ")
def print_sum(number)
  p number
end
print_sum(2+3)
def plus_one(number)
  p number.next
end
plus_one(99)

puts "初めてのRuby"
puts "Ruby"+"始めました"
p 3 + 3
p 3 - 3
p 3 * 3
p 3 / 3
num_array = [1,2,3,4]
p num_array[0]
fruits = { name: 'りんご', price: 100 }
p fruits[:name]
sachi = { name: 'さち', birthday: '1981年9月3日', blood_type:'A' , age: 41}
puts sachi[:name]
p sachi[:age] + 9
puts sachi[:name] + "は" + sachi[:birthday] + "生まれ"
pencil = { product: 'えんぴつ', price: '30' }
eraser = { product: '消しゴム', price: '100' }
puts pencil[:product] + "は" + pencil[:price] + "円です。"
puts eraser[:product] + "は" + eraser[:price] + "円です。"
def plus_ruby(name)
  puts name + "ruby"
end
plus_ruby("like")
plus_ruby("yhee")
def plus_iam(name)
  puts "私の名前は" + name + "です。"
end
 plus_iam("紗智")
 plus_iam("瀬織")

num = 3
if num > 0
  p "3は0以上です"
end
num = 3
if num * 3 > 5
  p "数字は５より大きいです"
end

length = 20
if length > 100
  p "長すぎます"
else
  p "大丈夫です"
end
age = 8
if age >= 65
  p "高齢者"
elsif age < 18
  p "未成年"
else 
  p "成人"
end

if false
  p '条件式は正しいです'
end
if 7 > 5
  p "条件式は正しいです"
end

age2 = 80
if age2 > 25 && age2 < 45
  p "働き盛り"
end

age3 = 34
if age3 < 18 || age3 > 65
  p "割引になります"
end

for num in 1..5 do
  p num.next
end
for num in 20..25 do
  p num * 5
end

[1,2,3,4].each do |num|
  p num
end
["seori","sachi","yoshiki"].each do |name|
  puts name
end
[100,200,300,400].each do |number|
  p number / 100
end

num = 1
while num < 100 do
  p num
  num = num * 2
end

num = 1000000000
while num >= 1
  p num
  num /= 10 
end

num = 1
while num < 1000000
  p num
  num *= 10
end

n = 3
if n == 3
  puts "nは3です"
end

n = 100
if n == 100
  puts "満点です！"
end

n = 8
if n == 3 || n == 4
  puts "3、4のどちらかです"
end

n = 8
if n == 3
  puts "nは3です"
elsif n == 4
  puts "nは4です"
end

for num in 1..10 do
  if num <= 5
    puts "こんにちは"
  end
end

for hello in ["こんにちは","こんにちは","こんにちは","こんにちは"]
  puts hello
end

[1,2,3,4].each do |num|
  puts num
end
["apple","orange","pear"].each do |fruit|
  puts fruit
end

n = 3
if n == 2
  puts "2です"
elsif n ==3 
  puts "3です"
else
  puts "それ以外です"
end

class Animal
  def self.greet
    p "こんにちは!Animalです！"
  end
end

Animal.greet



class Animal
  def animal
    puts "私は動物です"
  end
end

cat = Animal.new
cat.animal

class Plant
  def self.plant
   puts "植物です"
  end
end

Plant.plant


class Bmi
  def cal(height, weight)
    p weight / height / height
  end
end

sachi = Bmi.new
sachi.cal(1.63, 52)

hanako = Bmi.new
hanako.cal(1.58, 50)

class Animal
  def initialize
    p "動物です"
  end
end

animal1 = Animal.new

class Student
  def initialize
    @name = "sato"
  end
  def avg(math, english)
    p @name,(math + english) / 2
  end
end

a001 = Student.new
a001.avg(10,40)

class Animal
  @@counter = 0

 def initialize
  @@counter += 1
 end

 def self.get_counter
  return @@counter
 end
end

Animal.new
p Animal.get_counter

Animal.new
p Animal.get_counter
Animal.new

p Animal.get_counter

class Train
  @@name = "VSE"

  def initialize
    @@name
  end

  def call
    puts @@name + "だ!!"
  end
end

train = Train.new
train.call

class Animal
  @@name = "動物"
  
  def initialize
    @@name
  end
  def call
    puts @@name + "です"
  end
end

animal = Animal.new
animal.call

class Objname
  def initialize(name)
   @objname = name
  end
  def initialize(age)
   @age = age
  end
  def showname
    puts @objname
  end
  def showage
    p @age
  end
end

name1 = Objname.new("さち")
name1.showname
age1 = Objname.new(41)
age1.showage
name2 = Objname.new("せおり")
name2.showname

class Kmtom
  def initialize(num)
   @num = num
  end
  def cal
   p @num * 1000
  end
end

num1 = Kmtom.new(2)
num1.cal




class Bmi
  def initialize(name)
    @name = name
  end
  def cal(weight, height)
    p @name, weight / height / height
  end
end

person1 = Bmi.new("sachi")
person1.cal(53,1.6)

class Age
  @@year = 2022
  
  def initialize(name)
    @name = name
  end
  
  def age(birthyear)
   p  @name,@@year - birthyear
  end
end

girl1 = Age.new("seori")
girl1.age(2016)

class Girl
  def name=(value)
    @name = value
  end
  def name 
    @name
  end
end

girl1 = Girl.new
girl1.name = "seori"
p girl1.name

class Girl
  def self.girl
    p "女の子です"
  end
end

class Student < Girl
  def self.student
    p "小学生です"
  end
end

Girl.girl
Student.student