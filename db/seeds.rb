# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = {
'Arts & Crafts' => [['Painting', 'Sculpting', 'Sewing', 'Pottery', 'Basket Making'],'1', 'http://www.karaspartyideas.com/wp-content/uploads/2013/05/IMG_4000_600x400.jpg'],
'Cars & Motorcycles' => [['Vintage Vehicles', 'Maintenance', 'Racing', 'Car Shows'],'3', 'http://www.cfrrinkens.com/files/cfr/graphic/content/services/cfr-rinkens-service-car-and-bike-shipping.jpg'],
'Education & Learning' => [['Teaching', 'Study Groups', 'SAT Prep'],'6', 'http://www.ctacusa.com/wp-content/uploads/2013/11/education-slos.jpg'],
'Fashion & Beauty' => [['Makeup', 'Winter Clothes', 'Shoes', 'Modeling'],'8', 'http://imagelib4.circleofmoms.com/live_photo16806627'],
'Food & Drink' => [['Cooking', 'Wine', 'Beer', 'Pie Eating', 'Food Trucks'],'10', 'http://www.localbelle.com/wp-content/uploads/2013/02/food-and-drink.jpg'],
'Games' => [['Sardines', 'Taboo', 'Chess', 'Monopoly', 'Sudoku'],'11', 'http://jamiewhyte.co.uk/site/wp-content/uploads/2012/10/games-logo1-e1350398796647.jpg'],
'Health & Wellbeing' => [['Suppliments', 'Meditation', 'Acupuncture', 'Dieting', 'Sleep'],'14', 'http://www.stow.ac.uk/media/istock_000003222836xsmall.jpg'],
'Language & Ethnic Identity' => [['French', 'Spanish'],'16', 'http://www.inc.com/uploaded_files/image/create-a-unified-company-culture-pop_7524.jpg'],
'Music' => [['Composing', 'Performing', 'Jam Bands', 'Concert Going', 'Listening', 'Marching Band'],'21', 'http://www.theluckycupids.podserver.info/images/easyblog_images/muzikzote/music/Music5.jpg'],
'Outdoors & Adventure' => [['Hiking', 'Climbing', 'Camping', 'Skydiving', 'Hang Gliding'],'23', 'http://www.adventurestateparks.com/!images/rotator/asp_adventure_mp_mainimage_01b.jpg'],
'Paranormal' => [['Ghost Hunting', 'Alien Spotting', 'Big Foot', 'Loch Ness'],'24', 'http://cdn.screenrant.com/wp-content/uploads/miss-peregrine1.jpg'],
'Animals' => [['Dog Training', 'Pets', 'Animal Control', 'Zoology', 'Cat Training'],'26', 'http://4.bp.blogspot.com/_HEjoNp_qRz8/TRcUkuX0olI/AAAAAAAAGUI/kq2MN4y46UM/s1600/Today%2527s+Cute+Funny+Silly+Animals+Friends+%25283%2529.jpg'],
'Photography' => [['Film', 'Digital', 'Black and White', 'Portfolio Building'],'27', 'http://www.wallpapernation.net/images/5147-black-and-white-camera-photography.jpg'],
'Sci-Fi & Fantasy' => [['Harry Potter', 'Star Trek', 'Star Wars', 'LARPing', 'Comics'],'29', 'https://trekvar.files.wordpress.com/2010/08/star_trek_2009_desktop_2_by_d_greg.png'],
'Socializing' => [['Drinking', 'Karaoke', 'Team Sports', 'Talking'],'31'],
'Sports & Recreation' => [['Basketball', 'Baseball', 'Football', 'Swimming', 'Soccer', 'Archery', 'Fencing'],'32', 'http://www.goldeninsidescoop.com/allsports.jpg'],
'Tech' => [['Programming', 'DBC', 'Robots', 'Wearable Tech', 'Computer Building'],'34', 'http://blog.robotictradingsystems.com/Portals/158618/images/technology.jpg'],
}

users = {
  'Keith' => {email: 'keith@mail.com', password_confirmation: '12345678', password: '12345678'},
  'Taniya' => {email: 'taniya@mail.com', password_confirmation: '12345678', password: '12345678'},
  'Caitlyn' => {email: 'caitlyn@mail.com', password_confirmation: '12345678', password: '12345678'},
  'David' => {email: 'david@mail.com', password_confirmation: '12345678', password: '12345678'},
}

all_users = []

users.each do |user, params|
  new_user = User.create(username: user, email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation], image_url: Faker::Avatar.image)
  all_users << new_user
end


categories.each do |cat, params|
  new_cat = Category.create(name: cat, meetup_id: params[1], image_url: params[2])
  params[0].each do |hobby|

    new_hobby = Hobby.create(name: hobby, description: Faker::Lorem.paragraph, image_url: Faker::Avatar.image, category_id: new_cat.id)
    all_users.sample.hobbies << new_hobby

    3.times do
      new_question = Question.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, user_id: all_users.sample.id, hobby_id: new_hobby.id)
      3.times do
        new_answer = Answer.create(body: Faker::Company.bs, question_id: new_question.id, user_id: all_users.sample.id)
      end
    end
  end
end
