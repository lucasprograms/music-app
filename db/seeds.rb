User.destroy_all
Band.destroy_all
Album.destroy_all

u1 = User.create!(email: 'carty@gmail.com', password: 'cartycarty')
u2 = User.create!(email: 'lucasprograms@gmail.com', password: 'lucaslucas')
u3 = User.create!(email: 'hannah@gmail.com', password: 'hannahhannah')
u4 = User.create!(email: 'personperson@gmail.com', password: 'personperson')

b1 = Band.create!(name: 'Radiohead')
b2 = Band.create!(name: 'Cat Power')
b3 = Band.create!(name: 'Oliver Schories')

a1 = Album.create(title: 'Amnesiac', band_id: b1.id, year: 2001, studio: true)
a2 = Album.create(title: 'Kid A', band_id: b1.id, year: 2000, studio: true)
a3 = Album.create(title: 'Hail to the Thief', band_id: b1.id, year: 2003, studio: true)
a4 = Album.create!(title: 'The Greatest', band_id: b2.id, year: 2006, studio: true)
a5 = Album.create!(title: 'You are Free', band_id: b2.id, year: 2003, studio: true)
a6 = Album.create!(title: 'Relatively Definitely', band_id: b3.id, year: 2016, studio: true)