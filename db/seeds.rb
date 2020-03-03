#destroy all previous data upon run
Service.destroy_all
Show.destroy_all
Boxguide.destroy_all

#Service entries
hulu = Service.create(name: "Hulu")
netflix = Service.create(name: "Netflix")
hbo = Service.create(name: "HBO")
primevideo = Service.create(name: "PrimeVideo")

#Show (single platform) and BoxGuide entries
theoffice = Show.create(name: "The Office", genre: "Comedy")
office_net = Boxguide.create(service_id: netflix.id, show_id: theoffice.id)

black_mirror = Show.create(name: "Black Mirror", genre: "Thriller")
mirror_net = Boxguide.create(service_id: netflix.id, show_id: black_mirror.id)

stranger_things = Show.create(name: "Stranger Things", genre: "Thriller")
stranger_net = Boxguide.create(service_id: netflix.id, show_id: stranger_things.id)

game_of_thrones = Show.create(name: "Game of Thrones", genre: "Sci-Fi")
thrones_hbo = Boxguide.create(service_id: hbo.id, show_id: game_of_thrones.id)

west_world = Show.create(name: "West World", genre: "Sci-Fi")
west_world_hbo = Boxguide.create(service_id: hbo.id, show_id: west_world.id)

entourage = Show.create(name: "Entourage", genre: "Drama")
entourage_hbo = Boxguide.create(service_id: hbo.id, show_id: entourage.id)

his_dark_materials = Show.create(name: "His Dark Materials", genre: "Sci-Fi")
his_dark_materials_hbo = Boxguide.create(service_id: hbo.id, show_id: his_dark_materials.id)

curb_your_enthusiasm = Show.create(name: "Curb Your Enthusiasm", genre: "Comedy")
curb_your_enthusiasm_hbo = Boxguide.create(service_id: hbo.id, show_id: curb_your_enthusiasm.id)

silicon_valley = Show.create(name: "Silicon Valley", genre: "Comedy")
silicon_valley_hbo = Boxguide.create(service_id: hbo.id, show_id: silicon_valley.id)

rick_and_morty = Show.create(name: "Rick and Morty", genre: "Sci-Fi")
rick_and_morty_hulu = Boxguide.create(service_id: hulu.id, show_id: rick_and_morty.id)

snl = Show.create(name: "Saturday Night Live", genre: "Comedy")
snl_hulu = Boxguide.create(service_id: hulu.id, show_id: snl.id)

this_is_us = Show.create(name: "This Is Us", genre: "Drama")
this_is_us_hulu = Boxguide.create(service_id: hulu.id, show_id: this_is_us.id)

shark_tank = Show.create(name: "Shark Tank", genre: "Drama")
shark_tank_hulu = Boxguide.create(service_id: hulu.id, show_id: shark_tank.id)

hunters = Show.create(name: "Hunters", genre: "Thriller")
hunters_prime = Boxguide.create(service_id: primevideo.id, show_id: hunters.id)

spongebob = Show.create(name: "Spongebob Squarepants", genre: "Comedy")
spongebob_prime = Boxguide.create(service_id: primevideo.id, show_id: spongebob.id)



#Show (muliple platforms) and Boxguide entries
friends = Show.create(name: "Friends", genre: "Comedy")
friends_net = Boxguide.create(service_id: netflix.id, show_id: friends.id)
friends_hulu = Boxguide.create(service_id: hulu.id, show_id: friends.id)

modern_family = Show.create(name: "Modern Family", genre: "Comedy")
modern_hulu = Boxguide.create(service_id: hulu.id, show_id: modern_family.id)
modern_prime = Boxguide.create(service_id: primevideo.id, show_id: modern_family.id)

the_good_place = Show.create(name: "The Good Place", genre: "Comedy")
good_place_net = Boxguide.create(service_id: netflix.id, show_id: the_good_place.id)
good_place_hulu = Boxguide.create(service_id: hulu.id, show_id: the_good_place.id)

bachelor = Show.create(name: "the Bachelor", genre: "Drama")
bachelor_net = Boxguide.create(service_id: netflix.id, show_id: bachelor.id)
bachelor_hulu = Boxguide.create(service_id: hulu.id, show_id: bachelor.id)
bachelor_prime = Boxguide.create(service_id: primevideo.id, show_id: bachelor.id)

brooklyn_nine = Show.create(name: "Brooklyn Nine-Nine", genre: "Comedy")
brooklyn_net = Boxguide.create(service_id: netflix.id, show_id: brooklyn_nine.id)
brooklyn_hulu = Boxguide.create(service_id: hulu.id, show_id: brooklyn_nine.id)

family_guy = Show.create(name: "Family Guy", genre: "Comedy")
family_guy_net = Boxguide.create(service_id: netflix.id, show_id: family_guy.id)
family_guy_hulu = Boxguide.create(service_id: hulu.id, show_id: family_guy.id)
family_guy_prime = Boxguide.create(service_id: primevideo.id, show_id: family_guy.id)

american_horror_story = Show.create(name: "American Horror Story", genre: "Thriller")
american_horror_story_net = Boxguide.create(service_id: netflix.id, show_id: american_horror_story.id)
american_horror_story_hulu = Boxguide.create(service_id: hulu.id, show_id: american_horror_story.id)

you = Show.create(name: "You", genre: "Thriller")
you_net = Boxguide.create(service_id: netflix.id, show_id: you.id)
you_prime = Boxguide.create(service_id: primevideo.id, show_id: you.id)

walking_dead = Show.create(name: "The Walking Dead", genre: "Thriller")
walking_dead_net = Boxguide.create(service_id: netflix.id, show_id: walking_dead.id)
walking_dead_prime = Boxguide.create(service_id: primevideo.id, show_id: walking_dead.id)










