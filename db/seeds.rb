
#Service entries
hulu = Service.new("Hulu")
netflix = Service.new("Netflix")
hbo = Service.new("HBO")
primevideo = Service.new("PrimeVideo")

#Show (single platform) and BoxGuide entries
theoffice = Show.new("The Office", "Comedy")
office_net = BoxGuide.new(netflix, theoffice)

black_mirror = Show.new("Black Mirror", "Thriller")
mirror_net = BoxGuide.new(netflix, black_mirror)

stranger_things = Show.new("Stranger Things", "Thriller")
stranger_net = BoxGuide.new(netflix, stranger_things)

game_of_thrones = Show.new("Game of Thrones", "Sci-Fi")
thrones_hbo = BoxGuide.new(hbo, game_of_thrones)

west_world = Show.new("West World", "Sci-Fi")
west_world_hbo = BoxGuide.new(hbo, west_world)

entourage = Show.new("Entourage", "Drama")
entourage_hbo = Show.new(hbo, entourage)

his_dark_materials = Show.new("His Dark Materials", "Sci-Fi")
his_dark_materials_hbo = BoxGuide.new(hbo, his_dark_materials)

curb_your_enthusiasm = Show.new("Curb Your Enthusiasm", "Comdegy")
curb_your_enthusiasm_hbo = BoxGuide.new(hbo, curb_your_enthusiasm)

silicon_valley = Show.new("Silicon Valley", "Comedy")
silicon_valley_hbo = BoxGuide.new(hbo, silicon_valley)

rick_and_morty = Show.new("Rick and Morty", "Sci-Fi")
rick_and_morty_hulu = BoxGuide.new(hulu, rick_and_morty)

snl = Show.new("Saturday Night Live", "Comdegy")
snl_hulu = BoxGuide.new(hulu, snl)

this_is_us = Show.new("This Is Us", "Drama")
this_is_us_hulu = BoxGuide.new(hulu, this_is_us)

shark_tank = Show.new("Shark Tank", "Drama")
shark_tank_hulu = BoxGuide.new(hulu, shark_tank)

hunters = Show.new("Hunters", "Thriller")
hunters_prime = BoxGuide.new(primevideo, hunters)

spongebob = Show.new("Spongebob Squarepants", "Comedy")
spongebob_prime = BoxGuide.new(primevideo, spongebob)



#Show (muliple platforms) and BoxGuide entries
friends = Show.new("Friends", "Comedy")
friends_net = BoxGuide.new(netflix, friends)
friends_hulu = BoxGuide.new(hulu, friends)

modern_family = Show.new("Modern Family", "Comedy")
modern_hulu = BoxGuide.new(hulu, modern_family)
modern_prime = BoxGuide.new(primevideo, modern_family)

the_good_place = Show.new("The Good Place", "Comedy")
good_place_net = BoxGuide.new(netflix, the_good_place)
good_place_hulu = BoxGuide.new(hulu, the_good_place)

bachelor = Show.new("the Bachelor", "Drama")
bachelor_net = BoxGuide.new(netflix, bachelor)
bachelor_hulu = BoxGuide.new(hulu, bachelor)
bachelor_prime = BoxGuide.new(primevideo, bachelor)

brooklyn_nine = Show.new("Brooklyn Nine-Nine", "Comedy")
brooklyn_net = BoxGuide.new(netflix, brooklyn_nine)
brooklyn_hulu = BoxGuide.new(hulu, brooklyn_nine)

family_guy = Show.new("Family Guy", "Comedy")
family_guy_net = BoxGuide.new(netflix, family_guy)
family_guy_hulu = BoxGuide.new(hulu, family_guy)
family_guy_prime = BoxGuide.new(primevideo, family_guy)

american_horror_story = Show.new("American Horror Story", "Thriller")
american_horror_story_net = BoxGuide.new(netflix, american_horror_story)
american_horror_story_hulu = BoxGuide.new(hulu, american_horror_story)

#greys_anatomy = Show.new("Grey's Anatomy", "Drama")
#greys_net = (netflix, greys_anatomy)
#greys_hulu = (hulu, greys_anatomy)

you = Show.new("You", "Thriller")
you_net = BoxGuide.new(netflix, you)
you_prime = BoxGuide.new(primevideo, you)

walking_dead = Show.new("The Walking Dead", "Thriller")
walking_dead_net = BoxGuide.new(netflix, walking_dead)
walking_dead_prime = BoxGuide.new(primevideo, walking_dead)










