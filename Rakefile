def use_test_folder task, folder
  wild_folder = emplace_wildcard_folder(folder)
  task.pattern = "spec/#{wild_folder}/*_spec.rb"
end

def emplace_wildcard_folder folder
  return "#{folder}/**" if folder != '**'
  return folder
end

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:integration) do |t|
    use_test_folder(t, 'integration')
  end

  RSpec::Core::RakeTask.new(:unit) do |t|
    use_test_folder(t, 'unit')
  end

  RSpec::Core::RakeTask.new(:spec) do |t|
    use_test_folder(t, '**')
  end
rescue Load_error
  sh 'which rspec'
end

task :default => :spec
