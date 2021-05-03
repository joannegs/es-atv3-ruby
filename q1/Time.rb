require 'Time'

class Time
    def humanize
        if (0..10) === (self.min) 
            puts "It's about #{self.hour}:00"
        elsif (11..20) === (self.min) 
            puts "It's about a quarter past #{self.hour}:00"
        elsif (21..30) === (self.min)
            puts "About #{self.hour}:30"
        elsif (31..40) === (self.min)
            puts "About half past #{self.hour}:00"
        elsif (41..50) === (self.min)
            puts (self.hour + 1 == 24 ? 'About a quarter till midnight' : "About a quarter 'till #{self.hour + 1}:00")
        elsif (51..59) === (self.min)
            puts (self.hour + 1 == 24 ? 'About midnight' : "About #{self.hour + 1}:00")
        end
    end
end