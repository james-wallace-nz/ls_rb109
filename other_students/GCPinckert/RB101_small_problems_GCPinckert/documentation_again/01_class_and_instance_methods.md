1. `File::path` is a class method belonging to the class `File`. Therefore, when calling it, you have to call directly on the class. It returns the string representation of the path passed to it as an argument.

  ```ruby
  File.path("launch_school/rb_101/lesson_02")   # => "launch_school/rb_101/lesson_02"
  ```

2. `File#path` is an instance method belonging to the class `File`. Therefore, you can call it directly on the calling object. It returns the path used to create a file as a string. Unlike `File::path` it takes no arguments. Rather, by calling it directly on the new File object, it allows you to extract the file path used in that process as a string. 

  ```ruby
  File.new("rb_101/exercise_01").path     # => "rb_101/exercise_01"
  ```