# Single-line block
[1,2,3].each { |num| puts num }

# Multi-line block
[1,2,3].each do |num|
  puts num
end

#
def logger
    yield
end
  
logger { puts 'hello from the block' }
#=> hello from the block

logger do
p [1,2,3]
end
  #=> [1,2,3]

#
def double_vision
    yield
    yield
end
  
double_vision { puts "How many fingers am I holding up?" }
  #=> How many fingers am I holding up?
  #=> How many fingers am I holding up?

#
def love_language
    yield('Ruby')
    yield('Rails')
end
  
love_language { |lang| puts "I love #{lang}" }
#=> I love Ruby.
#=> I love Rails.
  
#
@transactions = [10, -15, 25, 30, -24, -70, 999]

def transaction_statement
  @transactions.each do |transaction|
    yield transaction # You just yield the transaction amount.
  end
end

transaction_statement do |transaction|
  p "%0.2f" % transaction # The bank that calls the method can define how it is handled.
end
#=> ["10.00", "-15.00", "25.00", "30.00", "-24.00", "-70.00", "999.00"]

#producir con hashes
def awesome_method
    hash = {a: 'apple', b: 'banana', c: 'cookie'}
  
    hash.each do |key, value|
      yield key, value
    end
end
  
awesome_method { |key, value| puts "#{key}: #{value}" }
  #=> a: apple
  #=> b: banana
  #=> c: cookie
  
#CONTROL DE BLOQUE
def maybe_block
    if block_given?
      puts "block party"
    end
    puts "executed regardless"
end

#maybe_block
# => executed regardless

maybe_block {} # {} is just an empty block
# => block party
# => executed regardless

#LAMBDAS
#formas de sintaxis
my_lambda = lambda { puts "my lambda" }

my_other_lambda = -> { puts "hello from the other side" }

my_lambda.call
my_other_lambda.call


#
my_name = ->(name) { puts "hello #{name}" }

my_age = lambda { |age| puts "I am #{age} years old" }


my_name.call("tim")
#=> hello tim
my_age.call(78)
#=> I am 78 years old

#formas de llamar las lambdas
my_name = ->(name) { puts "hello #{name}" }

my_name.call("tim")
my_name.("tim")
my_name["tim"]
my_name.=== "tim"

#PROCESOS
#declarar procesos
a_proc = Proc.new { puts "this is a proc" }

a_proc.call
#=> this is a proc

#
a_proc = proc { puts "this is a proc" }

a_proc.call
#=> this is a proc

#argumentos en procesos
a_proc = Proc.new { |name, age| puts "name: #{name} --- age: #{age}" }

a_proc.call("tim", 80)
#=> name: tim --- age: 80


