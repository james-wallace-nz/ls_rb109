def list(names)
  return '' if names.empty?
  
  all_names = names.map(&:values).flatten
  return all_names[0] if all_names.size == 1
  
  all_names[0..-2].join(', ') + ' & ' + all_names[-1]
end

p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
p list([ {name: 'Bart'}, {name: 'Lisa'} ])
p list([ {name: 'Bart'} ])