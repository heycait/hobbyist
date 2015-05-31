module HobbiesHelper
  def format_time(time)
    Time.at(time.to_s.slice(0, 10).to_i).strftime("%m/%d/%Y")
  end

  def like_unlike(hobby)
    current_user.hobbies.include?(hobby) ? "Unlike" : "Like"
  end
end
