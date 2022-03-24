# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Hello People! Wanna seed?"
User.destroy_all
Post.destroy_all
Comment.destroy_all

puts "OK, I'll start by creating 2 users for you"

user1 = User.new(
  email: "master@certif.com",
  nickname: "Master",
  password: "000000"
)
user1.save!

user2 = User.new(
  email: "rookie@certif.com",
  nickname: "Rookie",
  password: "000000"
)
user2.save!

puts "Created #{User.count} #{"user".pluralize(User.count)} for you"

puts "Now, I will seed some posts"

post1 = Post.new(
  title: "Ivre, il vole un rouleau compresseur de plusieurs tonnes pour rejoindre le tramway",
  content: "Le 2 février, il est environ 22h15, quand un Montpelliérain âgé de 35 ans est intercepté par les gendarmes du peloton d’autoroute de Poussan (34) aux portes ouest de Montpellier alors qu’il conduisait un rouleau compresseur.
  L’individu a été signalé au centre opérationnel de la gendarmerie de l’Hérault par un automobiliste, intrigué après avoir croisé l'engin de chantier de plusieurs tonnes. Le rouleau compresseur rouler à moins de 15km/h et se dirigeait vers le rond point de l’autoroute A9-A709.
  Arrivés sur les lieux, les militaires ont immédiatement constaté l’anormalité de la situation. Le rouleau compresseur avec lequel le trentenaire se déplaçait avait bien été dérobé quelques minutes plus tôt par ce dernier, fortement alcoolisé.",
  url: "https://france3-regions.francetvinfo.fr/occitanie/herault/montpellier/ivre-il-vole-un-rouleau-compresseur-de-plusieurs-tonnes-pour-rejoindre-le-tramway-2456473.html",
)
post1.save!

post2 = Post.new(
  title: "Ivre, il emprunte une piste de ski pour éviter les contrôles d'alcoolémie",
  content: "Un pisteur du domaine skiable de Sur-Lyand - Grand Colombier, située sur la commune de Corbonod dans l'Ain, a eu la surprise de tomber sur un 4x4 au beau milieu d'une des pistes de ski nordique de sa station, samedi après-midi 19 février, rapporte le quotidien Le Progrès.
  D'abord, 'très cordial', les occupants de la voiture, trois adultes et trois enfants, lui ont expliqué qu'ils avaient 'picolé à l'auberge du coin' et décidé d'emprunter 'une autre route' pour 'éviter les contrôles routiers' et qu'ils s'étaient ainsi 'retrouvés bloqués sur la piste de ski'.",
  url: "https://www.lanouvellerepublique.fr/a-la-une/ivre-il-emprunte-une-piste-de-ski-pour-eviter-les-controles-d-alcoolemie",
  user: User.first
)
post2.save!

post3 = Post.new(
  title: "Brest. Ivre, il rampe dans le faux plafond et tombe dans les toilettes des filles",
  content: "C'était dans la nuit de samedi. Tard. Ce client du Vauban venait d'être éconduit poliment vers la porte pour cause de cuite trop avancée et, en bon filou, il était revenu par une autre porte, celle de l'hôtel. L'histoire le perd quelques minutes quand, personne ne sait trop comment, sans doute à commencer par lui, il s'est retrouvé bloqué dans une courette intérieure, à l'arrière de l'établissement. Bloqué, avec pour seule issue un conduit dans le mur, une bouche de 4 m de long. Sans doute que, sans l'excès d'éthanol, il n'y serait pas allé.",
  url: "https://www.letelegramme.fr/finistere/brest/ivre-il-rampe-dans-le-faux-plafond-et-tombe-dans-les-toilettes-des-filles-24-10-2016-11266826.php?utm_source=rss_telegramme&utm_medium=rss&utm_campaign=rss&xtor=RSS-22",
  user: User.first
)
post3.save!

post4 = Post.new(
  title: "Ivre, il participe aux recherches dans les bois... pour sa propre disparition",
  content: "En Turquie, alors qu'un homme de 50 ans profitait d'une soirée très arrosée avec ses amis près de la ville d'Inegöl, ce dernier décide de s'en éloigner et part dans les bois, ivre. La police, alertée par ses amis, lance rapidement une équipe de recherche pour le retrouver alors qu'ils soupçonnent qu'il se soit égaré dans les bois selon RTBF. Le Turc saoul participe alors à la battue de recherche pour le retrouver. Il faudra attendre quelque temps avant que le quinquagénaire ne se rende compte qu'il était la personne recherchée.",
  url: "https://www.ladepeche.fr/2021/10/01/turquie-ivre-il-participe-aux-recherches-dans-les-bois-pour-sa-propre-disparition-9824689.php",
  user: User.first
)
post4.save!

post5 = Post.new(
  title: "Brest. Ivre, il entre par effraction et se cuisine des lardons",
  content: "La faim justifie les moyens. Lundi 6 août vers 19h, un habitant de la rue de Cornouaille, dans le quartier de Kergoat, à Brest, entend du bruit venant de sa cuisine.
  La faim justifie les moyens. Lundi 6 août vers 19h, un habitant de la rue de Cornouaille, dans le quartier de Kergoat, à Brest, entend du bruit venant de sa cuisine.
  Intrigué, il va jeter un œil. Il se retrouve nez à nez avec un homme, en fort état d’ébriété, occupé à cuire des lardons. Il a aussi fait brûler un morceau de pain, qui a endommagé le linoléum au sol. L’inconnu est tout simplement entré par la fenêtre de la salle de bains restée ouverte.",
  url: "https://www.ouest-france.fr/bretagne/brest-29200/brest-ivre-il-entre-par-effraction-et-se-cuisine-des-lardons-5913701",
  user: User.last
)
post5.save!

puts "Created #{Post.count} #{"post".pluralize(Post.count)} for you"

puts "creating comments now"

comment1 = Comment.new(
  user: User.last,
  post: Post.first,
  content: "Amazing!"
)
comment1.save!

comment2= Comment.new(
  user: User.first,
  post: Post.first,
  content: "J'aurais fait pareil!"
)
comment2.save!

comment3= Comment.new(
  user: User.last,
  post: Post.last,
  content: "C'est bon, les lardons!"
)
comment3.save!

comment4= Comment.new(
  user: User.last,
  post: Post.first,
  content: "Encore!"
)
comment4.save!

puts "Created #{Comment.count} #{"comment".pluralize(Comment.count)} for you"

puts "That's All, Folks!"
