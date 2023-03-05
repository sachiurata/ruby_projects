class People
  def initialize
   puts "Peopleのインスタンスが作られました"
  end
  def self.introduce1
    puts "私はPeopleクラスです"
  end
  
  attr_accessor :name

end

class ChildPeople < People
  def self.introduce2
    puts "私は目からビームが出せます"
  end
end

People.introduce1
ChildPeople.introduce2
