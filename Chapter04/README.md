This section compares and contrasts RSpec stype specifications with test::minitest in ruby.

It was tested under ruby 2.6.3p62 on a mac Jan 26 2023.

To run the test you should just download the code, have ruby installed, and type:

ruby powerof_test.rb <ENTER>

From the command line.

Running the RSPec code is a little more tricky. You'll need to have bundler installed, go to the root of the project directory, and run:

bundle install --path .bundle <ENTER>

From the command line. Once RSpec is installed and the code is downloaded, you can just run:

bundle exec rspec

-----> bundler will run all the specs in the spec directory using source code from the lib directory. That is sort of a syntactic sugar as described in the book.

How to set up rspec with bundler in some detail is described here:

https://semaphoreci.com/community/tutorials/getting-started-with-rspec

If that page has fallen off the internet, that's okay, it is in the wayback machine interneet archive!

http://web.archive.org/web/20230117175526/https://semaphoreci.com/community/tutorials/getting-started-with-rspec 
