# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Article.new(title:"Joker adora le memes", article: "E' risaputo che Joker adori le memes. Per chi non dovesse conoscerle, sono lo strumento più diffuso sul web per la condivisione di battue esilaranti, spesso condite da un retrogusto di black-humor, diventate molto famose negli ultimi anni sui social. In seguito la dichiarazione del famoso personaggio antagonista dell'universo DC: -Io adoro le meme! Le mie preferite sono quelle di Batman. Nonostante l'odio che provo nei suoi confronti, mi diverte molto vederlo prendere a schiaffi il suo assistente.")
a.comments << Comment.new(body: "Joker è simpatico, ma questa volta mi sembra abbia esagerato")
a.comments << Comment.new(body: "sn indiniato!!1!!")
a.save

Article.create(title:"Buone nuove per il castello di Santa Severa", article: "Grazie al successo dell'intervento della regione Lazio, la riqualifica del castello di Santa Severa, dopo il rischio di collasso verificatosi nel 2012, ha avuto successo. La custodia è stata passata ad un ente privato, che ha posto una tariffa per l'ingresso al pubblico non residente.")
