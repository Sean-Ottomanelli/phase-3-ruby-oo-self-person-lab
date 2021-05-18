require "pry"


class Person

    attr_accessor :name, :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account = self.bank_account + salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        if self.hygiene > 10
            self.hygiene = 10
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        if self.happiness > 10
            self.happiness = 10
        end
        if self.hygiene < 0
            self.hygiene = 0
        end
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        if self.happiness > 10
            self.happiness = 10
        end
        if friend.happiness > 10
            friend.happiness = 10
        end
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end


end

sean=Person.new("Sean")

ryan=Person.new("Ryan")

binding.pry

# your code goes here
