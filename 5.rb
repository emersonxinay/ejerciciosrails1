class Morseable

def initialize(number)
@number = number
end
def generate_hash(number)
# Esto es una aberración y debe ser refactorizado!
hash = {0 => '--0---', 1 => '---1--', 2 => '---2--'}
hash[number]
end
def to_morse
self.generate_hash(@number)
end
end
m = Morseable.new(2)
print m.to_morse
