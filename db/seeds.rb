# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = {
'Arts & Crafts' => [[
  {'Painting' => 'http://upload.wikimedia.org/wikipedia/commons/d/dd/Mary_Barnes_painting_(detail).jpg'}, {'Sculpting' => 'http://www.mrcad.com/blog-images/zbrush-sculpting.jpg'},
  {'Sewing' => 'https://simplyamericandotnet.files.wordpress.com/2012/05/sewing.jpg'},
  {'Pottery' => 'http://www.amaliaerciyes.com/App_Theme/Default/images/kapadokya/Traditional-Pottery-Making-in-Avanos.jpg'},
  {'Basket Making' => 'http://sallygardens.typepad.com/photos/uncategorized/2008/02/05/round_basket.jpg'}],'1', 'http://www.karaspartyideas.com/wp-content/uploads/2013/05/IMG_4000_600x400.jpg'],
'Cars & Motorcycles' => [[
  {'Vintage Vehicles' => 'http://www.iloveindia.com/cars/pics/vintage-cars.jpg'},
  {'Maintenance' => 'http://www.mantralearning.co.uk/media/17950/dsc_1203.jpg'},
  {'Racing' => 'http://1.bp.blogspot.com/_XLFy2kKqMq4/TPykICZxUjI/AAAAAAAAAB4/xT_-iH9xsjU/s1600/Car+Racing+%25289%2529.jpg'},
  {'Car Shows' => 'http://cdn.ecomento.com/wp-content/uploads/2014/11/2014-LA-Auto-Show-Gallery-09.jpg'}],'3', 'http://www.cfrrinkens.com/files/cfr/graphic/content/services/cfr-rinkens-service-car-and-bike-shipping.jpg'],
'Education & Learning' => [[
  {'Teaching' => 'https://jhfr9lindaluu.files.wordpress.com/2012/03/teaching.jpg'},
  {'Study Groups' => 'http://yourfuturein.it/wp-content/uploads/2013/11/Study-Group.jpg'},
  {'SAT Prep' => 'http://hobsons-ccinfo-prod.s3.amazonaws.com/wp-content/uploads/sites/3/2014/11/SAT-logo.jpg'}],'6', 'http://www.ctacusa.com/wp-content/uploads/2013/11/education-slos.jpg'],
'Fashion & Beauty' => [[
  {'Makeup' => 'https://41.media.tumblr.com/tumblr_m8ucnsaDR91r8t7ogo1_500.jpg'},
  {'Winter Clothes' => 'http://blog.missguided.co.uk/wp-content/uploads/2013/11/fashion-girl-scarf-snow-winter-Favim.com-178695_large1.jpg'},
  {'Shoes' => 'http://insiderlouisville.com/wp-content/uploads/2015/05/shoes.jpg?e5b79f'},
  {'Modeling' => 'http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2009/9/19/1253385512787/Mark-Fast-Runway-SpringSu-001.jpg'}],'8', 'http://imagelib4.circleofmoms.com/live_photo16806627'],
'Food & Drink' => [[
  {'Cooking' => 'http://nutritionsmart.com/wp-content/uploads/2014/12/healthy-cooking.jpg'},
  {'Wine' => 'https://thewinecountry.com/twcwp/wp-content/uploads/2014/03/Wine.jpg'},
  {'Beer' => 'https://lygsbtd.files.wordpress.com/2011/08/beer_toast.jpg'},
  {'Pie Eating' => 'https://meenas17.files.wordpress.com/2013/11/pie-eating.jpg'},
  {'Food Trucks' => 'https://bostonfoodtruck.files.wordpress.com/2012/02/go-fish-boston-food-truck-blog.jpg'}],'10', 'http://www.localbelle.com/wp-content/uploads/2013/02/food-and-drink.jpg'],
'Games' => [[
  {'Sardines' => 'http://sites.cdnis.edu.hk/students/084453/files/2012/11/Games__Sardines_by_Scummy2.jpg'},
  {'Taboo' => 'http://pypmphilly.org/wp-content/uploads/2015/01/board-game-taboo-lbkwbm6n.jpg'},
  {'Chess' => 'http://upload.wikimedia.org/wikipedia/commons/6/6f/ChessSet.jpg'},
  {'Monopoly' => 'https://qzprod.files.wordpress.com/2015/02/11513424364_f48b8cb877_b.jpg'},
  {'Sudoku' => 'https://www.morecontentnow.com/media/uploads/thumbnails/sudoku_preview_113.jpg'}],'11', 'http://jamiewhyte.co.uk/site/wp-content/uploads/2012/10/games-logo1-e1350398796647.jpg'],
