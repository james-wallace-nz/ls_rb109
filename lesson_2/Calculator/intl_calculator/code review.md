# Code Review Request: Calculator Bonus Features

## James Wallace

Hi,

Can you please review my calculator program with bonus features:

https://github.com/NZLWally/rb109/tree/master/lesson_2/Calculator/intl_calculator

or individual files: https://github.com/NZLWally/rb109/blob/master/lesson_2/Calculator/intl_calculator/calculator_intl.rb https://github.com/NZLWally/rb109/blob/master/lesson_2/Calculator/intl_calculator/languages.yml https://github.com/NZLWally/rb109/blob/master/lesson_2/Calculator/intl_calculator/messages.yml

I'm not sure how I could further simplify result_message and particularly calculate_result to comply with Rubocop AbcSize.

Thanks in advance!

James


## Srđan Ćorić

Hello James. I will be reviewing your code today.

### Rubocop

I have received 2 Rubocop errors. I will talk in the source code part about how you might fix them.

### Gameplay

When I entered `5` as the first number, `0` as the second number and chose `division` I have received `ArgumentError`, `comparison of String with 1000 failed`.

Otherwise, your validations are great, and I like the fact that you have implemented 4 languages. :thumbsup:

### Source code

I would not keep language in a constant as this causes you to sometimes use `MSGS["en"]` and sometimes `MSGS[LANG]`. Better way is to just assign to a variable `lang` default value `"en"`` and then reassign it after the user chooses the language.

I also wouldn't keep valid inputs in a messages file. That file should continue messages that you would output to the screen.

So, you could change your prompt a bit to accept several arguments like this :

``` ruby
def prompt(lang, msg_type, msg)
  puts "=> #{MSGS[lang][msg_type][msg]}"
end
```

But, valid operations, valid inputs etc. you would keep in constants in the main file. For example:

``` ruby
VALID_OPERATIONS = {
  "1" => "add"
  "2" => "subtract"
  "3" => "multiply"
  "4" => "divide"
}
```

This would fix your Rubocop errors as well as this line if `MSGS[LANG]['operations']['order'].keys.include?(input)` is a bit hard to read.

I wouldn't add methods for add, subtract, multiply, etc as those methods already exist. `add` is `+` method, `subtract` is `-`.

Having `add(first, second)` is not more clear than `first + second`.

In `play_again?` method you could just have `REPEAT.include?(repeat)` as the last expression. This will evaluate to `true` if the answer is included in `REPEAT`, otherwise, it would evaluate to `false`.

### Overall

Great work James! Review my feedback and try to fix the issues mentioned above before moving forward.

Srdjan


## James Wallace

Thanks for your feedback, Srdjan. Much appreciated!

The last two changes I made to the calculator before requesting review were:

- Combined a separate *operations.yml* (same as your `valid_operations` example) with the *messages.yml*.

  - The rationale was you could update/add language information in one place.

  - I followed your advice and separated these items into the separate *operations.yml* file again as they do make more sense to not be in `MSGS`.

- Added a `format_thousands` method to format large numbers with commas. The one case I didn't manually check again was divide by zero and this new method broke that validation. I have fixed this again. Thanks for pointing that out.

As suggested, I have also:

- Changed `LANG` to `lang = 'en'` then re-assigned based on user input. I Then updated method definitions and invocations to include `lang` parameter

  - An issue arose due to other languages not always using 'y'/'yes' and 'n'/'no'. The `AFFIRM/NEGATIVE` constants are set when `lang` is set to the default 'en'. When asked whether the user wants to update the language these constants are used to validate their input. The same constants are used later in the program to validate inputs, but they should be updated if the language is changed from default.

  - I thought the simplist solution would be two lots of `AFFIRM/NEGATIVE` constants, one for default `lang = 'en'` and another two set once `lang` is updated. What are you thoughts?

  - To avoid using 'en' I also replaced it in two places with `LANGS.keys.first`, so the first language in *languages.yml* is the default language.

- Removed the `add`, `subtract`, `multiply` methods. I kept the `divide` method as that contains the zero division validation. I originally created the other methods as I thought they could contain validation, but they didn't need it.

- I didn't update `prompt` as you suggested but used your advice to improve the program:

  - There were a number of different prompt cases (2 or 3 layers in `MSGS` and sometimes additional text in the prompt), which required separate `prompt` methods.

  - Instead, I created `access_l2` and `access_l3` methods which can access the two or three layer `MSGS`. I then used these with `prompt` and throughout the rest of the program whenever `MSGS` is accessed.

- Updated `play_again?` as suggested. This is a nice solution and made sense to me after I worked out why. Thanks.

- Moved constants below the methods because these call certain methods (the `access` ones). I know constants are preferred at the top, but is this much of an issue?

Thanks again,

James


## Srđan Ćorić

`access_l2` and `access_l3` method names could be improved as it is not clear for the method name what these methods do.

Since you have multiple languages, you are correct that having them in a constant wouldn't work, so you can keep them in `yml` file, however, it would be good to have a method which fetches does valid answers, or prompts as in your initial solution this was hard to read `MSGS[LANG]['operations']['order'].keys.include?(input)`.

For example, you could have a method that returns valid answers for new game, based on the language.

Also you could have a method `display_operations` (the prompt with numbers and appropriate operations) which would again take the chosen language as the argument and output appropriate message.

Otherwise, I like your changes.

Note that we can only provide 1 code review per code request. I hope these suggestions are helpful.


## James Wallace

Thanks again, Srdjan!

I renamed those two methods although still couldn't find an ideal name for what they do.

I also removed the constants and created two methods that fetch the affirmative or negative answers from the `yml` file when needed. This makes a lot of sense.

I will consider additional `prompt` methods in future too.

Thanks,

James