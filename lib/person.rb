# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name, bank_account= 25, happiness= 8, hygiene= 8)
        @name= name
        @bank_account= bank_account
        @happiness= happiness
        @hygiene= hygiene
    end

    def bank_account= (value)
        @bank_account= value
    end
    def happiness= (value)
        if value>10
            @happiness= 10
        elsif value<0
            @happiness=0
        else
            @happiness= value
        end
    end
    
    def hygiene= (value)
        if value>10
            @hygiene= 10
        elsif value<0
            @hygiene=0
        else
            @hygiene= value
        end
    end
    
    def happy?
        if happiness> 7
            puts "Go watch The Fault in Our Stars or something!"
            true
        else
            puts "Bruh. Same."
            false
        end
    end
    
    def clean?
        if hygiene> 7
            puts "Calm ya tits Mr. Clean!"
            true
        else
            puts "Dr. Squatch. Now."
            false
        end
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def get_paid
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic== "politics"
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic== "weather"
            self.happiness += 1
            person.happiness += 1
            # 'blah blah sun blah rain'
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end

    end 

end


megan= Person.new("Megan")
felix= Person.new("Felix")
def about_me(person)
    puts 
    "Hi my name is #{person.name}.
    On a scale of 1 to 10 my happiness 
    and hygiene is a #{person.happiness} 
    and #{person.hygiene} respectively. 
    I currently have $#{person.bank_account} to my name."
end
# puts about_me(megan)

# megan.hygiene=(-1)

puts megan.happiness
puts megan.start_conversation(felix, "politics")
puts megan.happiness
