# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create( {
 email: "athomasgarrett@gmail.com",
 password: "atg_admin"
})

@vendor1 = Vendor.create({
        name: 'GoldenTech',
        phone: '800-624-6374',
        website: 'https://www.goldentech.com',
        hours: 'M-F 9:00a - 7:00p',
        notes: '',
        active: true
    })
@vendor2 = Vendor.create({
        name: 'Nova',
        phone: '800-557-6682',
        website: 'https://www.novajoy.com',
        hours: 'M-F 7:30a - 5:00p',
        notes: '',
        active: true
    })
@vendor3 = Vendor.create({
        name: 'Triumph',
        phone: '855-546-0711',
        website: 'https://www.triumphmobility.com',
        hours: 'M-F 9:00a - 5:30p',
        notes: '',
        active: true
    })
@vendor4 = Vendor.create({
        name: 'Stander',
        phone: '800-506-9901',
        website: 'https://www.stander.com',
        hours: 'M-F 9:00a - 5:00p',
        notes: '',
        active: true
    })
@vendor5 = Vendor.create({
        name: 'Solo',
        phone: '714-892-3552',
        website: 'https://www.solomedicalsupply.com',
        hours: 'M-F 8:30a - 5:00p',
        notes: '',
        active: true
    })
@vendor6 = Vendor.create({
        name: 'Nufoot',
        phone: '925-743-9831',
        website: 'https://www.nufoot.com',
        hours: 'M-F 9:00a - 5:00p',
        notes: '',
        active: true
    })


vendor_locations = VendorLocation.create([
    {
        vendor: @vendor1,
        city: 'Old Forge',
        state: 'PA',
        country: 'USA',
        notes: '525 Bridge St, Old Forge, PA 18518',
        primary: true,
        active: true
    },
    {
        vendor: @vendor1,
        city: 'Lakeland',
        state: 'FL',
        country: 'USA',
        notes: '',
        primary: false,
        active: true
    },
    {
        vendor: @vendor1,
        city: 'Fontana',
        state: 'CA',
        country: 'USA',
        notes: '13204 Philadelphia Ave, Fontana, CA 92337',
        primary: false,
        active: true
    },
    {
        vendor: @vendor1,
        city: 'Kansas City',
        state: 'MO',
        country: 'USA',
        notes: '',
        primary: false,
        active: true
    },
    {
        vendor: @vendor2,
        city: 'Carson',
        state: 'CA',
        country: 'USA',
        notes: '',
        primary: true,
        active: true
    },
    {
        vendor: @vendor2,
        city: 'Chicago',
        state: 'IL',
        country: 'USA',
        notes: '',
        primary: false,
        active: true
    },
    {
        vendor: @vendor3,
        city: 'Nepean',
        state: 'ON',
        country: 'CAN',
        notes: '',
        primary: true,
        active: true
    },
    {
        vendor: @vendor3,
        city: '',
        state: 'CA',
        country: 'USA',
        notes: '',
        primary: false,
        active: true
    },
    {
        vendor: @vendor4,
        city: 'Logan',
        state: 'UT',
        country: 'USA',
        notes: '',
        primary: true,
        active: true
    },
    {
        vendor: @vendor5,
        city: 'Huntington Beach',
        state: 'CA',
        country: 'USA',
        notes: '',
        primary: true,
        active: true
    },
    {
        vendor: @vendor6,
        city: 'Danville',
        state: 'CA',
        country: 'USA',
        notes: '',
        primary: true,
        active: true
    },
])