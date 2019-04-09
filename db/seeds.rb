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
        city: 'Old Forge',
        state: 'PA',
        country: 'USA',
        hours: 'M-F 9:00am - 7:00pm EST',
        notes: ''
    })
@vendor2 = Vendor.create({
        name: 'Nova',
        phone: '800-557-6682',
        website: 'https://www.novajoy.com',
        city: 'Carson',
        state: 'CA',
        country: 'USA',
        hours: 'M-F 7:30am - 5:00pm PST',
        notes: ''
    })
@vendor3 = Vendor.create({
        name: 'Triumph',
        phone: '855-546-0711',
        website: 'https://www.triumphmobility.com',
        city: 'Nepean',
        state: 'ON (Canada)',
        country: 'Canada',
        hours: 'M-F 9:00am - 5:30pm EST',
        notes: ''
    })
@vendor4 = Vendor.create({
        name: 'Stander',
        phone: '800-506-9901',
        website: 'https://www.stander.com',
        city: 'Logan',
        state: 'UT',
        country: 'USA',
        hours: 'M-F 9:00am - 5:00pm GMT',
        notes: ''
    })
@vendor5 = Vendor.create({
        name: 'Solo',
        phone: '714-892-3552',
        website: 'https://www.solomedicalsupply.com',
        city: 'Huntington Beach',
        state: 'CA',
        country: 'USA',
        hours: 'M-F 8:30am - 5:00pm PST',
        notes: ''
    })
@vendor6 = Vendor.create({
        name: 'Nufoot',
        phone: '925-743-9831',
        website: 'https://www.nufoot.com',
        city: 'Danville',
        state: 'CA',
        country: 'USA',
        hours: 'M-F 9:00am - 5:00pm PST',
        notes: ''
    })


vendor_locations = VendorLocation.create([
    {
        vendor: @vendor1,
        city: 'Old Forge',
        state: 'PA',
        notes: ''
    },
    {
        vendor: @vendor1,
        city: 'Lakeland',
        state: 'FL',
        notes: ''
    },
    {
        vendor: @vendor1,
        city: 'Fontana',
        state: 'CA',
        notes: '13204 Philadelphia Ave, Fontana, CA 92337'
    },
    {
        vendor: @vendor1,
        city: 'Kansas City',
        state: 'MO',
        notes: ''
    },
    {
        vendor: @vendor2,
        city: 'Carson',
        state: 'CA',
        notes: ''
    },
    {
        vendor: @vendor2,
        city: 'Chicago',
        state: 'IL',
        notes: ''
    },
    {
        vendor: @vendor3,
        city: 'Nepean',
        state: 'ON (Canada)',
        notes: ''
    },
    {
        vendor: @vendor3,
        city: '',
        state: 'CA',
        notes: ''
    },
    {
        vendor: @vendor4,
        city: 'Logan',
        state: 'UT',
        notes: ''
    },
    {
        vendor: @vendor5,
        city: 'Huntington Beach',
        state: 'CA',
        notes: ''
    },
    {
        vendor: @vendor6,
        city: 'Danville',
        state: 'CA',
        notes: ''
    },
])