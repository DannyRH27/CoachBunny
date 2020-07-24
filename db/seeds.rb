# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Sport.destroy_all
Coach.destroy_all
User.destroy_all
CoachDetail.destroy_all
CoachingSession.destroy_all

# create sports
sport1 = Sport.create(sport: "Football")
sport2 = Sport.create(sport: "Basketball")
sport3 = Sport.create(sport: "Soccer")
sport4 = Sport.create(sport: "Tennis")
sport5 = Sport.create(sport: "Golf")
# sport6 = Sport.create(sport: "Volleyball")
# sport7 = Sport.create(sport: "Swimming")
# sport8 = Sport.create(sport: "Baseball")
# sport9 = Sport.create(sport: "Boxing")
# sport10 = Sport.create(sport: "Rugby")
# sport11 = Sport.create(sport: "Cricket")
# sport12 = Sport.create(sport: "Wrestling")
# sport13 = Sport.create(sport: "Badminton")
# sport14 = Sport.create(sport: "Rock Climbing")
# sport15 = Sport.create(sport: "Handball")
# sport16 = Sport.create(sport: "Field Hockey")

# create coaches
# basketball
coach1 = Coach.create(first_name: "Steve", last_name: "Nash", zip_code: "85002", 
  coach_description: "2x NBA Most Valuable Player, 8x NBA All-Star, 3x All-NBA First Team, 
  2x All-NBA Second Team, 5x NBA assists leader")

coach2 = Coach.create(first_name: "Steph", last_name: "Curry", zip_code: "94501", 
  coach_description: "I'm a six-time NBA All-Star, 2x NBA MVP, and 3x NBA champ. I'm also pretty
  good at 3-point shots. I've also been golfing all my life.")

coach3 = Coach.create(first_name: "Byron", last_name: "Norris", zip_code: "97275", 
  coach_description: "I've coached AAU for the last 5 years")

coach4 = Coach.create(first_name: "Connie", last_name: "Gardner", zip_code: "83778", 
  coach_description: "I'm a former NCAA DII player")

coach5 = Coach.create(first_name: "Ed", last_name: "Waters", zip_code: "62474", 
  coach_description: "I'm a proven coach with proven methods that work")

coach24 = Coach.create(first_name: "Charles", last_name: "Welch", zip_code: "41266", 
  coach_description: "Former Summer League assistant coach")

coach25 = Coach.create(first_name: "Cecil", last_name: "French", zip_code: "62474", 
  coach_description: "I grew up playing ball, I know what it takes to bring your game to the next level")

coach26 = Coach.create(first_name: "Cliff", last_name: "Gibbs", zip_code: "83778", 
  coach_description: "15 years as a player, 5 years as a coach. I know what I'm doing")

coach27 = Coach.create(first_name: "Marvin", last_name: "Leonard", zip_code: "62474", 
  coach_description: "I'm a retired collegiate player, just looking to spread the love of the game.")

# football
coach6 = Coach.create(first_name: "Charles", last_name: "Woodson", zip_code: "94501", 
  coach_description: "Super Bowl Champ, 9x Pro Bowl, 4x First-team 
    All-Pro, NFL Defensive Player of the Year, NFL Defensive ROTY") 

coach7 = Coach.create(first_name: "Vince", last_name: "Young", zip_code: "85002", 
  coach_description: "The OG Vince Young National Champion, 2X Pro Bowler, 06 ROTY")

coach8 = Coach.create(first_name: "George", last_name: "Hamilton", zip_code: "75399", 
  coach_description: "I once caught a TD in 5th grade flag football")
 
coach9 = Coach.create(first_name: "Byron", last_name: "Norris", zip_code: "66294", 
  coach_description: "Rec league champion '17")

coach10 = Coach.create(first_name: "Khalil", last_name: "Mack", zip_code: "66294", 
  coach_description: "DL/LB for Chicago Bears. I'm a one man wrecking crew.")

coach28 = Coach.create(first_name: "Joy", last_name: "Foster", zip_code: "75399", 
  coach_description: "I coached my two boys through high school, now I'm just looking 
    for a way to keep the love of football alive")
 
coach29 = Coach.create(first_name: "Derek", last_name: "Cobb", zip_code: "66294", 
  coach_description: "Dual sport athlete (Football & Track), CSS Champion '13")

coach30 = Coach.create(first_name: "Sean", last_name: "Cole", zip_code: "29596", 
  coach_description: "I played 5 years at UMich.")

# tennis
coach11 = Coach.create(first_name: "Andy", last_name: "Roddick", zip_code: "68022", 
  coach_description: "I used to play tennis")
  
coach12 = Coach.create(first_name: "Pamela", last_name: "McGuire", zip_code: "85264", 
  coach_description: "I grew up playing tennis, it's what I was born to do.")

coach13 = Coach.create(first_name: "Archie", last_name: "Simon", zip_code: "73538", 
  coach_description: "CSS runner up '05")
 
coach14 = Coach.create(first_name: "Brook", last_name: "Hicks", zip_code: "24679", 
  coach_description: "I have 10 years experience with coaching")

coach31 = Coach.create(first_name: "Judy", last_name: "Ryan", zip_code: "68022", 
  coach_description: "I grew up in the area, played Tennis at all the levels up to collegiate.")
  
coach32 = Coach.create(first_name: "Ruth", last_name: "Wright", zip_code: "85264", 
  coach_description: "CPR certified, mother of 2. I'm well used to coaching.")

coach33 = Coach.create(first_name: "Tommy", last_name: "Hughes", zip_code: "73538", 
  coach_description: "As a former athlete, I know what it takes to bring your game up to the next level.")
 
coach34 = Coach.create(first_name: "Shirley", last_name: "Potter", zip_code: "24679", 
  coach_description: "I've been a local volunteer coach for the last 2 decades.")

# golf
coach15 = Coach.create(first_name: "Lorena", last_name: "Ochoa", zip_code: "22434", 
  coach_description: "Retired at #1. There is literally no one better than me. Ever.")

coach16 = Coach.create(first_name: "Angel", last_name: "Johnson", zip_code: "90645", 
  coach_description: "Let me teach you my secrets to up your putting game.")
  
coach17 = Coach.create(first_name: "Steve", last_name: "Cobb", zip_code: "24601", 
  coach_description: "I can bring you from clubhouse zero to clubhouse hero.")
  
coach18 = Coach.create(first_name: "Steven", last_name: "Floyd", zip_code: "97338", 
  coach_description: "I am respectful but hard working. Always on time, always train hard!")

coach35 = Coach.create(first_name: "Brooke", last_name: "Moran", zip_code: "22434", 
  coach_description: "Former pro-golfer")

coach36 = Coach.create(first_name: "Arnold", last_name: "Gregory", zip_code: "90645", 
  coach_description: "I've dedicated my entire life to golfing, now I'm ready to pass on my knowledge.")
  
coach37 = Coach.create(first_name: "Hannah", last_name: "Holt", zip_code: "24603", 
  coach_description: "My credentials include various U15 course records, HS Varsity Golf captain, and golf team at USC.")
  
coach38 = Coach.create(first_name: "Phil", last_name: "Blackmon", zip_code: "97338", 
  coach_description: "SCU Golf Team '17")

# soccer
coach19 = Coach.create(first_name: "Mia", last_name: "Hamm", zip_code: "36701", 
  coach_description: "2x Olympic gold medalist")
  
coach20 = Coach.create(first_name: "Zinedine", last_name: "Zidane", zip_code: "10005", 
  coach_description: "#zizou")
 
coach21 = Coach.create(first_name: "Elsa", last_name: "Richardson", zip_code: "72942", 
  coach_description: "I'm a highly detail-oriented coach. After all, the devils in the details.")
  
coach22 = Coach.create(first_name: "Nicolas", last_name: "Boone", zip_code: "24593", 
  coach_description: "Local middle school coach with some free time on the weekends")

coach23 = Coach.create(first_name: "Santiago", last_name: "Jaramillo", zip_code: "83569", 
  coach_description: "My friends call me Santi, nice to meet you")

coach39 = Coach.create(first_name: "Alfonso", last_name: "Cole", zip_code: "36701", 
  coach_description: "I played striker growning but transitioned to defense at the collegiate level.
    I know what methods are best for training both sides of the ball")
  
coach40 = Coach.create(first_name: "Tommie", last_name: "Ball", zip_code: "10005", 
  coach_description: "I was the CYSA scoring leader '18-'20. I can build you to become the best forward.")
 
coach41 = Coach.create(first_name: "Lawrence", last_name: "Stevens", zip_code: "72942", 
  coach_description: "+20 years on field experience, specializing in goalie training.")
  
coach42 = Coach.create(first_name: "Rachel", last_name: "Townsend", zip_code: "24593", 
  coach_description: "Saratoga AYSO coach 2014-2017. Excellent communication skills and ability to work with young kids")

coach43 = Coach.create(first_name: "Lula", last_name: "Perez", zip_code: "83569", 
  coach_description: "I played center mid for WVU.")

# create users
user1 = User.create(first_name: "Demo", last_name: "User", password: "demouser", email: "demo@demo.com", zip_code: "95070")
user2 = User.create(first_name: "first", last_name: "last", password: "password", email: "test@test.com", zip_code: "95070")

# create coach details
CoachDetail.create(coach_id: coach1.id, sport_id: sport2.id, duration: 30, coaching_rate: 120, elite_coach: true, equipment: true, session_description: "I can share with you some of the skills and drills that brought me to where I am.")
CoachDetail.create(coach_id: coach2.id, sport_id: sport2.id, duration: 45, coaching_rate: 300, elite_coach: true, equipment: false, session_description: "I specialize in shooting drills and ball handling. I only have a ball, you'll have to bring anything else you want to work on.")
CoachDetail.create(coach_id: coach3.id, sport_id: sport2.id, duration: 60, coaching_rate: 40, elite_coach: false, equipment: true, session_description: "I have all the ladders and cones. I'm reliable and on time.")
CoachDetail.create(coach_id: coach4.id, sport_id: sport2.id, duration: 30, coaching_rate: 20, elite_coach: false, equipment: true, session_description: "I'm flexible with my schedule, just let me know what you'd like to work and let's chat!")
CoachDetail.create(coach_id: coach5.id, sport_id: sport2.id, duration: 45, coaching_rate: 40, elite_coach: false, equipment: true, session_description: "I've coached youth league and rec league basketball. If you're younger and want to build a solid foundation, I'm your guy.")
CoachDetail.create(coach_id: coach6.id, sport_id: sport1.id, duration: 30, coaching_rate: 40, elite_coach: true, equipment: false, session_description: "My specialty is defense: reading the QB, reading the pass, adjusting your body. I'm happy to work with you on those and more.")
CoachDetail.create(coach_id: coach7.id, sport_id: sport1.id, duration: 120, coaching_rate: 300, elite_coach: true, equipment: false, session_description: "I can adjust your entire throwing game, from handling the snap, to throwing form, to 3step and 5step drops; I've been there.")
CoachDetail.create(coach_id: coach8.id, sport_id: sport1.id, duration: 45, coaching_rate: 45, elite_coach: false, equipment: false, session_description: "I'm reliable, show up on time, and promise to get you to put a sweat in.")
CoachDetail.create(coach_id: coach9.id, sport_id: sport1.id, duration: 90, coaching_rate: 50, elite_coach: false, equipment: false, session_description: "I can share some of the same principles that made me a rec league champ. Get ready to work!")
CoachDetail.create(coach_id: coach10.id, sport_id: sport1.id, duration: 60, coaching_rate: 400, elite_coach: true, equipment: true, session_description: "You think you know how to play DE or OLB? Train with me, you'll see what it's like in the league.")
CoachDetail.create(coach_id: coach11.id, sport_id: sport4.id, duration: 30, coaching_rate: 140, elite_coach: true, equipment: true, session_description: "As someone who's been the best, I can help with anything you need to work on. Court vision, movement, swings, I can teach it all.")
CoachDetail.create(coach_id: coach12.id, sport_id: sport4.id, duration: 45, coaching_rate: 70, elite_coach: false, equipment: true, session_description: "I specialize in womens double's but I'm happy to help with any other tennis-needs.")
CoachDetail.create(coach_id: coach13.id, sport_id: sport4.id, duration: 60, coaching_rate: 70, elite_coach: false, equipment: true, session_description: "I have years of player experience under my belt and I'm happy to share my knowledge with the next generation.")
CoachDetail.create(coach_id: coach14.id, sport_id: sport4.id, duration: 30, coaching_rate: 55, elite_coach: false, equipment: true, session_description: "I've been a coach for more than a decade. Many of my students have continued their careers at the collegiate level.")
CoachDetail.create(coach_id: coach15.id, sport_id: sport5.id, duration: 30, coaching_rate: 150, elite_coach: true, equipment: true, session_description: "I've always been a student of the game; it's why I'm the best :) Now, I'm ready to be the teacher.")
CoachDetail.create(coach_id: coach16.id, sport_id: sport5.id, duration: 45, coaching_rate: 90, elite_coach: false, equipment: false, session_description: "My friends always ask me how my short game is so great, so now I'm ready to share it with you. Putting form above all!")
CoachDetail.create(coach_id: coach17.id, sport_id: sport5.id, duration: 60, coaching_rate: 120, elite_coach: false, equipment: false, session_description: "I've been an avid golfer for many years and I've taken my share of lessons. I know what it feels like to get started on the green, but I can help put your fears at ease.")
CoachDetail.create(coach_id: coach18.id, sport_id: sport5.id, duration: 120, coaching_rate: 50, elite_coach: false, equipment: true, session_description: "I caddied for Tiger a few years ago, I've seen his swing and how he's worked on the green. I can share those same skills with you.")
CoachDetail.create(coach_id: coach19.id, sport_id: sport3.id, duration: 90, coaching_rate: 250, elite_coach: true, equipment: false, session_description: "As one of the best ever to play the sport for the USWNT, I know what I'm doing, especially in the striker/foward role.")
CoachDetail.create(coach_id: coach20.id, sport_id: sport3.id, duration: 30, coaching_rate: 200, elite_coach: true, equipment: false, session_description: "Field vision, passing, touch, ball control. I can train you for all those things. Headers too.")
CoachDetail.create(coach_id: coach21.id, sport_id: sport3.id, duration: 60, coaching_rate: 30, elite_coach: false, equipment: true, session_description: "I can help you kick the ball around.")
CoachDetail.create(coach_id: coach22.id, sport_id: sport3.id, duration: 120, coaching_rate: 65, elite_coach: false, equipment: true, session_description: "I've coached a few teams, and inevitably one-on-one coaching as well. I have some good drills/training techniques I'd be happy to pull you through.")
CoachDetail.create(coach_id: coach23.id, sport_id: sport3.id, duration: 30, coaching_rate: 70, elite_coach: false, equipment: true, session_description: "I played a lot growing up. I'm especially good with ball control and touch.")
CoachDetail.create(coach_id: coach23.id, sport_id: sport4.id, duration: 30, coaching_rate: 45, elite_coach: false, equipment: true, session_description: "I can rally a few and give some pointers. I'm reliable and on time, and I have all the rackets and balls needed.")
CoachDetail.create(coach_id: coach18.id, sport_id: sport4.id, duration: 45, coaching_rate: 30, elite_coach: false, equipment: true, session_description: "If you're looking for a good workout and some friendly vibes, I'm sure to be that guy!")
CoachDetail.create(coach_id: coach21.id, sport_id: sport2.id, duration: 90, coaching_rate: 90, elite_coach: false, equipment: true, session_description: "My kids play flag football, so I have all the equipment for that. I can work with you on footwork, or some light drill work.")
CoachDetail.create(coach_id: coach3.id, sport_id: sport1.id, duration: 45, coaching_rate: 60, elite_coach: false, equipment: true, session_description: "I've have experience training with kids in AAU and I played HS football growing up. I have all the equipment and a book full of things we can work on.")
CoachDetail.create(coach_id: coach5.id, sport_id: sport5.id, duration: 60, coaching_rate: 65, elite_coach: false, equipment: false, session_description: "Whether you want help with your putting, your form, or just have a fun day on the green, I have enough expertise to improve your game.")
CoachDetail.create(coach_id: coach2.id, sport_id: sport5.id, duration: 60, coaching_rate: 300, elite_coach: true, equipment: false, session_description: "I can definitely change your golf game.")

CoachDetail.create(coach_id: coach24.id, sport_id: sport2.id, duration: 30, coaching_rate: 40, elite_coach: false, equipment: true, session_description: "I've worked with plenty of players during my time in Summer League. I can push you to your limits and redefine your game.")
CoachDetail.create(coach_id: coach25.id, sport_id: sport2.id, duration: 45, coaching_rate: 60, elite_coach: false, equipment: false, session_description: "I love the game, I grew up with the game, and now I'm a teacher of the game. I'm pulling from years of experience.")
CoachDetail.create(coach_id: coach26.id, sport_id: sport2.id, duration: 60, coaching_rate: 100, elite_coach: true, equipment: true, session_description: "I've spent +20 years as a player and a coach. I can work with you on a variety of things, and I have all the needed equipment.")
CoachDetail.create(coach_id: coach27.id, sport_id: sport2.id, duration: 120, coaching_rate: 120, elite_coach: false, equipment: false, session_description: "I played a few years at the D3 level, coached a little growing up, but now I'm ready to get back in it. I'm responsible and my coaching methods are very unique.")

CoachDetail.create(coach_id: coach28.id, sport_id: sport1.id, duration: 30, coaching_rate: 80, elite_coach: false, equipment: false, session_description: "I have the patience to work with you on your athlete needs. I'm a believer in repetition and hard work.")
CoachDetail.create(coach_id: coach29.id, sport_id: sport1.id, duration: 60, coaching_rate: 100, elite_coach: false, equipment: true, session_description: "As a dual sport athlete, I have the experience to bring out the best in you. Running, sprinting, lateral motion, if you're moving, I can make it better.")
CoachDetail.create(coach_id: coach30.id, sport_id: sport1.id, duration: 60, coaching_rate: 100, elite_coach: true, equipment: false, session_description: "I played all 5 years at UMich and received some of the best coaching in the world. As an athlete myself, I understand what it takes to motivate and move you.")

CoachDetail.create(coach_id: coach31.id, sport_id: sport4.id, duration: 30, coaching_rate: 50, elite_coach: false, equipment: true, session_description: "I am an experienced tennis coach and player. I've always had exceptional coaches growing up, now I want to help the next generation.")
CoachDetail.create(coach_id: coach32.id, sport_id: sport4.id, duration: 30, coaching_rate: 60, elite_coach: true, equipment: false, session_description: "I've practiced with my kids for years, and I have always received good feedback. I have a strong attention to detail, able to spot those tiny errors in your swing.")
CoachDetail.create(coach_id: coach33.id, sport_id: sport4.id, duration: 45, coaching_rate: 70, elite_coach: false, equipment: false, session_description: "I can help with your serve, backhand and forehand swings, and court agility. I have a series of drills I love to do, and I'd love to work with you on them.")
CoachDetail.create(coach_id: coach34.id, sport_id: sport4.id, duration: 90, coaching_rate: 100, elite_coach: false, equipment: true, session_description: "I've coached for decades. I have all the equipment, so all you need to bring is a winning attitude. I can teach from basics up to high advanced.")

CoachDetail.create(coach_id: coach35.id, sport_id: sport5.id, duration: 60, coaching_rate: 50, elite_coach: false, equipment: true, session_description: "I am a former sponsored golfer and my career taught me a lot about how to train properly. I'm able to look at your form and comb through any small mistakes you might have.")
CoachDetail.create(coach_id: coach36.id, sport_id: sport5.id, duration: 60, coaching_rate: 80, elite_coach: false, equipment: false, session_description: "I can help with your game, your putt, your drive, your swing, etc. You name it, I've done it on the green. Experience is key, and I have plenty of that.")
CoachDetail.create(coach_id: coach37.id, sport_id: sport5.id, duration: 90, coaching_rate: 100, elite_coach: false, equipment: false, session_description: "Short game? Long game? I can help with both and everything in between.")
CoachDetail.create(coach_id: coach38.id, sport_id: sport5.id, duration: 120, coaching_rate: 200, elite_coach: true, equipment: true, session_description: "I played golf for SCU and have a good understanding of the game. I can help you with all aspects, just let me know what you'd like to work on.")

CoachDetail.create(coach_id: coach39.id, sport_id: sport3.id, duration: 45, coaching_rate: 90, elite_coach: true, equipment: true, session_description: "I am an experienced player and coach. I've trained under some of the best coaches for both offense and defense, I definitely have knowledge to share.")
CoachDetail.create(coach_id: coach40.id, sport_id: sport3.id, duration: 60, coaching_rate: 100, elite_coach: false, equipment: false, session_description: "I'm a striker, and can help with everything that entails: touch, off-ball movement, technique, shooting, etc.")
CoachDetail.create(coach_id: coach41.id, sport_id: sport3.id, duration: 90, coaching_rate: 80, elite_coach: true, equipment: false, session_description: "Everybody needs a good keeper! I can help you build your reaction time, leadership, coordination, and all the other traits that make you a wall on defense.")
CoachDetail.create(coach_id: coach42.id, sport_id: sport3.id, duration: 120, coaching_rate: 200, elite_coach: false, equipment: true, session_description: "I have a few years of teaching and coaching experience, and can transfer that directly to your needs. Just let me know what you would like to work on. I have all the cones/goals/balls needed as well.")
CoachDetail.create(coach_id: coach43.id, sport_id: sport3.id, duration: 120, coaching_rate: 220, elite_coach: false, equipment: false, session_description: "I grew up prioritizing field vision, and that's something I can help you with. From passing and footwork, to being a great distributor, I can bring out your potential as a center mid.")

# create coach sessions
CoachingSession.create(sport_id: sport1.id, coach_id: coach10.id, user_id: user1.id, training_date: "2020-05-29 17:00", training_duration: 60, training_rate: 400, training_description: "I would like to work on my power rush technique.")
CoachingSession.create(sport_id: sport2.id, coach_id: coach2.id, user_id: user1.id, training_date: "2020-07-11 18:00", training_duration: 45, training_rate: 300, training_description: "I need help with my 3s")
CoachingSession.create(sport_id: sport2.id, coach_id: coach4.id, user_id: user1.id, training_date: "2020-07-29 19:00", training_duration: 30, training_rate: 20, training_description: "I want to work on my ball handles")
CoachingSession.create(sport_id: sport5.id, coach_id: coach15.id, user_id: user1.id, training_date: "2020-08-07 18:00", training_duration: 30, training_rate: 150, training_description: "I'm having issues on my swing follow through, would love some advice")
CoachingSession.create(sport_id: sport4.id, coach_id: coach13.id, user_id: user1.id, training_date: "2020-06-05 23:00", training_duration: 60, training_rate: 70, training_description: "Just looking to get out and get some exercise")
CoachingSession.create(sport_id: sport3.id, coach_id: coach21.id, user_id: user1.id, training_date: "2020-06-20 16:00", training_duration: 60, training_rate: 60, training_description: "passing drills please")
CoachingSession.create(sport_id: sport2.id, coach_id: coach1.id, user_id: user1.id, training_date: "2020-07-05 20:00", training_duration: 30, training_rate: 120, training_description: "wanna learn court vision from the best")