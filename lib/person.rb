require 'pry'
class Person

attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene


  def initialize(name)
    @name = name
    @bank_account = 25         
    @happiness = 8    
    @hygiene = 8
  end

   def happiness=(person_happiness)      
      @happiness = person_happiness
      if @happiness > 10          
        @happiness = 10 
      end

      if @happiness < 0
        @happiness = 0
      end
    end

    def happy?
      if @happiness > 7
        true
      else
        false
      end
    end

    def clean?
      if @hygiene > 7
        true
      else
        false
      end
    end

    def get_paid(salary)
      @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
      self.hygiene += 4      
      #hygiene=13
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
      friend.happiness += 3
      self.happiness += 3
      "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
          friend.happiness -= 2
          self.happiness -= 2
          "blah blah partisan blah lobbyist"
        elsif topic == "weather"
          friend.happiness += 1 
          self.happiness += 1
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
    end

    def hygiene=(person_hygiene)      
      @hygiene = person_hygiene
      if @hygiene > 10          
        @hygiene = 10 
      end

      if @hygiene < 0
        @hygiene = 0
      end
    end
end


# person = Person.new("kevin")
# person.happiness
