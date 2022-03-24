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
  title: "Ukraine : La protection temporaire, un mécanisme de réponse en cas d’afflux massif de personnes",
  content: "Le 24 février 2022, la Russie a attaqué l’Ukraine, dans l’objectif d’une opération rapide de prise du territoire, après avoir déclaré indépendantes deux régions uukrainiennes (Dontesk et Louhansk). Toutes les personnes ayant fui l’Ukraine à compter de cette même date, le 24 février 2022, peuvent bénéficier d’une protection temporaire.",
  url: "https://www.actu-juridique.fr/etrangers/ukraine-la-protection-temporaire-un-mecanisme-de-reponse-en-cas-dafflux-massif-de-personnes/",
  user: User.first
)
post1.save!

post2 = Post.new(
  title: "Retour sur 10 nouvelles espèces totalement inutiles découvertes en 2021",
  content: "Plus de huit millions d'espèces animales et végétales sont aujourd'hui répertoriées aux quatre coins de la Terre. Pourtant, il en reste encore des milliers dont on ne soupçonne pas l'existence. La preuve : chaque année, l'inventaire mondial ne cesse de s'allonger au fil des découvertes scientifiques. Et 2021 n'a pas fait exception.

  Au cours des douze derniers mois, ce sont des centaines de nouvelles espèces qui sont venues enrichir la liste. Au Natural History Museum de Londres, rien que cette année par exemple, les scientifiques ont participé à la description de pas moins de 552 espèces, selon un récent communiqué de l'institution.

  Parmi les nouveaux arrivants, figurent des animaux comme des végétaux qui ont, pour certains, montré de remarquables apparences ou de fascinantes capacités. Telle que ce tabac sauvage tueur d'insectes retrouvé sur une autoroute en Australie ou cette adorable 'grenouille chocolat' identifiée en Nouvelle-Guinée.",
  url: "https://www.geo.fr/environnement/retour-sur-10-nouvelles-especes-decouvertes-en-2021-207683",
  user: User.first
)
post2.save!

post3 = Post.new(
  title: "Rions un brin avec la justice",
  content: "En France, d'après la Cour de cassation (Chambre criminelle) du 16 janvier 1986, il est possible d'être condamné pour meurtre en tuant un cadavre.",
  url: "https://www.savoir-inutile.com/otuvx4",
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

puts "That's All, Folks!"
