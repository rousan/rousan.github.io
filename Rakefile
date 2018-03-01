require 'html-proofer'

desc "build and test website"

task :test do
  sh "bundle exec jekyll build"
  options = { :href_ignore => ['http://localhost:4000'], :verbose => true }
  HTMLProofer.check_directory("./_site", options).run
end