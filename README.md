loser
=====

Loser adds error behavior to you ruby class allowing you to easily handle failures.

## Installation

```
gem install loser
```

## Usage

Include Loser module to you ruby class with:

```
class Car

  include Loser
  
  def initialize
    @fuel = 0
  end
  
  def start
    if has_fuel?
      true
    else
      fail('Low fuel')
    end
  end
  
  def refuel(amount)
    @fuel += amount
  end
  
  private
  
  def has_fuel?
    @fuel > 0
  end
end

car = Car.new
car.start           # => false
car.valid?          # => false
car.errors          # => ["Low fuel"]
car.errors_full     # => "Low fuel"
```
