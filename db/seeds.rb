# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = {
'Arts & Crafts' => [[
  { 'name' => 'Painting', 'image' => 'http://upload.wikimedia.org/wikipedia/commons/d/dd/Mary_Barnes_painting_(detail).jpg', 'description' => 'Painting is the practice of applying paint, pigment, color or other medium to a surface (support base). The medium is commonly applied to the base with a brush but other implements, such as knives, sponges, and airbrushes, can be used.'},
  { 'name' => 'Sculpting', 'image' => 'http://www.mrcad.com/blog-images/zbrush-sculpting.jpg', 'description' => 'To shape, mold, or fashion especially with artistry or precision' },
  { 'name' => 'Sewing', 'image' => 'https://simplyamericandotnet.files.wordpress.com/2012/05/sewing.jpg', 'description' => 'Sewing is the craft of fastening or attaching objects using stitches made with a needle and thread. Sewing is one of the oldest of the textile arts, arising in the Paleolithic era. Before the invention of spinning yarn or weaving fabric, archaeologists believe Stone Age people across Europe and Asia sewed fur and skin clothing using bone, antler or ivory needles and "thread" made of various animal body parts including sinew, catgut, and veins.' },
  { 'name' => 'Pottery', 'image' => 'http://www.amaliaerciyes.com/App_Theme/Default/images/kapadokya/Traditional-Pottery-Making-in-Avanos.jpg', 'description' => 'Pottery is the ceramic material which makes up potterywares, of which major types include earthenware, stoneware and porcelain. The place where such wares are made is also called a pottery (plural "potteries"). Pottery also refers to the art or craft of a potter or the manufacture of pottery.' },
  { 'name' => 'Basket Making', 'image' => 'http://sallygardens.typepad.com/photos/uncategorized/2008/02/05/round_basket.jpg', 'description' => 'Basket weaving, basketry, or basket making is the process of weaving pliable materials into a basket or other similar form. People and artists who weave baskets are called basket makers and basket weavers. Basketry is made from a variety of fibrous or pliable materials—anything that will bend and form a shape. Examples include pine straw, stems, animal hair, hide, grasses, thread, and fine wooden splints. Indigenous peoples are particularly renowned for their basket-weaving techniques. These baskets may then be traded for goods but may also be used for religious ceremonies.' }],'1', 'http://www.karaspartyideas.com/wp-content/uploads/2013/05/IMG_4000_600x400.jpg'],
'Cars & Motorcycles' => [[
  { 'name' => 'Vintage Vehicles', 'image' => 'http://www.iloveindia.com/cars/pics/vintage-cars.jpg', 'description' => 'A vintage car is, in the most general sense, an old automobile, and in the narrower senses of car enthusiasts and collectors, it is a car from the period of 1919 to 1930. Such enthusiasts have categorization schemes for ages of cars that enforce distinctions between antique cars, vintage cars, classic cars, and so on. The classification criteria vary, but consensus within any country is often maintained by major car clubs.'},
  { 'name' => 'Maintenance', 'image' => 'http://www.mantralearning.co.uk/media/17950/dsc_1203.jpg', 'description' => 'Auto maintenance describes the act of inspecting or testing the condition of car subsystems (e.g., engine) and servicing or replacing parts and fluids. Regular maintenance is critical to ensure the safety, reliability, drivability, comfort and longevity of a car. During preventive maintenance, a number of parts are replaced to avoid major damage or for safety reasons, e.g. timing belt replacement.' },
  { 'name' => 'Racing', 'image' => 'http://1.bp.blogspot.com/_XLFy2kKqMq4/TPykICZxUjI/AAAAAAAAAB4/xT_-iH9xsjU/s1600/Car+Racing+%25289%2529.jpg', 'description' => 'Auto racing (also known as car racing, motor racing[1] or automobile racing) is a sport involving the racing of automobiles for competition. The main aim of an individual event is to set the fastest time in a set number of laps or time limit. The finishing order is determined by race time, with the fastest time in first place, second-fastest in second place and so on.' },
  {'name' => 'Car Shows', 'image' => 'http://cdn.ecomento.com/wp-content/uploads/2014/11/2014-LA-Auto-Show-Gallery-09.jpg', 'description' => 'An auto show, also known as a motor show, is a public exhibition of current automobile models, debuts, concept cars, or out-of-production classics. It is commonly attended by automobile manufacturers. Most auto shows occur once or twice a year. They are vital to car manufacturers and local dealers as a public relations exercise, for advertising products, and for increasing publicity.' }],'3', 'http://www.cfrrinkens.com/files/cfr/graphic/content/services/cfr-rinkens-service-car-and-bike-shipping.jpg'],
