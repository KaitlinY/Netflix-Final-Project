require 'bundler'
Bundler.require
require_relative 'models/suggestion.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  
  post "/choice" do
    erb :choice
  end
  
  get "/movies" do
    erb :movies
  end
  
  get "/tv" do
    erb :tv
  end
  
  post "/tv" do
     @suggestion = Suggestion.new(params["genre"], params["amount"], params["rating"], 0, params["gender"])
 @tv_hash = {
  :action => {
   :less_one => {
      :tv_g => {
       :male => {
          :phineas_and_ferb => ["Phineas and Ferb", "http://images2.fanpop.com/images/photos/3900000/Phineas-and-Ferb-disney-channel-3919669-1024-768.jpg"]
          },
        :female => {
          :ever_after_high => ["Ever After High", "http://i.ytimg.com/vi/v6UoMQhOMMY/maxresdefault.jpg"]
          },
        
        },
      :tv_pg => {
            :male => {
              :young_justice => ["Young Justice", "https://upload.wikimedia.org/wikipedia/en/6/67/Young_Justice_TV_series.PNG"]
          },
        :female => {
          :monster_high => ["Monster High: Haunted", "http://4.bp.blogspot.com/-EUmwqyynsiY/VIIttb5hCsI/AAAAAAAAWPI/0OQbKOuQ20A/s1600/10314729_928282997183222_7638790915624532164_n.jpg"]
          },
        
        },
      :tv_14 => {
        
            :male => {
              :thor => ["Thor and Loki", "http://ia.media-imdb.com/images/M/MV5BMTkxMTg1ODQ1MF5BMl5BanBnXkFtZTgwMDQ2ODcwMzE@._V1_SY317_CR104,0,214,317_AL_.jpg
 "]
          },
        :female => {
          :alphas => ["Alphas", "https://upload.wikimedia.org/wikipedia/en/thumb/2/2e/Alphasposter.jpg/250px-Alphasposter.jpg"]
          },
        
        },
      :tv_ma => {
        
            :male => {
              :daredevil => ["Marvel's Daredevil", "https://legionofleia.files.wordpress.com/2015/02/screen-shot-2015-02-26-at-1-08-45-pm.png"]
          },
        :female => {
         :archer => ["Archer", "http://stagebuddy.com/wp-content/uploads/2014/01/FX_Archer_WP_1024x768_2.jpg"]
          },
        
        },
      
      },
   :more_one => {
            :tv_g => {
              
                  :male => {
                    :danger_mouse => ["Danger Mouse", "http://thegrandshuckett.com/wp-content/uploads/2014/06/danger_mouse_cartoon_wallpaper-normal.jpg"]
          },
        :female => {
          :inspector_gadget => ["Inspector Gadget", "http://ia.media-imdb.com/images/M/MV5BMTIzMzM1MTY1OF5BMl5BanBnXkFtZTcwNjMzNzIzMQ@@._V1_SX640_SY720_.jpg"]
          },
        
        },
      :tv_pg => {
        
            :male => {
              :doctor_who => ["Doctor Who", "http://images.amcnetworks.com/bbcamerica.com/wp-content/blogs.dir/18/files/2013/10/Doctorwho_50th-anniversary_thumbnail_02.jpg"]
          },
        :female => {
          :sliders => ["Sliders", "http://images.fanpop.com/images/image_uploads/Sliders-Cast-sliders-410734_1024_768.jpg"]
          },
        
        },
      :tv_14 => {
        
            :male => {
              :burn_notice => ["Burn Notice", "http://ia.media-imdb.com/images/M/MV5BMTczMzg4NjU1Ml5BMl5BanBnXkFtZTcwODc4NzY5Nw@@._V1_SY317_CR28,0,214,317_AL_.jpg"]
          },
        :female => {
          :buffy => ["Buffy the Vampire Slayer", "http://www.90s411.com/images/buffy-the-vampire-slayer-costume-idea.jpg"]
          },
        
        },
      :tv_ma => {
        
            :male => {
          :arrow => ["Arrow", "http://primetime.unrealitytv.co.uk/wp-content/uploads/2014/07/arrow.jpg"]
          },
        :female => {
           :archer => ["Archer", "http://stagebuddy.com/wp-content/uploads/2014/01/FX_Archer_WP_1024x768_2.jpg"]
          },
        
        },
      
      
      },
    
    },
  :comedy => {
      :less_one => {
              :tv_g => {
                
                    :male => {
                      :rich => ["Richie Rich", "http://ak-hdl.buzzfed.com/static/2014-12/9/0/enhanced/webdr10/grid-cell-4743-1418102942-2.jpg"]
          },
        :female => {
          :strawberry => ["Strawberry Shortcake: Berry Bitty Adventures", "http://images6.fanpop.com/image/photos/33300000/Strawberry-strawberry-shortcake-in-3d-33347644-259-194.jpg"]
          },
        
        },
      :tv_pg => {
        
            :male => {
              :puss => ["Puss and Boots", "https://upload.wikimedia.org/wikipedia/en/thumb/d/d0/Puss_in_Boots_Poster.jpg/220px-Puss_in_Boots_Poster.jpg
 "]
          },
        :female => {
          :really_me => ["Really Me", "http://www.family.ca/data/shows/minisite/4768_1299683758.jpg"]
          },
        
        },
      :tv_14 => {
        
            :male => {
              :glades => ["The Glades", "http://www.tvgoodness.com/wp-content/uploads/2013/05/TheGladesYankeeDan2.jpg
 "]
          },
        :female => {
          :carrie_diaries => ["The Carrie Diaries", "http://guiadesobrevivencia.com/teste/wp-content/uploads/2014/05/The-Carrie-Diaries.jpg"]
          },
        
        },
      :tv_ma => {
        
            :male => {
              :louie => ["Louie", "http://renewcanceltv.com/wp-content/uploads/2015/04/louie31.jpg"]
          },
        :female => {
          :grace => ["Grace and Frankie", "http://cdn4.nflximg.net/images/6254/21056254.jpg"]
          },
        
        },
      
      },
    :more_one => {
            :tv_g => {
              
                  :male => {
                    :assembly => ["Some Assembly Required", "http://www.reellifewithjane.com/wp-content/uploads/2015/06/Some-Assembly-Required.jpg"]
          },
        :female => {
          :charlie => ["Good Luck Charlie", "http://vignette4.wikia.nocookie.net/goodluckcharlie/images/6/60/Good-Luck-Charlie-Season-1-iTunes-Artwork.jpg/revision/latest?cb=20120901232444"]
          },
        
        },
      :tv_pg => {
        
        :male => {
          :rules => ["Rules of Engagement", "http://www.sonypictures.com/tv/rulesofengagement/assets/images/onesheet.jpg"]
          },
       :female => {
          :diva => ["Drop Dead Diva", "http://cdn.cucirca.eu/wp-content/uploads/Drop-Dead-Diva.jpg"]
          },
        
        },
      :tv_14 => {
        
            :male => {
              :parks_and_rec => ["Parks and Recreation", "http://d1oi7t5trwfj5d.cloudfront.net/7e/0a/d5390fc8424b8abe3d06112f7b7f/parks-rec.jpg"]
          },
        :female => {
          :melissa => ["Mellisa & Joey", "http://ia.media-imdb.com/images/M/MV5BMTYwMzk2NTQ0NV5BMl5BanBnXkFtZTgwNDg3MDgyMDE@._V1_SX640_SY720_.jpg"]
          },
        
        },
      :tv_ma => {
        
            :male => {
              :sunny => ["It's Always Sunny in Philadelphia", "http://www.kcconfidential.com/wp-content/uploads/2012/10/SunnyCover.jpg"]
          },
        :female => {
          :weeds => ["Weeds", "https://criticultredux.files.wordpress.com/2013/06/oh-what-a-tangled-web-weeds-11180830-1280-1024.jpg
 "]
          },
        
        },
      
      
      }
    },
  :drama => {
      :less_one => {
              :tv_g => {
                
                    :male => {
          :oscar => ["Oscar's Oasis", "http://celebrating-family.com/wp-content/uploads/2012/10/70537.jpg"]
          },
        :female => {
          :lighting => ["Lightning Point", " https://s-media-cache-ak0.pinimg.com/236x/04/ab/76/04ab766bc603714f279a92fe7b368308.jpg"]
          },
        
        },
      :tv_pg => {
        
            :male => {
              :power_rangers => ["Power Rangers", "http://40.media.tumblr.com/c809b3cd81889a34ea42690cdc82e553/tumblr_naawg0c7Cl1qd4rf5o1_1280.jpg"]
          },
        :female => {
          :life => ["Life With Boys", "http://www.larissamaircasting.com/Images/LifeWithBoys2.jpg"]
          },
        
        },
      :tv_14 => {
        
            :male => {
              :sherlock => ["Sherlock", "https://www.networkknowledge.tv/sites/default/files/sherlock.jpg"]
          },
        :female => {
          :miss_xv => ["Miss XV", "http://cafedecamilo.mundonick.com/descargas/wall2/MIIS%20XV%20wall%202%20-%201280x1024.jpg"]
          },
        
        },
      :tv_ma => {
        
            :male => {
              :marco_polo => ["Marco Polo", "http://vignette1.wikia.nocookie.net/marco-polo/images/5/54/Marco-Polo.jpg/revision/latest?cb=20150311005247"]
          },
        :female => {
          :tara => ["United States of Tara", "https://meremortalblog.files.wordpress.com/2013/01/usoftara.jpg"]
          },
        
        },
      
      },
    :more_one => {
            :tv_g => {
              
                  :male => {
                    :chuck => ["The Adventures of Chuck and Friends", "http://zap2it.tmsimg.com/assets/p8303318_b_h3_aa.jpg
 "]
          },
        :female => {
          :mako => ["Mako Mermaids: An H20 Adventure", "http://www.beyondhe.com.au/media/media/cache/594/SH0138_Mako-Mermaids_main.jpg"]
          },
        
        },
      :tv_pg => {
        
            :male => {
              :total_td => ["Total TD Drama", "http://freshtvinc.com/wp-content/uploads/2012/12/total-drama-fresh-tv-207x300.jpg"]
          },
        :female => {
          :isa => ["Isa: tkm", "http://img1.wikia.nocookie.net/__cb20120618023246/bobsburgerpedia/images/0/02/ISA_TKM_LOGO.jpg"]
          },
        
        },
      :tv_14 => {
        
            :male => {
              :one_tree_hill => ["One Tree Hill", "http://ia.media-imdb.com/images/M/MV5BMTU5MTE0Mzg4Nl5BMl5BanBnXkFtZTcwNjc0NDUwNA@@._V1_SX640_SY720_.jpg"]
          },
        :female => {
          :secret_life => ["The Secret Life of the American Teenager", "http://ia.media-imdb.com/images/M/MV5BMTc2MDMyNTY1Nl5BMl5BanBnXkFtZTcwMzc2Mjk3NA@@._V1_SY317_CR0,0,214,317_AL_.jpg"]
          },
        
        },
      :tv_ma => {
        
            :male => {
              :dexter => ["Dexter", "http://images.huffingtonpost.com/2015-06-17-1434504624-2643893-dexter.jpg"]
          },
        :female => {
          :skins => ["Skins", "http://when-will.net/images/artikel/2014/oktober/skins.jpg"]
          },
        
        },
      
      
      },
    },
 
  :sci_fi => {
      :less_one => {
              :tv_g => {
                
                    :male => {
                      :pokemon => ["Pokemon The Series: Black and White", "https://i1.ytimg.com/sh/kXrgPajakCY/showposter.jpg?v=5101d612"]
          },
        :female => {
          :octonauts => ["Octonauts", "http://www.octonauts.com/im/press/octotv.png"]
          },
        
        },
      :tv_pg => {
        
            :male => {
              :helix =>[ "Helix", "http://cdn.bloody-disgusting.com/wp-content/uploads/2013/12/Helix_1386794747_FULL.jpg"]
          },
        :female => {
          :lab_rates => ["Lab Rats", "http://vignette3.wikia.nocookie.net/lab-rats/images/4/4c/S2Cast.jpg/revision/latest?cb=20140612130056"]
          },
        
        },
      :tv_14 => {
        
            :male => {
              :vampire_diaries => ["Vampire Diaries", "http://ia.media-imdb.com/images/M/MV5BMjA4MjAxNTY1OV5BMl5BanBnXkFtZTcwNjk3MDIwNA@@._V1_SX640_SY720_.jpg"]
          },
        :female => {
          :warehouse => ["Warehouse 13", "http://static.comicvine.com/uploads/original/11113/111136241/4337650-2499254771-tv_wa.jpg"]
          },
        
        },
      :tv_ma => {
        
            :male => {
          :black_mirror => ["Black Mirror", "ttp://ia.media-imdb.com/images/M/MV5BMTk5NTk1Mzg3Ml5BMl5BanBnXkFtZTcwNDAyNzY3OA@@._V1_SY317_CR5,0,214,317_AL_.jpg"]
          },
        :female => {
          :salem => ["Salem", "http://ia.media-imdb.com/images/M/MV5BMjIzOTA1MTA2Ml5BMl5BanBnXkFtZTgwNjk2MDI2NDE@._V1_SX214_AL_.jpg"]
          },
        
        },
      
      },
    :more_one => {
            :tv_g => {
              
                  :male => {
                    :strang_hill_high => ["Strange Hill High", "http://tbivision.com/wp-content/uploads/2013/02/Strange-HIll-High-key-art.jpg"]
          },
        :female => {
          :sparticle => ["The Sparticle Mystery", "http://episodes-tv.com/image/the.sparticle.mystery.jpg"]
          },
        
        },
      :tv_pg => {
        
            :male => {
          :touch => ["Touch", "http://ia.media-imdb.com/images/M/MV5BNTI3OTcwNTk3Ml5BMl5BanBnXkFtZTcwNzA3NzAzNw@@._V1_SX640_SY720_.jpg"]
          },
        :female => {
          :once => ["Once Upon a Time", "https://pmctvline2.files.wordpress.com/2012/07/onceuponatime_sdcc_poster_full.jpg"]
          },
        
        },
      :tv_14 => {
        
            :male => {
              :farscape => ["Farscape", "http://www.henson.com/images/fantasy/farscape/fs-header.jpg"]
          },
        :female => {
          :fringe => ["Fringe", "http://bencrabtree.me/science/wp-content/uploads/2012/12/fringe.jpeg"]
          },
        
        },
      :tv_ma => {
        
            :male => {
              :sense8 => ["Sense 8", "http://releasedateportal.com/wp-content/uploads/2015/05/safe_image.png"]
          },
        :female => {
          :ascension => ["Ascension", "http://thegeekiary.com/wp-content/uploads/2014/12/Ascension1.jpg"]
          },
        
        },
      
      
      },
    },
  }
    erb :endpage
  end

  
  
  post "/movies" do
    @suggestion = Suggestion.new(params["genre"], 0, params["rating"], params["series"], params["gender"])
      @movie_hash = {
  :action =>{
    :rating_g =>{
      :series => {
        :male => {
          :tarzan => ["Tarzan","http://www.rekamesei.hu/wp-content/uploads/2014/01/tarzan-kiskep-rekamesei.jpg"]
          },
        :female => {
          :tinker_bell => ["Tinkerbell and the Legend of the Neverbeast", "https://upload.wikimedia.org/wikipedia/en/9/98/Tinker_Bell_and_the_Legend_of_the_NeverBeast_poster.jpg"]
          },
        },
      :series_no => {
          :male => {
            :curious_george => ["Curious George", "http://ecx.images-amazon.com/images/I/51N2N01ZT6L.jpg"]
          },
        :female => {
          :the_fox_and_hound => ["The Fox and the Hound", "http://i.ytimg.com/vi/AjY4MBFwBvA/movieposter.jpg"]
          },
        },
      },
    :rating_pg =>{
      :series => {
        :male => {
            :how_to_train_your_dragon => ["How to Train your Dragon 2", "https://upload.wikimedia.org/wikipedia/en/a/af/How_to_Train_Your_Dragon_2_poster.jpg"]
          },
        :female => {
            :spy_kids => ["Spy Kids","https://upload.wikimedia.org/wikipedia/en/2/26/Spy_kids.jpg"]
          },
        },
      :series_no => {
          :male => {
            :alpha_and_omega => ["Alpha and Omega","http://ia.media-imdb.com/images/M/MV5BMTg4NzQ1ODcxMF5BMl5BanBnXkFtZTcwMDg0MTU2Mw@@._V1_SX640_SY720_.jpg"]
          },
        :female => {
          :the_croods => ["The Croods","http://ia.media-imdb.com/images/M/MV5BMTcyOTc2OTA1Ml5BMl5BanBnXkFtZTcwOTI1MjkzOQ@@._V1_SX640_SY720_.jpg"]
          },
        },
      
      },
    :rating_pg13 =>{
      :series => {
          :male => {
            :ip_man => ["Ip Man: The Final Fight","http://static1.1.sqspcdn.com/static/f/496935/23561862/1379982618790/IPManTheFinalFight_POSTER.jpg?token=4lgczsXEGeB6pqy0Fk8Qmhjtap8%3D"]
          },
        :female => {
          :catching_fire => ["Catching Fire", "http://pop-break.com/wp-content/uploads/2013/11/The-Hunger-Games-Catching-Fire-Wallpaper-01.jpg"]
          },
        },
      :series_no => {
          :male => {
            :jack_reacher => ["Jack Reacher","http://api.comingsoon.net//images//2012/Jack_Reacher_29.jpg"]
          },
        :female => {
            :brick_mansions => ["Brick Mansions", "http://roadshow.com.au/~/media/Images/Roadshow/Catalogue/Movie/Brick_Mansion_itunes_Movie_Pack.ashx"]
          },
        },
      
      },
    :rating_r =>{
      :series => {
          :male => {
            :interal_affair => ["Internal Affairs" , "http://www.wallpapersmovie.com/images/wallpapers/infernal_affairs_wallpaper-7539.jpeg"]
          },
        :female => {
          :inglorious_bastards => ["Inglourious Basterds", "https://upload.wikimedia.org/wikipedia/en/c/c3/Inglourious_Basterds_poster.jpg"]
          },
        },
      :series_no => {
          :male => {
           :django_unchained => ["Django Unchained", "https://s-media-cache-ak0.pinimg.com/originals/2c/91/52/2c9152c233ec802cebd0da29b0f37869.jpg"]
          },
        :female => {
            :hansel_and_gretel => ["Hansel and Gretel: Witch Hunters", "http://ia.media-imdb.com/images/M/MV5BMjA4MDQwODg2NV5BMl5BanBnXkFtZTcwNTc5ODc2OA@@._V1_SX640_SY720_.jpg"]
          },
        },
      
      },
    },
  
  
  :comedy =>{
    :rating_g => {
      :series => {
        :female => {
          :high_school_musical => ["High School Musical 2", "http://ia.media-imdb.com/images/M/MV5BMTc1OTUzNzk2Ml5BMl5BanBnXkFtZTcwNzYwOTE1MQ@@._V1_SX640_SY720_.jpg"]
          },
        :male => {
          :lilo_and_stich => ["Lilo & Stich 2: Stich has a Glitch", "http://img2.wikia.nocookie.net/__cb20110320224346/disney/images/b/b5/Liloandstitch2dvd.jpg"]
          },
        },
      :series_no => {
        :female => {
          :cow_belles => ["Cow Belles", "https://upload.wikimedia.org/wikipedia/en/thumb/5/54/Cowbellesdvd.jpg/220px-Cowbellesdvd.jpg"]
          },
        :male => {
          :roman_holiday => ["Roman Holiday", "http://ia.media-imdb.com/images/M/MV5BMTg1ODgzODA1Nl5BMl5BanBnXkFtZTcwNTI0MzU3Mg@@._V1_SX640_SY720_.jpg"]
          },
        },
      },
    :rating_pg => {
      :series => {
        :female => {
          :grease => ["Grease", "http://www.wichitaorpheum.com/wp-content/uploads/2012/12/GreaseMoviePoster.jpg"]
          },
        :male => {
          :cloudy_with_a => ["Cloudy with a Chance of Meatballs 2", "http://resizing.flixster.com/pcrLrNh1GHxj9W5j8jFLbz01aMM=/180x270/dkpu1ddg7pbsk.cloudfront.net/movie/11/17/58/11175894_ori.jpg"]
          },
        },
      :series_no => {
        :female => {
          :prince_and_me => ["The Prince & Me", "http://static.rogerebert.com/uploads/movie/movie_poster/the-prince-and-me-2004/large_ahfJ29oiJjEAAyw2v0bqU7tYSkT.jpg"]
          },
        :male => {
          :band_slam => ["Band Slam", "http://ia.media-imdb.com/images/M/MV5BMTg0MDI4MTIzMV5BMl5BanBnXkFtZTcwMDU5MjI2Mg@@._V1_SX214_AL_.jpg"]
          },
        },
      
      },
    :rating_pg13 => {
      :series => {
        :female => {
          :mean_girls => ["Mean Girls", "https://upload.wikimedia.org/wikipedia/en/8/87/MeanGirlsSoundtrack.jpg"]
          },
        :male => {
          :anchorman => ["Anchorman", "http://ia.media-imdb.com/images/M/MV5BMTQ2MzYwMzk5Ml5BMl5BanBnXkFtZTcwOTI4NzUyMw@@._V1_SX640_SY720_.jpg"]
          },
        },
      :series_no => {
        :female => {
          :maid_in_manhattan => ["Maid in Manhattan", "http://ia.media-imdb.com/images/M/MV5BMTczODg2ODI2M15BMl5BanBnXkFtZTYwODIxMDg5._V1_SX640_SY720_.jpg"]
          },
        :male => {
          :fifty_first_days => ["50 First Dates", "http://ia.media-imdb.com/images/M/MV5BMjAwMzc4MDgxNF5BMl5BanBnXkFtZTYwNjUwMzE3._V1_SX640_SY720_.jpg"]
          },
        },
      },
    :rating_r => {
      :series => {
        :female => {
          :bridget_jones => ["Bridget Jones: The Edge of Reason", "https://upload.wikimedia.org/wikipedia/en/1/17/BridgetJonesDiaryMoviePoster.jpg"]
          },
        :male => {
          :bad_boys => ["Bad Boys II", "http://ia.media-imdb.com/images/M/MV5BMTI4Mjc2OTE4MV5BMl5BanBnXkFtZTYwNTE3NDY3._V1_SX640_SY720_.jpg"]
          },
        },
      :series_no => {
        :female => {
           :silver_linings => ["Silver Linings Playbook", "http://ia.media-imdb.com/images/M/MV5BMTM2MTI5NzA3MF5BMl5BanBnXkFtZTcwODExNTc0OA@@._V1_SX640_SY720_.jpg"]
          },
        :male => {
          :pain_and_gain => ["Pain & Gain", "http://media.aintitcool.com/media/uploads/2013/nordling/paingain.jpg"]
          },
        },
      },
    },
  :drama=>{
     :rating_g => {
      :series => {
        :female => {
          :mulan => ["Mulan", "http://ecx.images-amazon.com/images/I/516BH9WH2PL.jpg"]
          },
        :male => {
          :the_pirate_fairy => ["Disney: The Pirate Fairy", "http://img1.wikia.nocookie.net/__cb20140107225959/disney/images/b/bc/Pirate_Fairy_Art_Poster.jpg"]
          },
        },
       :series_no => {
        :female => {
          :jump_in => ["Jump In", "http://ia.media-imdb.com/images/M/MV5BMTcwMzQyMzgyNV5BMl5BanBnXkFtZTcwMzY3MTQ0MQ@@._V1_SY317_CR5,0,214,317_AL_.jpg"]
          },
        :male => {
          :justin_beiber => ["Justin Beiber's Never Say Never", "http://thebertshow.com/wp-content/uploads/2011/02/JUSTIN-BIEBER-NEVER-SAY-NEVER-movie-poster-1.jpeg"]
          },
        },
      },
    :rating_pg => {
      :series => {
        :female => {
          :william_and_kate => ["William & Kate", "http://www.impawards.com/tv/posters/william_and_kate_ver2.jpg"]
          },
        :male => {
          :smurfs => ["The Smurfs 2", "https://upload.wikimedia.org/wikipedia/en/1/19/The_Smurfs_2_poster.jpg"]
          },
        },
      :series_no => {
        :female => {
          :gaby_douglas => ["The Gaby Douglas Story", "http://ia.media-imdb.com/images/M/MV5BMjA0ODM1NTMwNV5BMl5BanBnXkFtZTgwMjU5ODUwMTE@._V1_SY317_SX214_AL_.jpg"]
          },
        :male => {
          :best_of_men => ["The Best of Men", "http://ia.media-imdb.com/images/M/MV5BOTY2NDU5ODUxMV5BMl5BanBnXkFtZTgwODI3NzA0MTE@._V1_SY317_CR1,0,214,317_AL_.jpg"]
          },
        },
      
      },
    :rating_pg13 => {
      :series => {
        :female => {
          :twilight => ["Twilight", "http://ia.media-imdb.com/images/M/MV5BMTQ2NzUxMTAxN15BMl5BanBnXkFtZTcwMzEyMTIwMg@@._V1_SX640_SY720_.jpg"]
          },
        :male => {
          :dirty_dancing => ["Dirty Dancing", "https://upload.wikimedia.org/wikipedia/en/0/00/Dirty_Dancing.jpg"]
          },
        },
      :series_no => {
        :female => {
          :unconditional => ["Unconditional", "http://cfdb.owmconsulting.netdna-cdn.com/wp-content/uploads/2012/04/Unconditional-Christian-Movie-Christian-Film-DVD-Michael-Ealy-Joe-Bradford.jpg"]
          },
        :male => {
          :the_butler => ["Lee Daniel's The Butler", "https://upload.wikimedia.org/wikipedia/en/2/2c/The_Butler_poster.jpg"]
          },
        },
      },
    :rating_r => {
      :series => {
        :female => {
          :cyberbully => ["Cyberbully", "http://ia.media-imdb.com/images/M/MV5BMTc5NDQzOTc2N15BMl5BanBnXkFtZTcwNDI5MzI4Nw@@._V1_SX640_SY720_.jpg
 "]
          },
        :male => {
          :stand_by_me => ["Stand by Me", "http://ia.media-imdb.com/images/M/MV5BNDk2MTkyMTA1OF5BMl5BanBnXkFtZTcwOTc2Njk3OA@@._V1_SX640_SY720_.jpg"]
          },
        },
      :series_no => {
        :female => {
          :youre_not_you => ["You're Not You", "http://ia.media-imdb.com/images/M/MV5BMTczNDkyODA1N15BMl5BanBnXkFtZTgwNjIwOTI4MjE@._V1_SX640_SY720_.jpg"]
          },
        :male => {
          :wolf_of_wall_street => ["The Wolf of Wall Street", "http://ia.media-imdb.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_SX640_SY720_.jpg"]
          },
        },
      },
    },
  :horror =>{
     :rating_g => {
      :series => {
        :female => {
          :spy_kids => ["Spy Kids: All the Time in the World", "http://ia.media-imdb.com/images/M/MV5BMTgwOTk1NjQ0NV5BMl5BanBnXkFtZTcwNTk4MDI3NQ@@._V1_SX640_SY720_.jpg"]
          },
        :male => {
          :power_rangers => ["Power Ranger Samurai: Clash of the Red Rangers", "http://vignette2.wikia.nocookie.net/powerrangers/images/e/ea/16565_218395020820_119340625820_4648398_4250961_n.jpg/revision/latest?cb=20121229142909"]
          },
        },
       :series_no => {
        :female => {
          :girl_monster => ["Girl vs Monster", "https://upload.wikimedia.org/wikipedia/en/thumb/b/b0/Girl_vs._Monster_Official_Movie_Poster.jpg/220px-Girl_vs._Monster_Official_Movie_Poster.jpg"]
          },
        :male => {
          :nightmare_before_christmas => ["Tim Burton's The Nightmare Before Christmas", "https://upload.wikimedia.org/wikipedia/en/9/9a/The_nightmare_before_christmas_poster.jpg"]
          },
        },
      },
    :rating_pg => {
      :series => {
        :female => {
          :apollo_18 => ["Apollo 18", "http://www.sixteen19.com/files/styles/project_single/public/apollo18%20poster.jpeg?itok=0A2p-hju"]
          },
        :male => {
          :paranormal_activity => ["Paranormal Activity: The Marked One's", "http://ia.media-imdb.com/images/M/MV5BMjAwNDAxMjc0N15BMl5BanBnXkFtZTgwNDcyNDU3MDE@._V1_SX640_SY720_.jpg"]
          },
        },
      :series_no => {
        :female => {
          :helena => ["The Haunting of Helena", "http://scarylibrary.com/wordpress/wp-content/uploads/2014/03/helena1.jpeg"]
          },
        :male => {
          :age_of_dinosaurs => ["Age of Dinosaurs","http://ia.media-imdb.com/images/M/MV5BMTY3NzY3MTU3N15BMl5BanBnXkFtZTcwNDc2NDk3OQ@@._V1_SY317_CR6,0,214,317_AL_.jpg"]
          },
        },
      
      },
    :rating_pg13 => {
      :series => {
        :female => {
          :insidious => ["Insidious 2", "https://upload.wikimedia.org/wikipedia/en/d/d4/Insidious_%E2%80%93_Chapter_2_Poster.jpg"]
          },
        :male => {
           :saw => ["Saw", "http://i1007.photobucket.com/albums/af200/cmcolin/Saw/saw-poster_zps9ac19f7d.jpg"]
          },
        },
      :series_no => {
        :female => {
           :troll_hunter => ["Troll Hunter", "https://upload.wikimedia.org/wikipedia/en/1/1e/TrollHunter.jpg"]
          },
        :male => {
          :the_hole => ["The Hole", "http://ia.media-imdb.com/images/M/MV5BMTQxMzA2NTE1M15BMl5BanBnXkFtZTcwNjc5OTUzOA@@._V1_SY317_CR2,0,214,317_AL_.jpg"]
          },
        },
      },
    :rating_r => {
      :series => {
        :female => {
          :scream => ["Scream", "http://31.media.tumblr.com/tumblr_lonhu39boD1qil8sao1_500.png"]
          },
        :male => {
          :children_corn => ["Stephen King's Children of the Corn", "http://www.horrorlair.com/movies/images/Children-of-the-Corn-Posters.jpg"]
          },
        },
      :series_no => {
        :female => {
          :excorcist => ["The Exorcist", "http://ia.media-imdb.com/images/M/MV5BNzYwMDA0NTA3M15BMl5BanBnXkFtZTcwMDcwNDY3Mg@@._V1_SX640_SY720_.jpg"]
          },
        :male => {
          :oculus => ["Oculus", "http://www.impawards.com/2014/posters/oculus_ver4_xlg.jpg"]
          },
        },
      },
    },
  :sci_fi => {
     :rating_g => {
      :series => {
        :female => {
          :buddies => ["Space Buddies", "http://ia.media-imdb.com/images/M/MV5BMTMyMDYyODI2NF5BMl5BanBnXkFtZTcwMjg3OTQyMg@@._V1_SY317_CR7,0,214,317_AL_.jpg"]
          },
        :male => {
          :atlantis => ["Atlantis: Milo's Return", "https://upload.wikimedia.org/wikipedia/en/thumb/5/5c/Ataln1.jpg/220px-Ataln1.jpg"]
          },
        },
       :series_no => {
        :female => {
          :buildboy => ["How to Build a Better Boy", "https://upload.wikimedia.org/wikipedia/en/thumb/d/d9/How_to_Build_a_Better_Boy.jpg/220px-How_to_Build_a_Better_Boy.jpg"]
          },
        :male => {
          :jimmynuetron => ["Jimmy Nuetron: Boy Genuis", "https://upload.wikimedia.org/wikipedia/en/7/76/Jimmy_Neutron_Boy_Genius_film.jpg"]
          },
        },
      },
    :rating_pg => {
      :series => {
        :female => {
          :trip => ["A Trip to the Moon", "http://phantomcitycreative.com/wp-content/uploads/2012/03/TripMoon-final2.jpg"]
          },
        :male => {
          :startrek => ["Star Trek: The Wrath of Khan", "http://cdn1.ssninsider.com/wp-content/uploads/2013/05/Star-Trek-II-The-Wrath-of-Khan.jpg"]
          },
        },
      :series_no => {
        :female => {
          :treasure_planet => ["Treasure Planet", "http://ia.media-imdb.com/images/M/MV5BMTQ0NDg3MjU2OV5BMl5BanBnXkFtZTYwODgyMDg5._V1_SX640_SY720_.jpg"]
          },
        :male => {
          :weshrunk => ["Honey We Shrunk Ourselves", "http://ia.media-imdb.com/images/M/MV5BNjAzNzk4OTg0NF5BMl5BanBnXkFtZTYwNDUyNjU5._V1_SY317_CR4,0,214,317_AL_.jpg"]
          },
        },
      
      },
    :rating_pg13 => {
      :series => {
        :female => {
          :laracroft => ["Lara Croft: Tomb Raider", "http://ia.media-imdb.com/images/M/MV5BNzgwMDcwNzk1NV5BMl5BanBnXkFtZTYwNzY2OTY5._V1_SX640_SY720_.jpg"]
          },
        :male => {
          :transformers => ["Transformer: Age of Extinction", "http://ia.media-imdb.com/images/M/MV5BMjEwNTg1MTA5Nl5BMl5BanBnXkFtZTgwOTg2OTM4MTE@._V1_SX640_SY720_.jpg"]
          },
        },
      :series_no => {
        :female => {
          :stardust => ["Stardust", "http://ia.media-imdb.com/images/M/MV5BMjkyMTE1OTYwNF5BMl5BanBnXkFtZTcwMDIxODYzMw@@._V1_SX214_AL_.jpg"]
          },
        :male => {
          :frankenstein => ["I, Frankstein", "http://ia.media-imdb.com/images/M/MV5BMjM3Mzk2MDU3N15BMl5BanBnXkFtZTgwMzg1NTI4MDE@._V1_SX640_SY720_.jpg"]
          },
        },
      },
    :rating_r => {
      :series => {
        :female => {
          :underworld => ["Underworld", "http://cdn.bleedingcool.net/wp-content/uploads/2014/08/Underworld-Awakening-E-Cine-1.jpg"]
          },
        :male => {
          :terminator => ["Terminator 2: Judgement Day", "http://ia.media-imdb.com/images/M/MV5BODA1NzAwNjg0M15BMl5BanBnXkFtZTcwNzg1MDEyNw@@._V1_SY317_CR4,0,214,317_AL_.jpg"]
          },
        },
      :series_no => {
        :female => {
          :august => ["August 8th", "http://ia.media-imdb.com/images/M/MV5BODA1NzAwNjg0M15BMl5BanBnXkFtZTcwNzg1MDEyNw@@._V1_SY317_CR4,0,214,317_AL_.jpg"]
          },
        :male => {
          :parallels => ["Parallels", "https://upload.wikimedia.org/wikipedia/en/0/0d/Parallels2015Poster.jpg"]
          },
        },
      },
    },
  }
    
    erb :endpage2
  end
  
  get "/series" do
    erb :series
  end
end