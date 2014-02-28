def select_elements_starting_with_a  array

  array.select {|a| a.start_with?('a')}

end

def select_elements_starting_with_vowel  array

  array.select {|a| "aeiou".include? a[0] }

end
def remove_nils_from_array  array

  array.select {|a|  a != nil }

end

def remove_nils_and_false_from_array  array

  array.select {|a|  (a != nil)  && (a) }

end

def reverse_every_element_in_array  array

  array.map {|a|  a.reverse }

end


def every_possible_pairing_of_students  array

	ans = []
  i = 0
  while i < array.length
    j = i+1
    while j < array.length
    	ans << [array[i],array[j]]
    	j=j+1
    end
    i += 1
  end
  ans
end
 
def all_elements_except_first_3 array

	array[3..-1]

end

def add_element_to_beginning_of_array array, i

	array.insert(0,i)

end

def array_sort_by_last_letter_of_word array

	array.sort_by {|a| a.reverse}

end

def get_first_half_of_string string 
	string[0,(string.length.to_f/2).ceil]
end

def make_numbers_negative num 

	-num.abs

end

def separate_array_into_even_and_odd_numbers array

  even = []
  odd  = []
  array.each {|a| a % 2 == 0 ? even << a : odd << a  }

  [even, odd]

end

def number_of_elements_that_are_palindromes array

  count = 0
  array.each {|a| if a == a.reverse then count +=1 end  }
  count

end

def shortest_word_in_array array

	word = array[0]
  array.each {|a| if word.length > a.length then word = a end  }
  word

end

def longest_word_in_array array

  word = array[0]
  array.each {|a| if word.length < a.length then word = a end  }
  word

end


def total_of_array array 

	array.inject{|sum,x| sum + x }

end

def double_array array 

  [[array] << [array]].flatten
end

def turn_symbol_into_string symbol 

	symbol.to_s
end

def average_of_array array 

  (array.inject{|sum,x| sum + x }/((array.length).to_f)).round

end

def get_elements_until_greater_than_five array 

	ans = []
  i = 0
  while array[i] < 6
  	ans << array[i]
  	i = i + 1
  end
  ans

end

def convert_array_to_a_hash array

  ans = {}
  i = 0
  while i < array.length-1
  	ans.merge!(array[i] => array[i+1])
  	i = i + 2
  end
  ans

end


def get_all_letters_in_array_of_words array

	a = array.join.split("").sort
   
end

def swap_keys_and_values_in_a_hash hash 

	ans = {}
	hash.each {|key,value| ans.merge!(value => key)}
  ans

end

def add_together_keys_and_values hash 

  ans = 0
  hash.each {|key,value| ans +=key; ans+= value}
  ans

end

def remove_capital_letters_from_string string 

  string.split("").map{|a| ("A".."Z").include?(a) ? "" : a}.join

end

def round_up_number num 
  num.ceil
end

def round_down_number num 
  num.floor
end

def format_date_nicely time 

# puts " #{time.to_s.gsub('-','/')}"

# 'abcdefghij'.tr('ghijfdecab',time.to_s.gsub('-','/'))

time.strftime("%d/%m/%Y")

end

def get_domain_name_from_email_address address 

  address.split('@')[1].split('.')[0]

end

def titleize_a_string string 

  a = string.split(' ')

  a[0].capitalize + " " + a[1..-1].map{|a| 'and the'.include?(a) ? a : a.capitalize}.join(' ') 
end

def check_a_string_for_special_characters string

  rv = false

  string.split("").each {|a| 
    if '!@#$%^&*()_+'.include?(a)
      rv = true
    end
  }
  rv
end

def get_upper_limit_of range

range.to_s.split("..")[1].to_f

end

def is_a_3_dot_range? range 

  range.to_s.include?("...")

end

def square_root_of num 

 Math.sqrt(num)
end

def word_count_a_file filename

  infile = File.open(filename,'r')
  contents = infile.read
  contents.split(' ').length

end

def call_method_from_string string 
  call string
end

def is_a_2014_bank_holiday? time 


end

def your_birthday_is_on_a_friday_in_the_year time

  d = time.strftime("%d")
  m = time.strftime("%m")
  y = time.strftime("%Y").to_i

  for i in y..y+7
  
    if Time.new(i,m,d).friday?
      break
    end
  end
  i
end

def count_words_of_each_length_in_a_file filename 

  infile = File.open(filename,'r')

  contents = infile.read
  contents = contents.gsub(',',' ')
  contents = contents.gsub('.',' ')

  words = contents.split(' ')

  lengths = Hash.new(0)

  words.each {|word| lengths[word.length] += 1 }

  lengths
end




