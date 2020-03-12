# your code goes here
class Person
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    attr_reader(:name)
    attr_accessor(:bank_account)
    attr_reader(:happiness)
    attr_reader(:hygiene)
    
    def happiness= (happiness)
        scale = (0..10)
        if scale.include?(happiness)
            @happiness = happiness
        elsif happiness > 10
            @happiness = scale.max()
        else happiness < 0
            @happiness = scale.min()
        end
    end
    
    def hygiene= (hygiene)
        scale = (0..10)
        if scale.include?(hygiene)
            @hygiene = hygiene
        elsif hygiene > 10
            @hygiene = scale.max()
        else hygiene < 0
            @hygiene = scale.min()
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end
    
    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end
    
    def take_bath()
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out()
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end 
    end

end