'Education & Learning' => [[
  { 'name' => 'Teaching', 'image' => 'https://jhfr9lindaluu.files.wordpress.com/2012/03/teaching.jpg', 'description' => 'The act of providing education for others.' },
  { 'name' => 'Study Groups', 'image' => 'http://yourfuturein.it/wp-content/uploads/2013/11/Study-Group.jpg', 'description' => 'A study group is a small group of people who regularly meet to discuss shared fields of study. These groups can be found in high school and college setting, within companies, occasionally primary/junior school and sometimes Middle School/Intermediate. Professional advancement organizations also may encourage study groups.'},
  { 'name' => 'SAT Prep', 'image' => 'http://hobsons-ccinfo-prod.s3.amazonaws.com/wp-content/uploads/sites/3/2014/11/SAT-logo.jpg', 'description' => 'SAT preparation is a highly lucrative field and many companies and organizations offer test preparation in the form of books, classes, online courses, and tutoring. The test preparation industry began almost simultaneously with the introduction of university entrance exams in the USA and flourished from the start.' }],'6', 'http://www.ctacusa.com/wp-content/uploads/2013/11/education-slos.jpg'],
'Fashion & Beauty' => [[
  {'name' => 'Makeup', 'image' => 'https://41.media.tumblr.com/tumblr_m8ucnsaDR91r8t7ogo1_500.jpg', 'description' => 'Cosmetics (also known as makeup or make-up) are care substances used to enhance the appearance or odor of the human body. They are generally mixtures of chemical compounds, some being derived from natural sources ( such as coconut oil) and many being synthetics.' },
  {'name' => 'Winter Clothes', 'image' => 'http://blog.missguided.co.uk/wp-content/uploads/2013/11/fashion-girl-scarf-snow-winter-Favim.com-178695_large1.jpg', 'description' => 'Clothes worn during the cold winter season.'},
  {'name' => 'Shoes', 'image' => 'http://insiderlouisville.com/wp-content/uploads/2015/05/shoes.jpg?e5b79f', 'description' => 'A shoe is an item of footwear intended to protect and comfort the human foot while doing various activities. Shoes are also used as an item of decoration. The design of shoes has varied enormously through time and from culture to culture, with appearance originally being tied to function.' },
  {'name' => 'Modeling', 'image' => 'http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2009/9/19/1253385512787/Mark-Fast-Runway-SpringSu-001.jpg', 'description' => 'A model (from Middle French modelle), is a person with a role either to promote, display, or advertise commercial products (notably fashion clothing) or to serve as a visual aide for people who are creating works of art.' }],'8', 'http://imagelib4.circleofmoms.com/live_photo16806627'],
'Food & Drink' => [[
  {'name' =>'Cooking', 'image' => 'http://nutritionsmart.com/wp-content/uploads/2014/12/healthy-cooking.jpg', 'description' => 'The art of making yummy things.'},
  {'name' =>' Wine', 'image' => 'https://thewinecountry.com/twcwp/wp-content/uploads/2014/03/Wine.jpg', 'description' => 'Wine is an alcoholic beverage made from fermented grapes or other fruits. Due to the natural chemical balance, grapes ferment without the addition of sugars, acids, enzymes, water, or other nutrients.'},
  {'name' => 'Beer', 'image' => 'https://lygsbtd.files.wordpress.com/2011/08/beer_toast.jpg', 'description' => 'Beer is an alcoholic beverage produced by the saccharification of starch and fermentation of the resulting sugar. '},
  { 'name' => 'Pie Eating', 'image' => 'https://meenas17.files.wordpress.com/2013/11/pie-eating.jpg', 'description' => 'Eat pie recreationally, leisurely, or competitively.'},
  {'name' => 'Food Trucks', 'image' => 'https://bostonfoodtruck.files.wordpress.com/2012/02/go-fish-boston-food-truck-blog.jpg', 'description' => 'Food that comes to you in a truck.' }],'10', 'http://www.localbelle.com/wp-content/uploads/2013/02/food-and-drink.jpg'],
