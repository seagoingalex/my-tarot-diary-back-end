puts "Destroying existing seed data and resetting id counts..."

User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
PersonalProfile.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('personal_profiles')
PublicProfile.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('public_profiles')
Friend.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('friends')
Reading.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('readings')
CardDrawing.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('card_drawings')
Card.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('card')

puts "Seeding Users..."

User.create!([
    {
        username: "alcal",
        password: "1234",
        first_name: "Alex",
        last_name: "Calvert"
    }
])

user1 = User.all[0]

puts "Seeding Profiles..."

PersonalProfile.create!(user_id: 1)
PublicProfile.create!(user_id: 1)

personal1 = PersonalProfile.all[0]
public1 = PublicProfile.all[0]

puts "Seeding Friends..."

Friend.create!([
    {
        first_name: "Nic",
        last_name: "Varela"
    },
    {
        first_name: "Ryan",
        last_name: "Clark"
    }
])

friend1 = Friend.all[0]
friend2 = Friend.all[1]

puts "Seeding Cards..."

Card.create!([
    {
        img: "",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "",
        arcana_type:"major",
        name:"The Magician",
        value:"1",
        value_int:1,
        meaning_up:"Skill, diplomacy, address, subtlety; sickness, pain, loss, disaster, snares of enemies; self-confidence, will; the Querent, if male.",
        meaning_rev:"Physician, Magus, mental disease, disgrace, disquiet.",
        desc_up:"A youthful figure in the robe of a magician, having the countenance of divine Apollo, with smile of confidence and shining eyes. Above his head is the mysterious sign of the Holy Spirit, the sign of life, like an endless cord, forming the figure 8 in a horizontal position . About his waist is a serpent-cincture, the serpent appearing to devour its own tail. This is familiar to most as a conventional symbol of eternity, but here it indicates more especially the eternity of attainment in the spirit. In the Magician's right hand is a wand raised towards heaven, while the left hand is pointing to the earth. This dual sign is known in very high grades of the Instituted Mysteries; it shews the descent of grace, virtue and light, drawn from things above and derived to things below. The suggestion throughout is therefore the possession and communication of the Powers and Gifts of the Spirit. On the table in front of the Magician are the symbols of the four Tarot suits, signifying the elements of natural life, which lie like counters before the adept, and he adapts them as he wills. Beneath are roses and lilies, the flos campi and lilium convallium, changed into garden flowers, to shew the culture of aspiration. This card signifies the divine motive in man, reflecting God, the will in the liberation of its union with that which is above. It is also the unity of individual being on all planes, and in a very high sense it is thought, in the fixation thereof. With further reference to what I have called the sign of life and its connexion with the number 8, it may be remembered that Christian Gnosticism speaks of rebirth in Christ as a change \"unto the Ogdoad.\" The mystic number is termed Jerusalem above, the Land flowing with Milk and Honey, the Holy Spirit and the Land of the Lord. According to Martinism, 8 is the number of Christ.",
        desc_rev:"A youthful figure in the robe of a magician, having the countenance of divine Apollo, with smile of confidence and shining eyes. Above his head is the mysterious sign of the Holy Spirit, the sign of life, like an endless cord, forming the figure 8 in a horizontal position . About his waist is a serpent-cincture, the serpent appearing to devour its own tail. This is familiar to most as a conventional symbol of eternity, but here it indicates more especially the eternity of attainment in the spirit. In the Magician's right hand is a wand raised towards heaven, while the left hand is pointing to the earth. This dual sign is known in very high grades of the Instituted Mysteries; it shews the descent of grace, virtue and light, drawn from things above and derived to things below. The suggestion throughout is therefore the possession and communication of the Powers and Gifts of the Spirit. On the table in front of the Magician are the symbols of the four Tarot suits, signifying the elements of natural life, which lie like counters before the adept, and he adapts them as he wills. Beneath are roses and lilies, the flos campi and lilium convallium, changed into garden flowers, to shew the culture of aspiration. This card signifies the divine motive in man, reflecting God, the will in the liberation of its union with that which is above. It is also the unity of individual being on all planes, and in a very high sense it is thought, in the fixation thereof. With further reference to what I have called the sign of life and its connexion with the number 8, it may be remembered that Christian Gnosticism speaks of rebirth in Christ as a change \"unto the Ogdoad.\" The mystic number is termed Jerusalem above, the Land flowing with Milk and Honey, the Holy Spirit and the Land of the Lord. According to Martinism, 8 is the number of Christ."
    }
])

card1 = Card.all[0]

puts "Seeding Readings..."

Reading.create!([
    {
        read_requester_id: personal1.id,
        read_requester_type: "PersonalProfile",
        reader_id: personal1.id,
        reader_type: "PersonalProfile",
        drawing_type:"Daily Drawing",
        question:"What's the day look like?",
        rating: 10,
        descriptors:"Great!",
        notes:"I am pleased with this reading"
    },
    {
        read_requester_id: friend1.id,
        read_requester_type: "Friend",
        reader_id: public1.id,
        reader_type: "PublicProfile",
        drawing_type:"Single Card",
        question:"How can I set myself up for success?",
        rating: 6,
        descriptors:"Relieved!",
        notes:"Thank goodness!"
    }
])

reading1 = Reading.all[0]
reading2 = Reading.all[1]

puts "Seeding Card Drawings..."

CardDrawing.create!(reading_id: reading1.id, card_id: card1.id)
CardDrawing.create!(reading_id: reading2.id, card_id: card1.id)

puts "🌱 Done seeding!"