Song.destroy_all

songs = [
  {title: "Song 1", artist_name: "Mr Artist", genre: "Rap", released: true, release_year: 2019 },
  {title: "Song 2", artist_name: "Mr Artist", genre: "Rap", released: true, release_year: 2019 },
  {title: "Song 3", artist_name: "Mr Artist", genre: "Rap", released: true, release_year: 2019 },
  {title: "Song 4", artist_name: "Mrs Artist", genre: "Country", released: true, release_year: 2018 },
  {title: "Song 5", artist_name: "Mrs Artist", genre: "Country", released: true, release_year: 2018 },
]

Song.create(songs)