'Games' => [[
  { 'name' => 'Sardines', 'image' => 'http://sites.cdnis.edu.hk/students/084453/files/2012/11/Games__Sardines_by_Scummy2.jpg', 'description' => 'Hide-and-seek, DBC-style' },
  { 'name' => 'Taboo', 'image' => 'http://pypmphilly.org/wp-content/uploads/2015/01/board-game-taboo-lbkwbm6n.jpg', 'description' => 'The Game Where Caitlyn ALWAYS Wins.'},
  { 'name' => 'Chess', 'image' => 'http://upload.wikimedia.org/wikipedia/commons/6/6f/ChessSet.jpg', 'description' => 'The game that Jason and Darwin always play.'},
  { 'name' => 'Monopoly', 'image' => 'https://qzprod.files.wordpress.com/2015/02/11513424364_f48b8cb877_b.jpg', 'description' => 'The game that never ends.'},
  { 'name' => 'Sudoku', 'image' => 'https://www.morecontentnow.com/media/uploads/thumbnails/sudoku_preview_113.jpg', 'description' => 'The game with the programming pun.'}],'11', 'http://jamiewhyte.co.uk/site/wp-content/uploads/2012/10/games-logo1-e1350398796647.jpg'],
'Health & Wellbeing' => [[
  { 'name' => 'Suppliments', 'image'=> 'http://www.consumerinstinct.com/wp-content/uploads/2012/06/Dietary-supplements-Used-to-Good-Health11.jpg', 'description' => 'A dietary supplement is intended to provide nutrients that may otherwise not be consumed in sufficient quantities.' },
  { 'name' => 'Meditation', 'image'=> 'https://www.bulletproofexec.com/wp-content/uploads/2015/03/meditation_sun.jpg', 'description' => 'Meditation is a practice in which an individual trains the mind or induces a mode of consciousness, either to realize some benefit or for the mind to simply acknowledge its content without becoming identified with that content, or as an end in itself.' },
  { 'name' => 'Acupuncture', 'image'=> 'http://rivista-cdn.sandiegomagazine.com/images/2014/january/features/archana-ram-acupuncture.jpg?ver=1386717324', 'description' => 'Getting stuck by needles and magically healing.' },
  { 'name' => 'Dieting', 'image'=> 'http://www.bodyforwife.com/wp-content/uploads/2015/01/diet.jpg', 'description' => 'The deliberate selection of food to control body weight or nutrient intake' },
  { 'name' => 'Sleep', 'image'=> 'http://valleysleepcenter.com/blog/wp-content/uploads/2013/08/bigstock-Man-comfortably-sleeping-in-hi-15694625.jpg', 'description' => 'Sleep is a naturally recurring state of mind characterized by altered consciousness, relatively inhibited sensory activity, inhibition of nearly all voluntary muscles, and reduced interactions with surroundings.' }],'14', 'http://www.stow.ac.uk/media/istock_000003222836xsmall.jpg'],
'Language & Ethnic Identity' => [[
  { 'name' => 'French', 'image'=> 'http://static.tumblr.com/4ce11058faefad93b559c55c7c4b7182/wgiuvix/EC4n37hj8/tumblr_static_tumblr_static_french_toast_by_panda101324.png', 'description' => 'The language of love.' },
  { 'name' => 'Spanish', 'image'=> 'http://www.stodiliaschool.org/modules/groups/homepagefiles/cms/1582923/Image/bigHOLA.gif', 'description' => 'The language spoken in the most countries of the world.' }],'16', 'http://www.inc.com/uploaded_files/image/create-a-unified-company-culture-pop_7524.jpg'],
