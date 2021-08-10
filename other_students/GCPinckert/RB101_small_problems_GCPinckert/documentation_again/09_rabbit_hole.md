Remember the following code?
```ruby
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
```
Find the documentation for `YAML::load_file`

Documentation: https://ruby-doc.org/stdlib-3.0.0/libdoc/psych/rdoc/Psych.html#method-c-load_file

Note that the YAML section of stdlib is not very helpful (I got a 404 not found). The Psych module is where you want to look for useful methods in dealing with yaml files. 