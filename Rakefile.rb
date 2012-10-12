task:default => :test

desc "Run radio.rb 5"
task :radio do
sh "ruby -Ilib bin/ejecutable.rb 5"
end

desc "Run tc_radio.rb"
task :test do
sh "ruby -Ilib test/tc_radio.rb"
end