'Music' => [[
  { 'name' => 'Composing', 'image'=> 'https://www.artofcomposing.com/wp-content/uploads/2011/09/composing-music-by-hand.jpg', 'description' => 'Making awesome music.' },
  { 'name' => 'Performing', 'image'=> 'http://www.chicagobusiness.com/apps/pbcsi.dll/storyimage/CG/20150307/ISSUE03/303079981/V2/0/V2-303079981.jpg&maxw=600&q=100&cb=20150525011808&cci_ts=20150313161657', 'description' => 'Playing awesome music.' },
  { 'name' => 'Jam Bands', 'image'=> 'http://www.allaboutjazz.com/photos/2010/jambands101_800x480.jpg', 'description' => 'Bands that jam together, stay together.' },
  { 'name' => 'Concert Going', 'image'=> 'http://nyulocal.com/wp-content/uploads/2010/10/concert-crowd.jpg', 'description' => 'Going to concerts.' },
  { 'name' => 'Listening', 'image'=> 'http://images.clipartpanda.com/listening-to-music-ipod-homer_ipod_final-1024x640.jpg', 'description' => 'Listening is the conscious processing of the auditory stimuli that have been perceived through hearing.' },
  { 'name' => 'Marching Band', 'image'=> 'http://uofubands.music.utah.edu/Images/MB%20Pics%201011/_Z7C2841.jpg', 'description' => 'Playing instruments while marching with funny uniforms.' }],'21', 'http://www.theluckycupids.podserver.info/images/easyblog_images/muzikzote/music/Music5.jpg'],
'Outdoors & Adventure' => [[
  { 'name' => 'Hiking', 'image'=> 'http://www.thecheapskatemom.com/wp-content/uploads/2013/02/hiking1.jpg', 'description' => 'Hiking in Canada and the USA is the preferred term for a long, vigorous walk, usually on trails (footpaths), in the countryside, while the word walking is used for shorter, particularly urban walks. On the other hand in the United Kingdom, and the Republic of Ireland, the term walking is used to describe all forms of walking, whether it is a walk in the park or trekking in the Alps.' },
  { 'name' => 'Climbing', 'image'=> 'http://organicthemes.com/demo/adventure/files/2013/08/featured_post_03.jpg', 'description' => "Climbing is the activity of using one's hands, feet, or any other part of the body to ascend a steep object. It is done recreationally, competitively, in trades that rely on it, and in emergency rescue and military operations. It is done indoors and out, on natural and manmade structures." },
  {'name' => 'Camping', 'image'=> 'http://www.wildnatureimages.com/images%203/060731-346..jpg', 'description' => 'Camping is an elective outdoor recreational activity. Generally held, participants leave developed areas to spend time outdoors in more natural ones in pursuit of activities providing them enjoyment. To be regarded as "camping" a minimum of one night is spent outdoors, distinguishing it from day-tripping, picnicking, and other similarly short-term recreational activities.' },
  { 'name' => 'Skydiving', 'image'=> 'http://www.travelamalfi.com/wp-content/themes/Traveler2/images/skydive.jpg', 'description' => 'The act of falling from the sky and surviving to tell the tale.' },
  {'name' => 'Hang Gliding', 'image'=> 'http://www.lakearrowhead.com/img/hanggliding1.jpg', 'description' => 'Hang gliding is an air sport in which a pilot flies a light and non-motorized foot-launch aircraft called a hang glider. Most modern hang gliders are made of an aluminium alloy or composite frame covered with synthetic sailcloth[1] to form a wing.' }],'23', 'http://www.adventurestateparks.com/!images/rotator/asp_adventure_mp_mainimage_01b.jpg'],
