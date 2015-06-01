module HobbiesHelper
  def format_time(time)
    Time.at(time.to_s.slice(0, 10).to_i).strftime("%m/%d/%Y")
  end

  def follow_unfollow(hobby)
    current_user.hobbies.include?(hobby) ? "Unfollow" : "Follow"
  end
end
