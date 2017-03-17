# your code goes here
class Person

  attr_accessor :bank_account
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness
  end

  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value<0
      @happiness = 0
    else
      @happiness = value
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(value)

    if value>10
      @hygiene = 10
    elsif value<0
      @hygiene = 0
    else
      @hygiene = value
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false

    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false

    end
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    value = @hygiene + 4
    self.hygiene = value
    "\u266A Rub-a-dub just relaxing in the tub \u266B"
  end

  def work_out

    self.hygiene= @hygiene - 3
    self.happiness= @happiness + 2
    "\u266A another one bites the dust \u266B"
  end

  def call_friend(person)
    self.happiness = @happiness + 3
    person.happiness= person.happiness + 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness = person.happiness - 2
      self.happiness = self.happiness - 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      person.happiness = person.happiness + 1
      self.happiness = self.happiness + 1
      "blah blah sun blah rain" 
    else
      'blah blah blah blah blah'
    end
  end





end

alex = Person.new("alex")

puts alex.hygiene
alex.hygiene= 11
puts alex.hygiene
alex.take_bath
puts alex.hygiene
