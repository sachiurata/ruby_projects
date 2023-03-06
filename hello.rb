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