'Health & Wellbeing' => [[
  {'Suppliments'=> 'http://www.consumerinstinct.com/wp-content/uploads/2012/06/Dietary-supplements-Used-to-Good-Health11.jpg'},
  {'Meditation'=> 'https://www.bulletproofexec.com/wp-content/uploads/2015/03/meditation_sun.jpg'},
  {'Acupuncture'=> 'http://rivista-cdn.sandiegomagazine.com/images/2014/january/features/archana-ram-acupuncture.jpg?ver=1386717324'},
  {'Dieting'=> 'http://www.bodyforwife.com/wp-content/uploads/2015/01/diet.jpg'},
  {'Sleep'=> 'http://valleysleepcenter.com/blog/wp-content/uploads/2013/08/bigstock-Man-comfortably-sleeping-in-hi-15694625.jpg'}],'14', 'http://www.stow.ac.uk/media/istock_000003222836xsmall.jpg'],
'Language & Ethnic Identity' => [[
  {'French'=> 'http://static.tumblr.com/4ce11058faefad93b559c55c7c4b7182/wgiuvix/EC4n37hj8/tumblr_static_tumblr_static_french_toast_by_panda101324.png'},
  {'Spanish'=> 'http://www.stodiliaschool.org/modules/groups/homepagefiles/cms/1582923/Image/bigHOLA.gif'}],'16', 'http://www.inc.com/uploaded_files/image/create-a-unified-company-culture-pop_7524.jpg'],
'Music' => [[
  {'Composing'=> 'https://www.artofcomposing.com/wp-content/uploads/2011/09/composing-music-by-hand.jpg'},
  {'Performing'=> 'http://www.chicagobusiness.com/apps/pbcsi.dll/storyimage/CG/20150307/ISSUE03/303079981/V2/0/V2-303079981.jpg&maxw=600&q=100&cb=20150525011808&cci_ts=20150313161657'},
  {'Jam Bands'=> 'http://www.allaboutjazz.com/photos/2010/jambands101_800x480.jpg'},
  {'Concert Going'=> 'http://nyulocal.com/wp-content/uploads/2010/10/concert-crowd.jpg'},
  {'Listening'=> 'http://images.clipartpanda.com/listening-to-music-ipod-homer_ipod_final-1024x640.jpg'},
  {'Marching Band'=> 'http://uofubands.music.utah.edu/Images/MB%20Pics%201011/_Z7C2841.jpg'}],'21', 'http://www.theluckycupids.podserver.info/images/easyblog_images/muzikzote/music/Music5.jpg'],
'Outdoors & Adventure' => [[
  {'Hiking'=> 'http://www.thecheapskatemom.com/wp-content/uploads/2013/02/hiking1.jpg'},
  {'Climbing'=> 'http://organicthemes.com/demo/adventure/files/2013/08/featured_post_03.jpg'}, {'Camping'=> 'http://www.wildnatureimages.com/images%203/060731-346..jpg'},
  {'Skydiving'=> 'http://www.travelamalfi.com/wp-content/themes/Traveler2/images/skydive.jpg'}, {'Hang Gliding'=> 'http://www.lakearrowhead.com/img/hanggliding1.jpg'}],'23', 'http://www.adventurestateparks.com/!images/rotator/asp_adventure_mp_mainimage_01b.jpg'],
'Paranormal' => [[
  {'Ghost Hunting' => 'http://video.fandango.com/FandangoMovies/thumb_Ghostbusters_30thAnniversaryExclusiveTrailer_Video_1600x1200_2472657863_gen.jpg'},
  {'Alien Spotting' => 'http://i.telegraph.co.uk/multimedia/archive/02387/ufo_2387810b.jpg'},
  {'Big Foot' => 'http://feelgrafix.com/data_images/out/18/926013-bigfoot.jpg'},
  {'Loch Ness' => 'http://www.independent.co.uk/incoming/article8344484.ece/alternates/w620/beast2.getty.jpg'}],'24', 'http://cdn.screenrant.com/wp-content/uploads/miss-peregrine1.jpg'],
'Animals' => [[
  {'Dog Training' => 'http://www.atlantagraphiclines.com/mybestbuddy/wp-content/uploads/2010/11/training1.jpg'},
  {'Pets' => 'http://www.redcarnationhotels.com/~/media/RCH/RB/Header/Pet2.ashx'},
  {'Animal Control' => 'http://www.brewsterpolice.org/ps6.jpg'},
  {'Zoology' => 'http://zoologydegreeonline.com/wp-content/uploads/slideshow-gallery/zoology_iStock_000008821414Small.jpg'},
  {'Cat Training' => 'http://www.waltham.com/dyn/_pictures/approved-images/Caring-Science-images-Column-Images/1column220px/Cat-ClickerTraining-1c.jpg'}],'26', 'http://4.bp.blogspot.com/_HEjoNp_qRz8/TRcUkuX0olI/AAAAAAAAGUI/kq2MN4y46UM/s1600/Today%2527s+Cute+Funny+Silly+Animals+Friends+%25283%2529.jpg'],
