namespace :people do
  desc 'Migrate introduce to HTML'
  task introduce2html: :environment do |task, args|
    include ActionView::Helpers::TextHelper

    I18n.locale = :cn
    Person.find_each do |person|
      html = simple_format(person.introduce)
      person.update(introduce: html)
    end
  end
end
