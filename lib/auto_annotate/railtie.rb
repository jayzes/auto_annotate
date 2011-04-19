require 'rails'

module AutoAnnotate
  class Railtie < Rails::Railtie
    railtie_name :auto_annotate

    rake_tasks do
      load "tasks/auto_annotate.rake"
    end
  end
end