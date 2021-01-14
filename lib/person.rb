class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize (name)
        @name = name 
        @bank_account = 25
        @happiness = 8.clamp(0, 10)
        @hygiene = 8.clamp(0, 10)
    end
    def clean?
        @hygiene > 7 
    end
    def happy?
        @happiness > 7
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        @happiness += 2
        @hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person, topic)
        case topic
        when "politics"
            self.happiness -= 10
            person.happiness -= 10
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end