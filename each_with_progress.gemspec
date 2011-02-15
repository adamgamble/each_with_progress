Gem::Specification.new do |s|
  s.name    = 'each_with_progress'
  s.version = '0.1'
  s.summary = 'stand in replacement for Enumerable#each that will print a progress bar to the console as it loops'

  s.author   = 'Adam Gamble'
  s.email    = 'adamgamble@gmail.com'
  s.homepage = 'https://github.com/adamgamble/each_with_progress'

  # Include everything in the lib folder
  s.files = Dir['lib/**/*']

  # Supress the warning about no rubyforge project
  s.rubyforge_project = 'nowarning'
end
