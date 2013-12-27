require 'sinatra'
require 'json'

set :port, 3000

products = {
  products: [
    {
      id: 1,
      title: "Flint",
      price: 99,
      description: "Flint is a hard, sedimentary cryptocrystalline form of the mineral quartz, categorized as a variety of chert.",
      isOnSale: true,
      image: "images/products/flint.png",
      reviews: [100, 101]
    }
  ]
}

reviews = {
  reviews: [
    {
      id: 100,
      product: 1,
      text: "Started a fire in no time!"
    },
    {
      id: 101,
      product: 1,
      text: "Not that good..."
    }
  ]
}

contacts = {
  contacts: [
    {
      id: 1,
      name: 'Giamia',
      avatar: 'images/contacts/giamia.png',
      about: 'Although Giamia came from a humble spark of lightning, he quickly grew to be a great craftsman, providing all the warming instruments needed by those close to him.'
    }
  ]
}

get "/" do
  send_file "public/index.html"
end

get "/products" do
  products.to_json
end

get "/contacts" do
  contacts.to_json
end

get "/reviews" do
  reviews.to_json
end
