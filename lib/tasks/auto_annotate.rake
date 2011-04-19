if Rails.env.development?
  require 'rake/hooks'
  after 'db:migrate' do
    `bundle exec annotate -i -p before`
  end
end