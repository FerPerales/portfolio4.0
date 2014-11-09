class AboutMeService

  def get_bio(user)
    response = Net::HTTP.get(URI("https://api.about.me/api/v2/json/user/view/#{user}?client_id=#{ENV['ABOUT_ME_API_KEY']}"))

  end
end
