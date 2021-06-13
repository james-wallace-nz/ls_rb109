def swap_name(string)
  name, last_name = string.split
  "#{last_name}, #{name}" 
  
end


p swap_name('Joe Roberts') == 'Roberts, Joe'