'Paranormal' => [[
  { 'name' => 'Ghost Hunting', 'image' => 'http://video.fandango.com/FandangoMovies/thumb_Ghostbusters_30thAnniversaryExclusiveTrailer_Video_1600x1200_2472657863_gen.jpg', 'description' => 'Ghost hunting is the process of investigating locations that are reported to be haunted by ghosts. Typically, a ghost hunting team will attempt to collect evidence that they see as supportive of paranormal activity. ' },
  { 'name' => 'Alien Spotting', 'image' => 'http://i.telegraph.co.uk/multimedia/archive/02387/ufo_2387810b.jpg', 'description' => 'The alleged cases of close encounters with extraterrestrial beings' },
  { 'name' => 'Big Foot', 'image'=> 'http://feelgrafix.com/data_images/out/18/926013-bigfoot.jpg', 'description' => 'Fuzzy images of big, burly, things.' },
  { 'name' => 'Loch Ness', 'image'=> 'http://www.independent.co.uk/incoming/article8344484.ece/alternates/w620/beast2.getty.jpg', 'description' => 'Fuzzy images of a funny looking lake monster.' }],'24', 'http://cdn.screenrant.com/wp-content/uploads/miss-peregrine1.jpg'],
'Animals' => [[
  { 'name' => 'Dog Training', 'image' => 'http://www.atlantagraphiclines.com/mybestbuddy/wp-content/uploads/2010/11/training1.jpg', 'description' => 'Dog training is the application of behavior analysis which uses the environmental events of antecedents and consequences to modify the behavior of a dog, either for it to assist in specific activities or undertake particular tasks, or for it to participate effectively in contemporary domestic life.' },
  { 'name' => 'Pets', 'image'=> 'http://www.redcarnationhotels.com/~/media/RCH/RB/Header/Pet2.ashx', 'description' => "A pet (or companion animal) is an animal kept primarily for a person's company or protection, as opposed to working animals, sport animals, livestock, and laboratory animals, which are kept primarily for performance, agricultural value, or research. The most popular pets are noted for their attractive appearances and their loyal or playful personalities." },
  { 'name' => 'Animal Control', 'image' => 'http://www.brewsterpolice.org/ps6.jpg', 'description' => 'An animal shelter or pound is a place where stray, lost, abandoned or surrendered animals, mostly dogs and cats, and sometimes sick or wounded wildlife are brought.' },
  { 'name' => 'Zoology', 'image'=> 'http://zoologydegreeonline.com/wp-content/uploads/slideshow-gallery/zoology_iStock_000008821414Small.jpg', 'description' => 'The branch of biology that relates to the animal kingdom, including the structure, embryology, evolution, classification, habits, and distribution of all animals, both living and extinct, and how they interact with their ecosystems.' },
  { 'name' => 'Cat Training', 'image'=> 'http://www.waltham.com/dyn/_pictures/approved-images/Caring-Science-images-Column-Images/1column220px/Cat-ClickerTraining-1c.jpg', 'description' => "Cat training is the process of modifying a domestic cat's behavior for entertainment or companionship purposes." }],'26', 'http://4.bp.blogspot.com/_HEjoNp_qRz8/TRcUkuX0olI/AAAAAAAAGUI/kq2MN4y46UM/s1600/Today%2527s+Cute+Funny+Silly+Animals+Friends+%25283%2529.jpg'],
'Photography' => [[
  { 'name' => 'Film', 'image'=> 'http://upload.wikimedia.org/wikipedia/commons/b/be/Film_strip.jpg', 'description' => 'A film, also called a movie or motion picture, is a series of still images which, when shown on a screen, creates the illusion of moving images due to the phi phenomenon. This optical illusion causes the audience to perceive continuous motion between separate objects viewed rapidly in succession.' },
  { 'name' => 'Digital', 'image'=> 'http://odisey.com/wp-content/uploads/2015/01/digital-photography.jpg', 'description' => 'Digital photography is a form of photography that uses cameras containing arrays of electronic photodetectors to capture images focused by a lens, as opposed to an exposure on photographic film. The captured images are digitized and stored as a computer file ready for further digital processing, viewing, digital publishing or printing.' },
  { 'name' => 'Black and White', 'image'=> 'http://7-themes.com/data_images/out/59/6974446-black-white-flower-photography.jpg', 'description' => 'Monochrome photography is photography where the image produced has a single hue, rather than recording the colors of the object that was photographed. It includes all forms of black-and-white photography, which produce images containing tones of grey ranging from black to white. Monochrome photography is mostly used for artistic reasons in the contemporary world.' },
  { 'name' => 'Portfolio Building', 'image'=> 'https://fstoplounge.com/wp-content/uploads/2014/05/StockPhotoPortfolio.jpg', 'description' => 'Building a portfolio of photographic works.' }],'27', 'http://www.wallpapernation.net/images/5147-black-and-white-camera-photography.jpg'],
