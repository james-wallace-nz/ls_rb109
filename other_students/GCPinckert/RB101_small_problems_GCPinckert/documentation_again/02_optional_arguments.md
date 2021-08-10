Given the following code...
  ```ruby
  require 'date'

  puts Date.civil
  puts Date.civil(2016)
  puts Date.civil(2016, 5)
  puts Date.civil(2016, 5, 13)
  ```
What will each of the 4 `puts` statements print?

1. `-4712-01-01`, because these are the default values given to the optional parameters `year`, `month`, and `mday`, and no arguments were given in the method call. Note that the `start` parameter here is also default, but this is not displayed explicitly in the output.

2. `2016-01-01`, because we have provided the `Date::civil` method with the argument `2016` for the parameter `year` when calling it, but we still use the default values for parameters `month`, `mday`, and `start`. 

3. `2016-05-01`, because we have provided the arguments `2016` and `5` for the parameters `year` and `month` respectively, but we still use the default value (`1`) for the parameter `mdate` and `start`. Because we supply the argument for `month`, we must also supply the argument for `year`.

4. `2016-05-03`, we are now providing an argument for `mdate`, which means arguments must also be given for `month` and `year` (and we see they are). `start` continues to default to it's default value, as we have not given an argument for it.

Documentation: https://ruby-doc.org/stdlib-3.0.0/libdoc/date/rdoc/Date.html#method-c-civil