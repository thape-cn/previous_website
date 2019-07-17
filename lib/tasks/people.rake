namespace :people do
  desc 'Migrate introduce to HTML'
  task introduce2html: :environment do |_task, _args|
    include ActionView::Helpers::TextHelper

    I18n.locale = :cn
    Person.find_each do |person|
      html = simple_format(person.introduce)
      person.update(introduce: html)
    end
  end

  desc 'Filling url_name for people'
  task filling_url_name_for_people: :environment do |_task, _args|
    I18n.locale = 'cn'
    Person.all.find_each do |person|
      url_name = PinYin.of_string(person.name, :ascii).join.tr('0-9', '')
      name_appears_number = Person.where(url_name: url_name).where.not(id: person.id).count
      puts "Name: #{person.name}, url_name: #{url_name}"
      url_name = "#{url_name}#{name_appears_number}" unless name_appears_number.zero?
      person.update!(url_name: url_name)
    end
  end
end
