# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
	{ 
		id: 1, 
		username: "Tony", 
		email: "anthony.tjio@outlook.co.id",
		xfers_api_key: "2zsujd47H3-UmsxDL784beVnYbxCYCzL4psSbwZ_Ngk" 
	}
])


Bank.create!([
	{id: 1, name: "DBS"}
])

UserAccount.create!([
	{user_id: 1, xfers_user_id: "user_gksj43jgzgqv"}
])

VirtualAccount.create!([
	{
		user_id: 1,
		bank_id: 1,
		account_number: 123423453456
	}
])

Currency.create!([
	{name: "IDR", symbol: "Rp"},
	{name: "SGD", symbol: "S$"},
])

Product.create!([
	{
		id: 1,
		name: "Ipad",
		image_url: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/image/AppleInc/aos/published/images/i/pa/ipad/pro/ipad-pro-12-11-select-201810_FMT_WHH?wid=2000&amp;hei=2000&amp;fmt=jpeg&amp;qlt=80&amp;op_usm=0.5,0.5&amp;.v=1540576009788",
		price: 6000000,
		currency: Currency.find_by(name: "IDR")
	},
	{
		id: 2,
		name: "Mac",
		image_url: "data:image/jpeg;base64,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",
		price: 20000000,
		currency: Currency.find_by(name: "IDR")
	}
])