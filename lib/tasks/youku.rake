def fetch
  html = RestClient.get('http://i.youku.com/u/UMzA2OTUxMDI2OA==/videos')
  doc = Nokogiri::HTML(html)

  doc.css('.yk-col4').each do |yk|
    next unless yk.at_css('.v-thumb')
    video = {
      :date => yk['c_time'],
      :title => yk.at_css('a')['title'],
      :thumb => yk.at_css('img')['src'],
      :time => yk.at_css('.v-time').content,
      :id => yk.at_css('a')['href'].split("/id_").last.split(".").first
    }
    p video
    Section.create(
      date:video[:date],
      thumb:video[:thumb],
      title:video[:title],
      time:video[:time],
      youku_id:video[:id],
      course_id:1
      )
  end

end

namespace :youku do
  desc "TODO"
  task fetch: :environment do
    fetch
  end

end