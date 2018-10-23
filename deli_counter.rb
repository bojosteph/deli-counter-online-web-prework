def deli_counter(array, name)
   array << name
   puts name, (array.index(name)+1)
end

def line(array)
  if array.size == 0
    puts "The line is currently empty."
  else
    puts "The line is currently  #{1..array.size}"
  end   
end

 # def take_a_number(array, name)
 # array << name
 # puts name, (array.index(name)+1)
# end


def now_serving(array)
  if array.size == 0
    puts "There is nobody waiting to be served!"
  else
    serving = array[0]
    puts "Current serving #{serving}."
    array.shift
  end
end


 line_count = 1

def take_a_number(line)
  line[:numbers].push(line[:ticket_number]) 
  line[:ticket_number] += 1
  line[:numbers].last 
    
end


def now_serving(line)
  line[:numbers].shift
end
# define a take_a_number and now_serving method such that
 
line = {
  numbers: [],
  ticket_number: 1
}

take_a_number(line) #=> 1      line[:numbers] = [1]
take_a_number(line) #=> 2      line[:numbers] = [1,2]

now_serving(line) #=> 1        line[:numbers] = [2]
now_serving(line) #=> 2        line[:numbers] = []

take_a_number(line) #=> 3      line[:numbers] = [3]
  
  


#def now_serving(array)
 # if array.size == 0
 #   puts "There is nobody waiting to be served!"
 # else
 #   serving = array[0]
  #  puts "Current serving #{serving}."
 #   array.shift
 # end
#end