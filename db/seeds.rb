Restaurant.delete_all
User.delete_all
# Restaurants
lapalma = Restaurant.create(
name: 'La Palma',
street_address: '849 Dundas Street West',
neighbourhood: 'Dundas West',
menu: 'Fried Olives, Rosette de Lyon, Graffiti Eggplant, Potato Gnocchi, Grilled Swordfish',
summary: 'A cafe and Italian takeaway spot during the day that turns into an elegant restaurant with sexy cocktails at night and also serves breakfast and brunch, La Palma’s intention is to bring California cool to Toronto.',
)

kiin = Restaurant.create(
name: 'Kiin',
street_address: '326 Adelaide Street West',
neighbourhood: 'King West',
menu: 'Root Vegetable Chips, Mixed Rice Salad, Royal Thai Platter, Wing Bean Salad',
summary: 'The newest offering from Chef Nuit and Jeff Regular is heavy on the sharing plates, many featuring favourite dishes from the chefs childhood in Thailand.',
)

atlas = Restaurant.create(
name: 'Atlas',
street_address: '18 Dupont Street',
neighbourhood: 'Annex',
menu: 'Eggplant Zaalouk, Flat Bread, Beet Salad, Whole Roasted Quail, Tagine of Roasted Goat',
summary: 'Atlas is a French Moroccan restaurant from the same folks behind Cava and Chabrol',
photo:
)


# users

nadia = User.create(
name: 'Nadia Ivannova',
email: 'nadiaivannova@gmail.com'
role: "owner"
)

martine = User.create(
name: 'Martine Gagne',
email: 'martine.e.gagne@gmail.com'
)

abby = User.create(
name: 'Abby Wilson',
email: 'abigail.wilson1@outlook.com'
)
