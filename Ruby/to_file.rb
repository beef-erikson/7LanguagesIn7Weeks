# Write to file module
# Beef Erikson Studios - 2020

# ToFile module
# ----
# Methods
#   filename        to_f method uses this to specify file contents
#   to_f            writes supplied file contents to file
# ----
module ToFile
    def filename
        "object_#{self.object_id}.txt"
    end

    def to_f
        File.open(filename, 'w') {|f| f.write(to_s)}
    end
end

# Person class
# ----
# Instance variable
#   name            name of person/file
#
# Method
#   to_s            used by to_f to specify file contents
# ----
class Person
    include ToFile
    attr_accessor :name

    def initialize(name)
        @name = name
    end
    def to_s
        name
    end
end

Person.new('Beef').to_f