'Photography' => [[
  {'Film' => 'http://upload.wikimedia.org/wikipedia/commons/b/be/Film_strip.jpg'},
  {'Digital' => 'http://odisey.com/wp-content/uploads/2015/01/digital-photography.jpg'},
  {'Black and White' => 'http://7-themes.com/data_images/out/59/6974446-black-white-flower-photography.jpg'},
  {'Portfolio Building' => 'https://fstoplounge.com/wp-content/uploads/2014/05/StockPhotoPortfolio.jpg'}],'27', 'http://www.wallpapernation.net/images/5147-black-and-white-camera-photography.jpg'],
'Sci-Fi & Fantasy' => [[
  {'Harry Potter' => 'http://7-themes.com/data_images/out/31/6873361-harry-potter.jpg'},
  {'Star Trek' => 'http://upload.wikimedia.org/wikipedia/en/2/2d/ST_TOS_Cast.jpg'},
  {'Star Wars' => 'http://i.kinja-img.com/gawker-media/image/upload/s--HE3syu_s--/c_fit,fl_progressive,q_80,w_636/wdiqe7iqkcrwxxulazch.png'},
  {'LARPing' => 'https://flavorwire.files.wordpress.com/2013/08/hpim3301.jpg'}, {'Comics' => 'http://s3.amazonaws.com/digitaltrends-uploads-prod/2014/04/dc-comics-universe.jpg'}],'29', 'https://trekvar.files.wordpress.com/2010/08/star_trek_2009_desktop_2_by_d_greg.png'],
'Socializing' => [[
  {'Drinking' => 'http://resources2.news.com.au/images/2013/10/21/1226618/260806-drinking-teen.jpg'},
  {'Karaoke' => 'http://havasucityguide.com/wp-content/uploads/2013/05/Karaoke-Friends.jpg'},
  {'Team Sports' => 'http://www.norris160.org/sites/default/files/page_images/3/team-sport_1_0.jpg'},
  {'Talking' => 'http://i.huffpost.com/gen/1427996/images/o-COLLEGE-STUDENTS-TALKING-facebook.jpg'}],'31', 'http://www.personalitytutor.com/files/2012/03/Socializing-With-People.jpg'],
'Sports & Recreation' => [[
  {'Basketball' => 'http://kicks967.com/wp-content/uploads/2015/02/basketball.jpg'},
  {'Baseball' => 'https://thenypost.files.wordpress.com/2014/09/ball.jpg?w=720&h=480&crop=1'},
  {'Football' => 'http://i.i.cbsi.com/cnwk.1d/i/tim/2013/02/20/football_620x350.jpg'},
  {'Swimming' => 'http://upload.wikimedia.org/wikipedia/commons/c/cd/231000_-_Swimming_Daniel_Bell_reflections_action_-_3b_-_2000_Sydney_event_photo.jpg'},
  {'Soccer' => 'http://www.sfexaminer.com/binary/6128/soccer.jpg'},
  {'Archery' => 'http://www.rainbowhomecenter.com/uploads/4/2/0/2/42023425/9056416_orig.jpg'},
  {'Fencing' => 'http://helenaymca.org/wp-content/uploads/2010/12/fencing.jpg'}],'32', 'http://www.goldeninsidescoop.com/allsports.jpg'],
'Tech' => [[
  {'Programming' => 'https://www.cs.ox.ac.uk/images/research/pl.jpg'},
  {'DBC' => 'https://jlau-bucket-1.s3.amazonaws.com/uploads/topic/image/28/dev_bootcamp.jpg'},
  {'Robots' => 'http://www.scienceclarified.com/photos/ai-and-robotics-3252.jpg'},
  {'Wearable Tech' => 'http://www.emergingedtech.com/wp/wp-content/uploads/2014/04/wearable-tech.png'},
  {'Computer Building' => 'http://dl.maximumpc.com/galleries/800pc/800pc_10_full.jpg'}],'34', 'http://blog.robotictradingsystems.com/Portals/158618/images/technology.jpg'],
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
  params[0].each do |hash|
    hash.each do |hobby, image|
      new_hobby = Hobby.create(name: hobby, description: Faker::Lorem.paragraph, image_url: image, category_id: new_cat.id)
      all_users.sample.hobbies << new_hobby

      3.times do
        new_question = Question.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, user_id: all_users.sample.id, hobby_id: new_hobby.id)
        3.times do
          new_answer = Answer.create(body: Faker::Company.bs, question_id: new_question.id, user_id: all_users.sample.id)
        end
      end
    end
  end
end