'Sci-Fi & Fantasy' => [[
  { 'name' => 'Harry Potter', 'image' => 'http://7-themes.com/data_images/out/31/6873361-harry-potter.jpg', 'description' => "Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The series chronicles the adventures of a young wizard, Harry Potter, the titular character, and his friends Ronald Weasley and Hermione Granger, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry's quest to overcome the Dark wizard Lord Voldemort, who aims to become immortal, conquer the wizarding world, subjugate non-magical people, and destroy all those who stand in his way, especially Harry Potter." },
  { 'name' => 'Star Trek', 'image' => 'http://upload.wikimedia.org/wikipedia/en/2/2d/ST_TOS_Cast.jpg', 'description' => 'Star Trek is an American science fiction entertainment franchise created by Gene Roddenberry and under the ownership of CBS and Paramount.[Note 1] Star Trek: The Original Series and its live action TV spin-off shows, Star Trek: The Next Generation, Star Trek: Deep Space Nine, Star Trek: Voyager, and Star Trek: Enterprise as well as the Star Trek film series make up the main canon. The canonicity of Star Trek: The Animated Series is debated,[Note 2] and the expansive library of Star Trek novels and comics is generally considered non-canon, although still part of the franchise.' },
  { 'name' => 'Star Wars', 'image'=> 'http://i.kinja-img.com/gawker-media/image/upload/s--HE3syu_s--/c_fit,fl_progressive,q_80,w_636/wdiqe7iqkcrwxxulazch.png', 'description' => "Star Wars is an American epic space opera franchise centered on a film series created by George Lucas. The franchise depicts a galaxy described as 'far, far away' in the distant past, and portrays Jedi as a representation of good, in conflict with the Sith, their evil counterpart. Their weapon of choice, the lightsaber, is commonly recognized in popular culture. The franchise's storylines contain many themes, with influences from philosophy and religion." },
  { 'name' => 'LARPing', 'image'=> 'https://flavorwire.files.wordpress.com/2013/08/hpim3301.jpg', 'description' => "A live action role-playing game (LARP) is a form of role-playing game where the participants physically act out their characters' actions."},
  { 'name' => 'Comics', 'image' => 'http://s3.amazonaws.com/digitaltrends-uploads-prod/2014/04/dc-comics-universe.jpg', 'description' => 'Comics is a medium used to express ideas via images, often combined with text or other visual information. Comics frequently takes the form of juxtaposed sequences of panels of images. Often textual devices such as speech balloons, captions, and onomatopoeia indicate dialogue, narration, sound effects, or other information. ' }],'29', 'https://trekvar.files.wordpress.com/2010/08/star_trek_2009_desktop_2_by_d_greg.png'],
'Socializing' => [[
  { 'name' => 'Drinking', 'image'=> 'http://resources2.news.com.au/images/2013/10/21/1226618/260806-drinking-teen.jpg', 'description' => 'The act of imbibing alcoholic beverages.' },
  { 'name' => 'Karaoke', 'image'=> 'http://havasucityguide.com/wp-content/uploads/2013/05/Karaoke-Friends.jpg', 'description' => 'The act of singing singing off-key to popular songs.' },
  { 'name' => 'Team Sports', 'image'=> 'http://www.norris160.org/sites/default/files/page_images/3/team-sport_1_0.jpg', 'description' => 'Playing sports on a team!' },
  { 'name' => 'Talking', 'image'=> 'http://i.huffpost.com/gen/1427996/images/o-COLLEGE-STUDENTS-TALKING-facebook.jpg', 'description' => 'The hobby of non-stop chatter.' }],'31', 'http://www.personalitytutor.com/files/2012/03/Socializing-With-People.jpg'],
'Sports & Recreation' => [[
  { 'name' => 'Basketball', 'image'=> 'http://kicks967.com/wp-content/uploads/2015/02/basketball.jpg', 'description' => "Basketball is a sport played by two teams of five players on a rectangular court. The objective is to shoot a ball through a hoop 18 inches (46 cm) in diameter and 10 feet (3.048 m) high mounted to a backboard at each end. Basketball is one of the world's most popular and widely viewed sports." },
  { 'name' => 'Baseball', 'image'=> 'https://thenypost.files.wordpress.com/2014/09/ball.jpg?w=720&h=480&crop=1', 'description' => 'Baseball is a bat-and-ball game played between two teams of nine players each who take turns batting and fielding.' },
  { 'name' => 'Football', 'image'=> 'http://i.i.cbsi.com/cnwk.1d/i/tim/2013/02/20/football_620x350.jpg', 'description' => 'Football refers to a number of sports that involve, to varying degrees, kicking a ball with the foot to score a goal.' },
  { 'name' => 'Swimming', 'image'=> 'http://upload.wikimedia.org/wikipedia/commons/c/cd/231000_-_Swimming_Daniel_Bell_reflections_action_-_3b_-_2000_Sydney_event_photo.jpg', 'description' => 'Moving elegantly in water' },
  { 'name' => 'Soccer', 'image'=> 'http://www.sfexaminer.com/binary/6128/soccer.jpg', 'description' => 'The sport of actually kicking a ball all the time.' },
  { 'name' => 'Archery', 'image' => 'http://www.rainbowhomecenter.com/uploads/4/2/0/2/42023425/9056416_orig.jpg', 'description' => 'Archery is the practice or skill of using a bow to propel arrows. ' },
  { 'name' => 'Fencing', 'image' => 'http://helenaymca.org/wp-content/uploads/2010/12/fencing.jpg', 'description' => 'Contemporary fencing is the modern state of the western art of combat with the small sword.' }],'32', 'http://www.goldeninsidescoop.com/allsports.jpg'],
'Tech' => [[
  { 'name' => 'Programming', 'image'=> 'https://www.cs.ox.ac.uk/images/research/pl.jpg', 'description' => 'Writing code to get computers to do things.' },
  { 'name' => 'DBC', 'image'=> 'https://jlau-bucket-1.s3.amazonaws.com/uploads/topic/image/28/dev_bootcamp.jpg', 'description' => 'Where you are currently at. Like all the time.' },
  { 'name' => 'Robots', 'image'=> 'http://www.scienceclarified.com/photos/ai-and-robotics-3252.jpg', 'description' => "Dan's favorite thing." },
  { 'name' => 'Wearable Tech', 'image'=> 'http://www.emergingedtech.com/wp/wp-content/uploads/2014/04/wearable-tech.png', 'description' => 'Technology you can put on.' },
  { 'name' => 'Computer Building', 'image'=> 'http://dl.maximumpc.com/galleries/800pc/800pc_10_full.jpg', 'description' => 'Assembling and computer.' }],'34', 'http://blog.robotictradingsystems.com/Portals/158618/images/technology.jpg'],
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

      hash.each do |key, value|
        new_hobby = Hobby.new
        new_hobby.category_id = new_cat.id
        new_hobby.name = hash['name']
        new_hobby.image_url = hash['image']
        new_hobby.description = hash['description']
        new_hobby.save

        all_users.sample.hobbies << new_hobby
    # hash.each do |hobby, image|
    #   new_hobby = Hobby.create(name: hobby, description: Faker::Lorem.paragraph, image_url: image, category_id: new_cat.id)
    #   all_users.sample.hobbies << new_hobby

      3.times do
        new_question = Question.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, user_id: all_users.sample.id, hobby_id: new_hobby.id)
        3.times do
          new_answer = Answer.create(body: Faker::Company.bs, question_id: new_question.id, user_id: all_users.sample.id)
        end
      end
    end
  end
end
