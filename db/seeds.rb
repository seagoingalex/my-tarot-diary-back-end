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
        username: "puddin",
        password: "1234",
        first_name: "Harley",
        last_name: "Quinn",
        email: "clowngirl@gmail.com"
    },
    {
        username: "bloodsport",
        password: "1234",
        first_name: "Robert",
        last_name: "DuBois",
        email: "sharpshooter@gmail.com"
    },
    {
        username: "peacemaker",
        password: "1234",
        first_name: "Christopher",
        last_name: "Smith",
        email: "sharpershooter@gmail.com"
    },
    {
        username: "squadleader",
        password: "1234",
        first_name: "Rick",
        last_name: "Flag",
        email: "gooseintraining@gmail.com"
    },
    {
        username: "nanaue",
        password: "1234",
        first_name: "King",
        last_name: "Shark",
        email: "fisharefriends@gmail.com"
    },
    {
        username: "ratcatcher",
        password: "1234",
        first_name: "Cleo",
        last_name: "Cazo",
        email: "piedpiper@gmail.com"
    }
])

user1 = User.all[0]
user2 = User.all[1]
user3 = User.all[2]
user4 = User.all[3]
user5 = User.all[4]
user6 = User.all[5]

puts "Seeding Profiles..."

PersonalProfile.create!(user_id: 1); PublicProfile.create!(user_id: 1); personal1 = PersonalProfile.all[0]; public1 = PublicProfile.all[0]

PersonalProfile.create!(user_id: 2); PublicProfile.create!(user_id: 2); personal2 = PersonalProfile.all[1]; public2 = PublicProfile.all[1]

PersonalProfile.create!(user_id: 3); PublicProfile.create!(user_id: 3); personal3 = PersonalProfile.all[2]; public3 = PublicProfile.all[2]

PersonalProfile.create!(user_id: 4); PublicProfile.create!(user_id: 4); personal4 = PersonalProfile.all[3]; public4 = PublicProfile.all[3]

PersonalProfile.create!(user_id: 5); PublicProfile.create!(user_id: 5); personal5 = PersonalProfile.all[4]; public5 = PublicProfile.all[4]

PersonalProfile.create!(user_id: 6); PublicProfile.create!(user_id: 6); personal6 = PersonalProfile.all[5]; public6 = PublicProfile.all[5]

puts "Seeding Friends..."

Friend.create!([
    {
        first_name: "Bruce",
        last_name: "Wayne",
        public_profile_id: user1.id
    },
    {
        first_name: "Clark",
        last_name: "Kent",
        public_profile_id: user1.id
    },
    {
        first_name: "Diana",
        last_name: "Prince",
        public_profile_id: user1.id
    },
    {
        first_name: "Barry",
        last_name: "Allen",
        public_profile_id: user1.id
    },
    {
        first_name: "J'onn",
        last_name: "J'onzz",
        public_profile_id: user1.id
    },
    {
        first_name: "John",
        last_name: "Stewart",
        public_profile_id: user1.id
    },
    {
        first_name: "Kendra",
        last_name: "Saunders",
        public_profile_id: user1.id
    }

])

friend1 = Friend.all[0]
friend2 = Friend.all[1]
friend3 = Friend.all[2]
friend4 = Friend.all[3]
friend5 = Friend.all[4]
friend6 = Friend.all[5]
friend7 = Friend.all[6]

puts "Seeding Cards..."

Card.create!([
    {
        id: 1,
        img: "/images/major/TheFool.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Fool",
        value:"ZERO",
        value_int:0,
        meaning_up:"INNOCENCE | NEW BEGINNINGS | FREE SPIRIT",
        meaning_rev:"Negligence, absence, distribution, carelessness, apathy, nullity, vanity.",
        desc_up:"Zero (or the missing number) stands for nothing. It warns you against living a meaningless life. Seen from another angle, the zero point defines your personal starting point, the site of unity within yourself, at the very core of your being. Like the initial point of a coordinate system, this card represents the beginning of everything that makes up an individual. To look into the future with courage implies charting your own course, not least when all role models have failed you and you are forced to act into the blue without any prior support. The more unusual your path, the more panic you will experience if you have to go down in. Pan in Greek means 'all.' Therefore, panic means 'all-at-once.' The more room you give The Fool in your life, the easier it will be to get used to accepting yourself and the world as it is. Everything you know taes on a special importance in your life - when the time is right. The Fool represents a state of unadulterated bliss. As a fool, you are open to experiment and free to learn from all experience. You are entitled to lack answers and to change your point of view at will. Put your faith in your own originality and trust the world. Do not let others drive you crazy. It is foolish to concern yourself with things or events that cannot be appropriately judged at the present time.",
        desc_rev:"With light step, as if earth and its trammels had little power to restrain him, a young man in gorgeous vestments pauses at the brink of a precipice among the great heights of the world; he surveys the blue distance before him-its expanse of sky rather than the prospect below. His act of eager walking is still indicated, though he is stationary at the given moment; his dog is still bounding. The edge which opens on the depth has no terror; it is as if angels were waiting to uphold him, if it came about that he leaped from the height. His countenance is full of intelligence and expectant dream. He has a rose in one hand and in the other a costly wand, from which depends over his right shoulder a wallet curiously embroidered. He is a prince of the other world on his travels through this one-all amidst the morning glory, in the keen air. The sun, which shines behind him, knows whence he came, whither he is going, and how he will return by another path after many days. He is the spirit in search of experience. Many symbols of the Instituted Mysteries are summarized in this card, which reverses, under high warrants, all the confusions that have preceded it.\nIn his Manual of Cartomancy, Grand Orient has a curious suggestion of the office of Mystic Fool, as apart of his process in higher divination; but it might call for more than ordinary gifts to put it into operation. We shall see how the card fares according to the common arts of fortune-telling, and it will be an example, to those who can discern, of the fact, otherwise so evident, that the Trumps Major had no place originally in the arts of psychic gambling, when cards are used as the counters and pretexts. Of the circumstances under which this art arose we know, however, very little. The conventional explanations say that the Fool signifies the flesh, the sensitive life, and by a peculiar satire its subsidiary name was at one time the alchemist, as depicting folly at the most insensate stage."
    },
    {
        id: 2,
        img: "/images/major/TheMagician.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Magician",
        value:"1",
        value_int:1,
        meaning_up:"WILLPOWER | DESIRE | CREATION | MANIFESTATION",
        meaning_rev:"Physician, Magus, mental disease, disgrace, disquiet.",
        desc_up:"There is a kind of magic that really works and is not merely a matter of trickery, sleight of hand, hocus-pocus, or stage illusions. Magic, the 'possibility of the impossible,' is nothing more than becoming one with yourself, and one with the world. On your personal journey, you go through unique experiences and come up with solutions that no one has eer arrived at previously, as if under a wonderful spell. But your personal magic is not really supernatural. It is merely a matter of successfully fashioning your own unique existence by drawing on your special talents and qualities. No one can misappropriate or take away your special talents and qualities. Use your imagination, creativity, and communication skills! Make your very own distinctive contribution.",
        desc_rev:"A youthful figure in the robe of a magician, having the countenance of divine Apollo, with smile of confidence and shining eyes. Above his head is the mysterious sign of the Holy Spirit, the sign of life, like an endless cord, forming the figure 8 in a horizontal position . About his waist is a serpent-cincture, the serpent appearing to devour its own tail. This is familiar to most as a conventional symbol of eternity, but here it indicates more especially the eternity of attainment in the spirit. In the Magician's right hand is a wand raised towards heaven, while the left hand is pointing to the earth. This dual sign is known in very high grades of the Instituted Mysteries; it shews the descent of grace, virtue and light, drawn from things above and derived to things below. The suggestion throughout is therefore the possession and communication of the Powers and Gifts of the Spirit. On the table in front of the Magician are the symbols of the four Tarot suits, signifying the elements of natural life, which lie like counters before the adept, and he adapts them as he wills. Beneath are roses and lilies, the flos campi and lilium convallium, changed into garden flowers, to shew the culture of aspiration. This card signifies the divine motive in man, reflecting God, the will in the liberation of its union with that which is above. It is also the unity of individual being on all planes, and in a very high sense it is thought, in the fixation thereof. With further reference to what I have called the sign of life and its connexion with the number 8, it may be remembered that Christian Gnosticism speaks of rebirth in Christ as a change \"unto the Ogdoad.\" The mystic number is termed Jerusalem above, the Land flowing with Milk and Honey, the Holy Spirit and the Land of the Lord. According to Martinism, 8 is the number of Christ."
    },
    {
        id: 3,
        img: "/images/major/TheHighPriestess.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The High Priestess",
        value:"2",
        value_int:2,
        meaning_up:"INTUITION | UNCONSCIOUS | INNER VOICE",
        meaning_rev:"Passion, moral or physical ardour, conceit, surface knowledge.",
        desc_up:"High priestesses are encountered throughout human history and mythology as oracular authorities, exemplified by the Pythia of Delphi, sibyls, or prophetesses like Cassandra. Being a mirror, this card counsels you that it is quite correct and effective to seek guidance first and foremost within yourself. When drawn, The High Priestess encourages you to develop the power of your own soul and your own inner perceptions in order to mediate betwee piety and frivolity, nun-like devotion and cat-like instincts. The script of your life should be unrolled and evolved. Listen. Become aware of your inner voice and be open to sounds and timbres as well as to silence. Create a space just for yourself. Train your voice and express what matters most to you.",
        desc_rev:"She has the lunar crescent at her feet, a horned diadem on her head, with a globe in the middle place, and a large solar cross on her breast. The scroll in her hands is inscribed with the word Tora, signifying the Greater Law, the Secret Law and the second sense of the Word. It is partly covered by her mantle, to shew that some things are implied and some spoken. She is seated between the white and black pillars--J. and B.--of the mystic Temple, and the veil of the Temple is behind her: it is embroidered with palms and pomegranates. The vestments are flowing and gauzy, and the mantle suggests light--a shimmering radiance. She has been called occult Science on the threshold of the Sanctuary of Isis, but she is really the Secret Church, the House which is of God and man. She represents also the Second Marriage of the Prince who is no longer of this world; she is the spiritual Bride and Mother, the daughter of the stars and the Higher Garden of Eden. She is, in fine, the Queen of the borrowed light, but this is the light of all. She is the Moon nourished by the milk of the Supernal Mother.\nIn a manner, she is also the Supernal Mother herself--that is to say, she is the bright reflection. It is in this sense of reflection that her truest and highest name in bolism is Shekinah--the co-habiting glory. According to Kabalism, there is a Shekinah both above and below. In the superior world it is called Binah, the Supernal Understanding which reflects to the emanations that are beneath. In the lower world it is MaIkuth--that world being, for this purpose, understood as a blessed Kingdom that with which it is made blessed being the Indwelling Glory. Mystically speaking, the Shekinah is the Spiritual Bride of the just man, and when he reads the Law she gives the Divine meaning. There are some respects in which this card is the highest and holiest of the Greater Arcana."
    },
    {
        id: 4,
        img: "/images/major/TheEmpress.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Empress",
        value:"3",
        value_int:3,
        meaning_up:"MOTHERHOOD | PROTECTION | FERTILITY | NATURE",
        meaning_rev:"Abandonment",
        desc_up:"The Empress represents the many empresses and queens of yesteryear and today. She is also the Great Goddess of ancient history, the mother of gods, such as Isis and Mary, andlast but not least, the goddesses of love and fertility like Astarte, Aphrodite, and Venus. The card is a mirror of your own femininity, reflecting your personal experiences with others when engaging your own femininity, the heritage of your mother, your grandmothers, and your foremothers. This card is all about living a fruitful, flourishing, and star-studded life. All individuals, regardless of gender identity, are encouraged to become rulers of their own destinry and to take responsibility for their own well-being and fortune. In order to be happy and feel good, it is important to create your own realm, and to establish and follow rules that underpin your well-being and the pleasure you experience. Take charge of your daily well-being. Ban false goddesses and foreign empresses from your life!",
        desc_rev:"A stately figure, seated, having rich vestments and royal aspect, as of a daughter of heaven and earth. Her diadem is of twelve stars, gathered in a cluster. The symbol of Venus is on the shield which rests near her. A field of corn is ripening in front of her, and beyond there is a fall of water. The sceptre which she bears is surmounted by the globe of this world. She is the inferior Garden of Eden, the Earthly Paradise, all that is symbolized by the visible house of man. She is not Regina coeli, but she is still refugium peccatorum, the fruitful mother of thousands. There are also certain aspects in which she has been correctly described as desire and the wings thereof, as the woman clothed with the sun, as Gloria Mundi and the veil of the Sanctum Sanctorum; but she is not, I may add, the soul that has attained wings, unless all the symbolism is counted up another and unusual way. She is above all things universal fecundity and the outer sense of the Word. This is obvious, because there is no direct message which has been given to man like that which is borne by woman; but she does not herself carry its interpretation.\nIn another order of ideas, the card of the Empress signifies the door or gate by which an entrance is obtained into this life, as into the Garden of Venus; and then the way which leads out therefrom, into that which is beyond, is the secret known to the High Priestess: it is communicated by her to the elect. Most old attributions of this card are completely wrong on the symbolism--as, for example, its identification with the Word, Divine Nature, the Triad, and so forth."
    },
    {
        id: 5,
        img: "/images/major/TheEmperor.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Emperor",
        value:"4",
        value_int:4,
        meaning_up:"AUTHORITY | STRUCTURE | CONTROL | FATHERHOOD",
        meaning_rev:"Benevolence, compassion, credit; also confusion to enemies, obstruction, immaturity.",
        desc_up:"Emperors and kings, Zeus and Jupiter, and many other father figures have informed this image. It is a mirror of your own masculinity, reflecting your personal experiences with others when engaging your own masculinity, the heritage of your father, your grandfathers, and your forefathers. This card is not only a symbol of external order, but also of your ability to take charge of your own destiny. The message of The Emperor should be heeded by all, encouraging the art of self-rule and self-motivation. Our greatest talents will come to nothing, if they are used destructively or if we don't succeed in creating something new out of dereliction. The wasteland must be turned into a garden! Every one of us brings something orginial into the world, which is waiting to be explored and developed. The Emperor represents the pioneering spirit in us all and the ability to open up new possibilities in life or love. Put your pioneering spirit to use. Explore your current situation. Don't imitate, innovate! Create your truth, and be the master of your own game!",
        desc_rev:"He has a form of the Crux ansata for his sceptre and a globe in his left hand. He is a crowned monarch--commanding, stately, seated on a throne, the arms of which axe fronted by rams' heads. He is executive and realization, the power of this world, here clothed with the highest of its natural attributes. He is occasionally represented as seated on a cubic stone, which, however, confuses some of the issues. He is the virile power, to which the Empress responds, and in this sense is he who seeks to remove the Veil of Isis; yet she remains virgo intacta.\nIt should be understood that this card and that of the Empress do not precisely represent the condition of married life, though this state is implied. On the surface, as I have indicated, they stand for mundane royalty, uplifted on the seats of the mighty; but above this there is the suggestion of another presence. They signify also--and the male figure especially--the higher kingship, occupying the intellectual throne. Hereof is the lordship of thought rather than of the animal world. Both personalities, after their own manner, are \"full of strange experience,\" but theirs is not consciously the wisdom which draws from a higher world. The Emperor has been described as (a) will in its embodied form, but this is only one of its applications, and (b) as an expression of virtualities contained in the Absolute Being--but this is fantasy."
    },
    {
        id: 6,
        img: "/images/major/TheHierophant.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Hierophant",
        value:"5",
        value_int:5,
        meaning_up:"TRADITION | CONFORMITY | MORALITY AND ETHICS",
        meaning_rev:"Society, good understanding, concord, overkindness, weakness.",
        desc_up:"All high prists of the most diverse religious traditions have one thing in common: the task of interpreting the mysteries of life and organizing the appropriate rites. It is your task today to recognize this power within yourself. The key is right in front of your very own eyes! For religious-minded people, this card refers to finding one's way to God and making peace with Him. In a broader sense, this card is all about teaching and learning, initiation and understanding. In order to know others, we have to know ourselves and thus become able to appreciate the purpose of our own existence. The sacred manifests itself in our daily human interaction, and each person has the potential to be a spiritual teacher for themselves and others. Initiate others into your mysteries. Be open to the needs of others.",
        desc_rev:"He wears the triple crown and is seated between two pillars, but they are not those of the Temple which is guarded by the High Priestess. In his left hand he holds a sceptre terminating in the triple cross, and with his right hand he gives the well-known ecclesiastical sign which is called that of esotericism, distinguishing between the manifest and concealed part of doctrine. It is noticeable in this connexion that the High Priestess makes no sign. At his feet are the crossed keys, and two priestly ministers in albs kneel before him. He has been usually called the Pope, which is a particular application of the more general office that he symbolizes. He is the ruling power of external religion, as the High Priestess is the prevailing genius of the esoteric, withdrawn power. The proper meanings of this card have suffered woeful admixture from nearly all hands. Grand Orient says truly that the Hierophant is the power of the keys, exoteric orthodox doctrine, and the outer side of the life which leads to the doctrine; but he is certainly not the prince of occult doctrine, as another commentator has suggested.\nHe is rather the summa totius theologiæ, when it has passed into the utmost rigidity of expression; but he symbolizes also all things that are righteous and sacred on the manifest side. As such, he is the channel of grace belonging to the world of institution as distinct from that of Nature, and he is the leader of salvation for the human race at large. He is the order and the head of the recognized hierarchy, which is the reflection of another and greater hierarchic order; but it may so happen that the pontiff forgets the significance of this his symbolic state and acts as if he contained within his proper measures all that his sign signifies or his symbol seeks to shew forth. He is not, as it has been thought, philosophy-except on the theological side; he is not inspiration; and he is not religion, although he is a mode of its expression."
    },
    {
        id: 7,
        img: "/images/major/TheLovers.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Lovers",
        value:"6",
        value_int:6,
        meaning_up:"PARTNERSHIPS | UNION | DUALITY | CHOICE",
        meaning_rev:"Failure, foolish designs. Another account speaks of marriage frustrated and contrarieties of all kinds.",
        desc_up:"We long for love, but we may also be afraid to love and/or be loved. Whether or not love makes us happy depends greatly on what hopes and expectations we hold about 'love.' As long as your are looking for your 'better half,' you risk being only half a person. Or we may be looking for someone who is most like ourselves. Ask yourself if this is what you are seeking. For if you are looking for the one who resembles you in every respect, who knows and understands you intimately, that person can only be yourself. The more pronounced the distinctions, the more precious the points of harmony. Once you have learned to love the differences, the doors to a new paradise will open. However, many shadows and dark clouds will create obstacles on your path. Only love based on the individuality and originality of each partner will lead to this new paradise and be fulfilled in flights of inspiration and peak experiences going beyond the reach of each individual. Every kind of relationship - even the one with yourself or with a business partner - needs a metaphoric 'child': a productive result or outcome that bears witness to your partnership, and lives and grows.",
        desc_rev:"he sun shines in the zenith, and beneath is a great winged figure with arms extended, pouring down influences. In the foreground are two human figures, male and female, unveiled before each other, as if Adam and Eve when they first occupied the paradise of the earthly body. Behind the man is the Tree of Life, bearing twelve fruits, and the Tree of the Knowledge of Good and Evil is behind the woman; the serpent is twining round it. The figures suggest youth, virginity, innocence and love before it is contaminated by gross material desire. This is in all simplicity the card of human love, here exhibited as part of the way, the truth and the life. It replaces, by recourse to first principles, the old card of marriage, which I have described previously, and the later follies which depicted man between vice and virtue. In a very high sense, the card is a mystery of the Covenant and Sabbath.\nThe suggestion in respect of the woman is that she signifies that attraction towards the sensitive life which carries within it the idea of the Fall of Man, but she is rather the working of a Secret Law of Providence than a willing and conscious temptress. It is through her imputed lapse that man shall arise ultimately, and only by her can he complete himself. The card is therefore in its way another intimation concerning the great mystery of womanhood. The old meanings fall to pieces of necessity with the old pictures, but even as interpretations of the latter, some of them were of the order of commonplace and others were false in symbolism."
    },
    {
        id: 8,
        img: "/images/major/TheChariot.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Chariot",
        value:"7",
        value_int:7,
        meaning_up:"DIRECTION | CONTROL | WILLPOWER",
        meaning_rev:"Riot, quarrel, dispute, litigation, defeat.",
        desc_up:"The Chariot stands for experiencing and developing one's own personality, which has two aspects: deliberate choice, on the one hand, and the forces of the unconscious, on the other. This card symbolizes the 'way of desire,' which is the path towards fulfillment of sensible desires and the ability to let go of unfounded fears. Everything you do on the way is worth your while, even if it requires a lot of effort or (apparent) detours. And even the greatest achievements mean nothing if they do not help you on your way of desire - as wisely coined in the phrase 'the journey is its own reward.' In many other contexts, the difference between journey and destination is of the utmost importance. Assume full responsibility for the shapingof your life path. You cannot get off the chariot, not relinquish your own karma, but you can stroke out in a new direction. The right attitude helps you to accept and develop the positive aspects you encounter but also empowers you to avoid and let go or, alternatively, to integrate and master the 'bad.' Accept the light and the shadows and turn your darkest fears into golden opportunities and self-fulfillment.",
        desc_rev:"An erect and princely figure carrying a drawn sword and corresponding, broadly speaking, to the traditional description which I have given in the first part. On the shoulders of the victorious hero are supposed to be the Urim and Thummim. He has led captivity captive; he is conquest on all planes--in the mind, in science, in progress, in certain trials of initiation. He has thus replied to the sphinx, and it is on this account that I have accepted the variation of Éliphas Lévi; two sphinxes thus draw his chariot. He is above all things triumph in the mind.\nIt is to be understood for this reason (a) that the question of the sphinx is concerned with a Mystery of Nature and not of the world of Grace, to which the charioteer could offer no answer; (b) that the planes of his conquest are manifest or external and not within himself; (c) that the liberation which he effects may leave himself in the bondage of the logical understanding; (d) that the tests of initiation through which he has passed in triumph are to be understood physically or rationally; and (e) that if he came to the pillars of that Temple between which the High Priestess is seated, he could not open the scroll called Tora, nor if she questioned him could he answer. He is not hereditary royalty and he is not priesthood."
    },
    {
        id: 9,
        img: "/images/major/Strength.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"Strength",
        value:"8",
        value_int:8,
        meaning_up:"BRAVERY | COMPASSION | FOCUS | INNER STRENGTH",
        meaning_rev:"Despotism, abuse if power, weakness, discord, sometimes even disgrace.",
        desc_up:"This card is all about dealing deliberately with your vitality and lust of life, the love of all creation. The key to discovering your own strength is a loving and determined handling of your id (libido, instinct, energy). This card is not just about strength, power, and lust, but also stands for the cultivation of your personality, which will enable you to minimize harmful influences on your life and which allows your own creative forces to blossom. If you succeed, you will be able to grow beyond the limitations of your ego and you will learn where you have to draw the line. A great deal of inner understanding will radiate the truest of the power within yourself. Along with this power, there is also compassion, thus the relationship between the woman and the lion typically depicted on this card is not of one force, but balance between them. Beware of useless ideals and of violence in the name of love. Give your lust for life another chance. Living fully means always being totally in the present. This is the card of the high points and peak experiences in all aspects of life.",
        desc_rev:"A woman, over whose head there broods the same symbol of life which we have seen in the card of the Magician, is closing the jaws of a lion. The only point in which this design differs from the conventional presentations is that her beneficent fortitude has already subdued the lion, which is being led by a chain of flowers. For reasons which satisfy myself, this card has been interchanged with that of justice, which is usually numbered eight. As the variation carries nothing with it which will signify to the reader, there is no cause for explanation. Fortitude, in one of its most exalted aspects, is connected with the Divine Mystery of Union; the virtue, of course, operates in all planes, and hence draws on all in its symbolism. It connects also with innocentia inviolata, and with the strength which resides in contemplation.\nThese higher meanings are, however, matters of inference, and I do not suggest that they are transparent on the surface of the card. They are intimated in a concealed manner by the chain of flowers, which signifies, among many other things, the sweet yoke and the light burden of Divine Law, when it has been taken into the heart of hearts. The card has nothing to do with self-confidence in the ordinary sense, though this has been suggested--but it concerns the confidence of those whose strength is God, who have found their refuge in Him. There is one aspect in which the lion signifies the passions, and she who is called Strength is the higher nature in its liberation. It has walked upon the asp and the basilisk and has trodden down the lion and the dragon."
    },
    {
        id: 10,
        img: "/images/major/TheHermit.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Hermit",
        value:"9",
        value_int:9,
        meaning_up:"CONTEMPLATION | SEARCH FOR TRUTH | INNER GUIDANCE",
        meaning_rev:"Concealment, disguise, policy, fear, unreasoned caution.",
        desc_up:"The Hermit is all about evaluating the sum of your experiences and constantly reorganizing your life accordingly. Every human being brings something original and novel into the world, it's your responsibility to contemplate and identify your own. Your light gets stronger as you resolve your own contradictions. If you do not assume responsibility for your life or if you retreat into incompetence or irresponsibility, you will fail to approach the magnicifent power of The Hermit. He exemplifies rather a person who tackles his problems when appropriate and solves them. As such, this card is all about using your own light to heal and sanctify your world and to transform the earth back to its original state. This card sometimes signals a need for rest and withdrawal, but more often, for commitment and efort and for accepting responsibility. Pay your debts - in a material as well as a moral sense. Increase your own wealth, wellness and well-being as well as that of your fellow human beings.",
        desc_rev:"The variation from the conventional models in this card is only that the lamp is not enveloped partially in the mantle of its bearer, who blends the idea of the Ancient of Days with the Light of the World It is a star which shines in the lantern. I have said that this is a card of attainment, and to extend this conception the figure is seen holding up his beacon on an eminence. Therefore the Hermit is not, as Court de Gebelin explained, a wise man in search of truth and justice; nor is he, as a later explanation proposes, an especial example of experience. His beacon intimates that \"where I am, you also may be.\"\nIt is further a card which is understood quite incorrectly when it is connected with the idea of occult isolation, as the protection of personal magnetism against admixture. This is one of the frivolous renderings which we owe to Éliphas Lévi. It has been adopted by the French Order of Martinism and some of us have heard a great deal of the Silent and Unknown Philosophy enveloped by his mantle from the knowledge of the profane. In true Martinism, the significance of the term Philosophe inconnu was of another order. It did not refer to the intended concealment of the Instituted Mysteries, much less of their substitutes, but--like the card itself--to the truth that the Divine Mysteries secure their own protection from those who are unprepared."
    },
    {
        id: 11,
        img: "/images/major/WheelOfFortune.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"Wheel Of Fortune",
        value:"10",
        value_int:10,
        meaning_up:"CHANGE | CYCLES | INEVITABLE FATE",
        meaning_rev:"Increase, abundance, superfluity.",
        desc_up:"If you submit yourself to the hands of fate, your individual life will be enriched with universal components, in effect doubling it: 'You only live twice!' Do not exhaust your energy by simply trying to get by. Your life is meant to be much more than plain day-to-day survival or a heroic struggle for existence. The wholeness of the self can only be achieved by uniting consciousness and the unconscious mind. If the individual is reconciled with their destiny, they will be in harmony with the world and experience synchronicity and resonance. You learn to work in harmony with your destiny by lovingly - and critically - accepting 'chance' and correlations that are beyond your comprehension. Tarot constitutes an ideal training ground, as it allows you to make use of coincidences. For the next ten days, draw a card every day!",
        desc_rev:"In this symbol I have again followed the reconstruction of Éliphas Lévi, who has furnished several variants. It is legitimate--as I have intimated--to use Egyptian symbolism when this serves our purpose, provided that no theory of origin is implied therein. I have, however, presented Typhon in his serpent form. The symbolism is, of course, not exclusively Egyptian, as the four Living Creatures of Ezekiel occupy the angles of the card, and the wheel itself follows other indications of Lévi in respect of Ezekiel's vision, as illustrative of the particular Tarot Key. With the French occultist, and in the design itself, the symbolic picture stands for the perpetual motion of a fluidic universe and for the flux of human life. The Sphinx is the equilibrium therein. The transliteration of Taro as Rota is inscribed on the wheel, counterchanged with the letters of the Divine Name--to shew that Providence is imphed through all. But this is the Divine intention within, and the similar intention without is exemplified by the four Living Creatures. Sometimes the sphinx is represented couchant on a pedestal above, which defrauds the symbolism by stultifying the essential idea of stability amidst movement.\nBehind the general notion expressed in the symbol there lies the denial of chance and the fatality which is implied therein. It may be added that, from the days of Lévi onward, the occult explanations of this card are--even for occultism itself--of a singularly fatuous kind. It has been said to mean principle, fecundity, virile honour, ruling authority, etc. The findings of common fortune-telling are better than this on their own plane."
    },
    {
        id: 12,
        img: "/images/major/Justice.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"Justice",
        value:"11",
        value_int:11,
        meaning_up:"CAUSE AND EFFECT | CLARITY | TRUTH",
        meaning_rev:"Law in all its departments, legal complications, bigotry, bias, excessive severity.",
        desc_up:"It is but a small step from the right attitude associated with The Chariot to justice, a cardinal virtue known from antiquity. How can we manage to do what is right for us and abstain from that which is false? In order to judge wisely, you have to connect the known with the unknown - and learn to distinguish one from the other. The scales of justice measure what is only vaguely known. Unclear feelings, thoughts, and physical sensations have to be evaluated, prejudices have to be overcome. 'The more knowledge is contained within a thing, the greater the love.' Be prepared to criticize and have the courage to praise, but above all, be willing to shed the discerning light of love on every person and event, on both the high and the low points of your life.",
        desc_rev:"As this card follows the traditional symbolism and carries above all its obvious meanings, there is little to say regarding it outside the few considerations collected in the first part, to which the reader is referred.\nIt will be seen, however, that the figure is seated between pillars, like the High Priestess, and on this account it seems desirable to indicate that the moral principle which deals unto every man according to his works--while, of course, it is in strict analogy with higher things;--differs in its essence from the spiritual justice which is involved in the idea of election. The latter belongs to a mysterious order of Providence, in virtue of which it is possible for certain men to conceive the idea of dedication to the highest things. The operation of this is like the breathing of the Spirit where it wills, and we have no canon of criticism or ground of explanation concerning it. It is analogous to the possession of the fairy gifts and the high gifts and the gracious gifts of the poet: we have them or have not, and their presence is as much a mystery as their absence. The law of Justice is not however involved by either alternative. In conclusion, the pillars of Justice open into one world and the pillars of the High Priestess into another."
    },
    {
        id: 13,
        img: "/images/major/TheHangedMan.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Hanged Man",
        value:"12",
        value_int:12,
        meaning_up:"SACRIFICE | RELEASE | MARTYRDOM",
        meaning_rev:"Selfishness, the crowd, body politic.",
        desc_up:"At first glance, the upside-down position of The Hanged Man appears to be rather offputting. No wonder that strangeness, rapture, and the absurd are all elements of this card. But there is another important element: The Hanged Man is at peace with the world, except that his point of reference is not worldly but transcendental. His essence is suspended in the heavenly, the transcendental. Saint Francis's motto was 'Metanoeite,' which can be translated as 'Turn around and change.' Saul turned into Paul. Stories about shamans, sorcerers like Merlin, or gods like Odin abound, who all had to undergo severe trials, during which each experienced a transformation. On the other hand, the picture hints at inappropriate passivity and at a person who simply 'hangs on.' The Hanged Man believes in the thing to which he is attached. And he is attached to what he believes. How tragic it would be if the belief turned out to be superstition. As such, it is important to evaluate your own belief system, which may foten involve turning everything upside down and completely changing your own point of view. Reassess your own beliefs and presumptions. If you have found your belief system to be valid, do not hestitate to place the utmost confidence in it. A meaningful faith and a purposeful passion are a great boon.",
        desc_rev:"The gallows from which he is suspended forms a Tau cross, while the figure--from the position of the legs--forms a fylfot cross. There is a nimbus about the head of the seeming martyr. It should be noted (1) that the tree of sacrifice is living wood, with leaves thereon; (2) that the face expresses deep entrancement, not suffering; (3) that the figure, as a whole, suggests life in suspension, but life and not death. It is a card of profound significance, but all the significance is veiled. One of his editors suggests that Éliphas Lévi did not know the meaning, which is unquestionable nor did the editor himself. It has been called falsely a card of martyrdom, a card a of prudence, a card of the Great Work, a card of duty; but we may exhaust all published interpretations and find only vanity. I will say very simply on my own part that it expresses the relation, in one of its aspects, between the Divine and the Universe.\nHe who can understand that the story of his higher nature is imbedded in this symbolism will receive intimations concerning a great awakening that is possible, and will know that after the sacred Mystery of Death there is a glorious Mystery of Resurrection."
    },
    {
        id: 14,
        img: "/images/major/Death.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"Death",
        value:"13",
        value_int:13,
        meaning_up:"END OF A CYCLE | BEGINNINGS | CHANGE | METAMORPHOSIS",
        meaning_rev:"Inertia, sleep, lethargy, petrifaction, somnambulism; hope destroyed.",
        desc_up:"This card is all about something coming to an end. Depending on whether you consider this good or bad, you will experience joy or sorrow. The card also warns that there is something you must attend to. You have to let go of something and create some space, in which the rose may blossom. Note that this card is not the last of the Major Arcana, but near the middle. Life goes on. One can be dead while still alive. And one may live long after one has died. Death is not nothingness. It is the destroyer of illusions and of all that no longer fits into your life. It is a part of a process of metamorphosis. The aim is for all of your desires and fears to be cleansed and clarified. Thus we become willing and ready again and serenely open. The question of what you want to experience, create, and harvest in this life becomes even more pressing. This card can also imply that you feel threatened by violence and destrictuion, perhaps eveng glorify death. Brutality does not only hurt the other but yourself. Learn to put your power to good uses on your own behalf, not to use it against others. If you want your life to be fruitful, you have to attent to what needs to be done at the right moment Which one of your fruits is ripe? What is still missing, what no longer fitting? How do you realize your desires?",
        desc_rev:"The veil or mask of life is perpetuated in change, transformation and passage from lower to higher, and this is more fitly represented in the rectified Tarot by one of the apocalyptic visions than by the crude notion of the reaping skeleton. Behind it lies the whole world of ascent in the spirit. The mysterious horseman moves slowly, bearing a black banner emblazoned with the Mystic Rose, which signifies life. Between two pillars on the verge of the horizon there shines the sun of immortality. The horseman carries no visible weapon, but king and child and maiden fall before him, while a prelate with clasped hands awaits his end.\nThere should be no need to point out that the suggestion of death which I have made in connection with the previous card is, of course, to be understood mystically, but this is not the case in the present instance. The natural transit of man to the next stage of his being either is or may be one form of his progress, but the exotic and almost unknown entrance, while still in this life, into the state of mystical death is a change in the form of consciousness and the passage into a state to which ordinary death is neither the path nor gate. The existing occult explanations of the 13th card are, on the whole, better than usual, rebirth, creation, destination, renewal, and the rest."
    },
    {
        id: 15,
        img: "/images/major/Temperance.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"Temperance",
        value:"14",
        value_int:14,
        meaning_up:"THE MIDDLE PATH | PATIENCE | FINDING MEANING",
        meaning_rev:"Things connected with churches, religions, sects, the priesthood, sometimes even the priest who will marry the Querent; also disunion, unfortunate combinations, competing interests.",
        desc_up:"Long before the first tarot cards were created, temperance was considered to be one of the cardinal virtues. It has to do with the right measure of all things and with basic human creativity. We will not find our own true measure, our art, and our own style of living by looking up to idols and masters. What seems to be a card of inaction is really a provocation: the card urges us to become active as an artist and a master of the art of life in designing our own lives. Traditionally, Temperance is considered to be a fire card. Purification through fire sloughs off all dross, allowing true will to be reborn. This can only be recovered by giving up the position of commentator and spectator and becoming an active participant in life. Amidst activities and pursuits, reserve time to take stock of your current situation. Understand how you can joyfully change the world and being to play with new possibilities. Establish your own 'creativity workshop.' In your daily life, find a time and place to take a break and tarry awhile on a regular basis.",
        desc_rev:"A winged angel, with the sign of the sun upon his forehead and on his breast the square and triangle of the septenary. I speak of him in the masculine sense, but the figure is neither male nor female. It is held to be pouring the essences of life from chalice to chalice. It has one foot upon the earth and one upon waters, thus illustrating the nature of the essences. A direct path goes up to certain heights on the verge of the horizon, and above there is a great light, through which a crown is seen vaguely. Hereof is some part of the Secret of Eternal Life, as it is possible to man in his incarnation. All the conventional emblems are renounced herein.\nSo also are the conventional meanings, which refer to changes in the seasons, perpetual movement of life and even the combination of ideas. It is, moreover, untrue to say that the figure symbolizes the genius of the sun, though it is the analogy of solar light, realized in the third part of our human triplicity. It is called Temperance fantastically, because, when the rule of it obtains in our consciousness, it tempers, combines and harmonises the psychic and material natures. Under that rule we know in our rational part something of whence we came and whither we are going."
    },
    {
        id: 16,
        img: "/images/major/TheDevil.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Devil",
        value:"15",
        value_int:15,
        meaning_up:"EXCESS | MATERIALISM | PLAYFULNESS",
        meaning_rev:"Evil fatality, weakness, pettiness, blindness.",
        desc_up:"Each and every human being brings something new into the world, but we all have certain qualities and peculiarities that do not fit into the present framework. Every human being continues the story of creation - and therefore is bound eventually to enter the realm of taboo. The Devil clearly indicates that some kind of taboo has been violated. What was implicit now becomes visible. This can be used to your advantage because you can now take on the task of openly dealing with taboos, affirming meaningful ones, and getting rid of others that are senseless. Don't be put off by the bully. This is your chance to break some old horns. On the one hand, The Devil represents a vampire and a real burden and vexation. No wonder we are afraid. Yet this is our opportunity to rid ourselves of the darkness that we have finally recognized for what it is. On the other hand, The Devil represents the 'prodigal son,' that part of us that we have always tended to deny and neglect although we secretly and righfully long for it. Now is the time to bring the prodigal son home. Once you have shed light onto the darkness, the vampire will turn to dust and the hidden will take on shape and color as it emerges. Dare to face the unknown and observe it closely until you can decide how much of it to use and what to discard.",
        desc_rev:"The design is an accommodation, mean or harmony, between several motives mentioned in the first part. The Horned Goat of Mendes, with wings like those of a bat, is standing on an altar. At the pit of the stomach there is the sign of Mercury. The right hand is upraised and extended, being the reverse of that benediction which is given by the Hierophant in the fifth card. In the left hand there is a great flaming torch, inverted towards the earth. A reversed pentagram is on the forehead. There is a ring in front of the altar, from which two chains are carried to the necks of two figures, male and female. These are analogous with those of the fifth card, as if Adam and Eve after the Fall. Hereof is the chain and fatality of the material life.\nThe figures are tailed, to signify the animal nature, but there is human intelligence in the faces, and he who is exalted above them is not to be their master for ever. Even now, he is also a bondsman, sustained by the evil that is in him and blind to the liberty of service. With more than his usual derision for the arts which he pretended to respect and interpret as a master therein, Éliphas Lévi affirms that the Baphometic figure is occult science and magic. Another commentator says that in the Divine world it signifies predestination, but there is no correspondence in that world with the things which below are of the brute. What it does signify is the Dweller on the Threshold without the Mystical Garden when those are driven forth therefrom who have eaten the forbidden fruit."
    },
    {
        id: 17,
        img: "/images/major/TheTower.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Tower",
        value:"16",
        value_int:16,
        meaning_up:"SUDDEN UPHEAVAL | PRIDE | DISASTER",
        meaning_rev:"According to one account, the same in a lesser degree also oppression, imprisonment, tyranny.",
        desc_up:"Two archetypes determine the meaning of this card: the Tower of Babel and Pentecost. The building of the Tower of Babel is a symbol of human megalomania, culminating not only in the destruction of the tower but also in the Babylonian confusion of tongues. Pentecost is the opposite of the building of the tower. The Holy Ghost descends upon the disciples in the form of a storm and tongues of fire. As they start to talk, everyone hears themselves speaking in their own language. Instead of a confusion of tongues, this event symbolizes the tearing down of all language barriers. Babel and Pentecost are two opposite poles. Violence destroys and results in speechlessness and ocnfusion. In contrast, love tears down all language barriers and makes true communication possible without limits. The card cautions you to beware of megalomania and lack of steadfastness. There might be rocky times ahead. You are urged to leave your ivory tower and your personal objections and pretenses behind when the time is ripe. This card also involves jumping out of the clouds and turning the free fall into flying. Go ahead and give it your all! You will gain more love and protect yourself better from danger if you learn consciously to deal with your energy. Risk being more direct. Make a leap into the unknown - even if the consequences are unfathomable",
        desc_rev:"Occult explanations attached to this card are meagre and mostly disconcerting. It is idle to indicate that it depicts min in all its aspects, because it bears this evidence on the surface. It is said further that it contains the first allusion to a material building, but I do not conceive that the Tower is more or less material than the pillars which we have met with in three previous cases. I see nothing to warrant Papus in supposing that it is literally the fall of Adam, but there is more in favour of his alternative--that it signifies the materialization of the spiritual word. The bibliographer Christian imagines that it is the downfall of the mind, seeking to penetrate the mystery of God. I agree rather with Grand Orient that it is the ruin of the House of We, when evil has prevailed therein, and above all that it is the rending of a House of Doctrine. I understand that the reference is, however, to a House of Falsehood. It illustrates also in the most comprehensive way the old truth that \"except the Lord build the house, they labour in vain that build it.\"\nThere is a sense in which the catastrophe is a reflection from the previous card, but not on the side of the symbolism which I have tried to indicate therein. It is more correctly a question of analogy; one is concerned with the fall into the material and animal state, while the other signifies destruction on the intellectual side. The Tower has been spoken of as the chastisement of pride and the intellect overwhelmed in the attempt to penetrate the Mystery of God; but in neither case do these explanations account for the two persons who are the living sufferers. The one is the literal word made void and the other its false interpretation. In yet a deeper sense, it may signify also the end of a dispensation, but there is no possibility here for the consideration of this involved question."
    },
    {
        id: 18,
        img: "/images/major/TheStar.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Star",
        value:"17",
        value_int:17,
        meaning_up:"HOPE | FAITH | REJUVENATION",
        meaning_rev:"Arrogance, haughtiness, impotence.",
        desc_up:"Personal truth often seems to be like a distant star. It takes a long time to attain. But all our dreams are focused upon that star; our personal truth is the fount of all our dreams. This source will never dry up. You only have to find it and take it into your own hands and raise it up high. Once the star lightens up your day as well as your night, then the truth will be revealed in all its beauty. Sometimes, this card warns you of inappropriate brazenness or compromise, a reminder to be aware of the pitfalls of The Star, namely the 'star cult.' Be careful not to use your own light to put others in the shade. Be equally careful not to neglect your own light by becoming mesmerized by other distant stars. Pitchers and chalices represent emotional needs, desires and fears. In this sense, we carry the vessel that we are - a receptacle that is filled and emptied out during the course of a lifetime. This vessel symbolizees the individual's part in the great stream of life. Reveal yourself, do your part. Do not hide your own beauty nor be shy about revealing your own truth. Give generously. Do not hide your light under the hood. However, remember that your star is only a small point in a much larger galaxy.",
        desc_rev:"A great, radiant star of eight rays, surrounded by seven lesser stars--also of eight rays. The female figure in the foreground is entirely naked. Her left knee is on the land and her right foot upon the water. She pours Water of Life from two great ewers, irrigating sea and land. Behind her is rising ground and on the right a shrub or tree, whereon a bird alights. The figure expresses eternal youth and beauty. The star is l'étoile flamboyante, which appears in Masonic symbolism, but has been confused therein. That which the figure communicates to the living scene is the substance of the heavens and the elements. It has been said truly that the mottoes of this card are \"Waters of Life freely\" and \"Gifts of the Spirit.\"\nThe summary of several tawdry explanations says that it is a card of hope. On other planes it has been certified as immortality and interior light. For the majority of prepared minds, the figure will appear as the type of Truth unveiled, glorious in undying beauty, pouring on the waters of the soul some part and measure of her priceless possession. But she is in reality the Great Mother in the Kabalistic Sephira Binah, which is supernal Understanding, who communicates to the Sephiroth that are below in the measure that they can receive her influx."
    },
    {
        id: 19,
        img: "/images/major/TheMoon.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Moon",
        value:"18",
        value_int:18,
        meaning_up:"UNCONSCIOUS | ILLUSIONS | INTUITION",
        meaning_rev:"Instability, inconstancy, silence, lesser degrees of deception and error.",
        desc_up:"The moon represents the collective unconscious and 'oceanic feelings.' The full moon will lure hidden instincts into the open, with the potential to shake us up emotionally. Do not lose courage! Perhaps we are gripped by emotional tension that we can't quite fathom. There is a danger of getting too absorbed in our vacillating moods. Instead of putting ourselves in the picture, we hide in the big city jungle, howl at the moon like the wolves, or become petrified like the tower. This is an opportunity for empathy to deepen. We feel at one with all living beings, as we are equally at home in the past, the present, and the future. This card conveys the promise of itnegrating that which has been formerly suppressed and transmuting the spiritual distress into the uplifing artful realms of the soul. The tedium of the everyday will be transformed into real fulfillment. Accept your intense emotions as a reality that wants to be lived, just like any other aspect of your being. Then you may safely swim about in the deep waters of your psyche. Be at peace with yoursel and the world, open up your head and cease to be self-absorbed.",
        desc_rev:"The distinction between this card and some of the conventional types is that the moon is increasing on what is called the side of mercy, to the right of the observer. It has sixteen chief and sixteen secondary rays. The card represents life of the imagination apart from life of the spirit. The path between the towers is the issue into the unknown. The dog and wolf are the fears of the natural mind in the presence of that place of exit, when there is only reflected light to guide it.\nThe last reference is a key to another form of symbolism. The intellectual light is a reflection and beyond it is the unknown mystery which it cannot shew forth. It illuminates our animal nature, types of which are represented below--the dog, the wolf and that which comes up out of the deeps, the nameless and hideous tendency which is lower than the savage beast. It strives to attain manifestation, symbolized by crawling from the abyss of water to the land, but as a rule it sinks back whence it came. The face of the mind directs a calm gaze upon the unrest below; the dew of thought falls; the message is: Peace, be still; and it may be that there shall come a calm upon the animal nature, while the abyss beneath shall cease from giving up a form."
    },
    {
        id: 20,
        img: "/images/major/TheSun.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The Sun",
        value:"19",
        value_int:19,
        meaning_up:"JOY | SUCCESS | CELEBRATION | POSITIVITY",
        meaning_rev:"The same in a lesser sense.",
        desc_up:"Your first birth brought you into this world. Your 'second birth' is nothing less than deliverately choosing your own life's path, no longer restricted by habitual behavior and fixed routines but informed by free choice and by exercising your own free will. Traditional behavior and thought patterns are replaced by a consciously chosen lifestyle. This theme is common to the Buddhist goal of enlightenment or the Christian maxim 'If you do not become like the little children, you will not enter the kingdom of heaven.' This second birth is possible only as the result of a process of becoming. As long as you are lacking a true understanding of yourself, you will remain in an in-between state, in a period of 'being on the road.' This card is about finding your way towards the sun, which is located at the heart of the matter. Beware of all delusions. Surrender to the stream of life energy within and without yourself. ",
        desc_rev:"The naked child mounted on a white horse and displaying a red standard has been mentioned already as the better symbolism connected with this card. It is the destiny of the Supernatural East and the great and holy light which goes before the endless procession of humanity, coming out from the walled garden of the sensitive life and passing on the journey home. The card signifies, therefore, the transit from the manifest light of this world, represented by the glorious sun of earth, to the light of the world to come, which goes before aspiration and is typified by the heart of a child.\nBut the last allusion is again the key to a different form or aspect of the symbolism. The sun is that of consciousness in the spirit - the direct as the antithesis of the reflected light. The characteristic type of humanity has become a little child therein--a child in the sense of simplicity and innocence in the sense of wisdom. In that simplicity, he bears the seal of Nature and of Art; in that innocence, he signifies the restored world. When the self-knowing spirit has dawned in the consciousness above the natural mind, that mind in its renewal leads forth the animal nature in a state of perfect conformity."
    },
    {
        id: 21,
        img: "/images/major/Judgement.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"Judgment",
        value:"20",
        value_int:20,
        meaning_up:"REFLECTION | RECKONING | INNER VOICE",
        meaning_rev:"Weakness, pusillanimity, simplicity; also deliberation, decision, sentence.",
        desc_up:"Powerful forces are being set in motion; latent energies are being awakened. Processes of change and transformation are immanent. This card challenges you to take a closer look at and come to terms with those extreme aspects of your life. Desires and fears, as well as the habit of putting the blame on yourself and others, will have to be dealt with over and again, until the mistakes of your past have been put to rights and your future path freed from old obstacles. Only then will rebirth be more than a mere repetition of the old. Each and every morning we are faced with the task of becoming wide awake and gathering all of our energy, so that we can really bury all that is dead and gone and prepare ourselves for the birth of what is yet to come. If we can accept every single day as a gift, we will gain in confidence and be able to welcome life's challenges. Desires and fears will always exist, but we can learn to deal with them appropriately. We will become receptive to the colorful spectacle that is life, which is inviting our participation. Let go of what has been. Say your good-byes and make your peace with the past. Learn to forgive without forgetting the lessons learned. Everything is important. You have made your choices in the past and now you are free to choose anew and to decide which road you want to take.",
        desc_rev:"I have said that this symbol is essentially invariable in all Tarot sets, or at least the variations do not alter its character. The great angel is here encompassed by clouds, but he blows his bannered trumpet, and the cross as usual is displayed on the banner. The dead are rising from their tombs--a woman on the right, a man on the left hand, and between them their child, whose back is turned. But in this card there are more than three who are restored, and it has been thought worth while to make this variation as illustrating the insufficiency of current explanations. It should be noted that all the figures are as one in the wonder, adoration and ecstacy expressed by their attitudes. It is the card which registers the accomplishment of the great work of transformation in answer to the summons of the Supernal--which summons is heard and answered from within.\nHerein is the intimation of a significance which cannot well be carried further in the present place. What is that within us which does sound a trumpet and all that is lower in our nature rises in response--almost in a moment, almost in the twinkling of an eye? Let the card continue to depict, for those who can see no further, the Last judgment and the resurrection in the natural body; but let those who have inward eyes look and discover therewith. They will understand that it has been called truly in the past a card of eternal life, and for this reason it may be compared with that which passes under the name of Temperance."
    },
    {
        id: 22,
        img: "/images/major/TheWorld.PNG",
        img_reversed: "",
        suit: "major",
        suit_thumbnail: "/images/thumbnails/MajorThumbnail.png",
        arcana_type:"Major",
        name:"The World",
        value:"21",
        value_int:21,
        meaning_up:"FULFILLMENT | HARMONY | COMPLETION",
        meaning_rev:"Inertia, fixity, stagnation, permanence.",
        desc_up:"Absolute unity, perfection, accomplishment that draws from inner and outer sources. This card signals the harmony of the inner and outer worlds, and reaching a level of enlightenment. An era of one's life is complete, and there is joy and celebration that is coming to welcome it. On every level of our development as humans, we are called upon to deal with our heritage. Although we never cease to discover dangerous traits in ourselves and others, we also constantly discover new, hitherto unknown areas of growth. Our individual existence is bound to the existence of all others. We have inherited the earth from our parents and merely borrowed it from our children. We should not jeopardize this inheritance. It is your task and your strength to step forward and show yourself. The way you live in this world determines what the world is in a reciprocal relationship. Use your time on earth wisely and enjoy your stay here.",
        desc_rev:"As this final message of the Major Trumps is unchanged--and indeed unchangeable--in respect of its design, it has been partly described already regarding its deeper sense. It represents also the perfection and end of the Cosmos, the secret which is within it, the rapture of the universe when it understands itself in God. It is further the state of the soul in the consciousness of Divine Vision, reflected from the self-knowing spirit. But these meanings are without prejudice to that which I have said concerning it on the material side.\nIt has more than one message on the macrocosmic side and is, for example, the state of the restored world when the law of manifestation shall have been carried to the highest degree of natural perfection. But it is perhaps more especially a story of the past, referring to that day when all was declared to be good, when the morning stars sang together and all the Sons of God shouted for joy. One of the worst explanations concerning it is that the figure symbolizes the Magus when he has reached the highest degree of initiation; another account says that it represents the absolute, which is ridiculous. The figure has been said to stand for Truth, which is, however, more properly allocated to the seventeenth card. Lastly, it has been called the Crown of the Magi."
    },
    {
        id: 23,
        img: "/images/minor/wands/Wands11Page.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Page of Wands",
        value:"page",
        value_int:11,
        meaning_up:"EXPLORATION | EXCITEMENT | FREEDOM",
        meaning_rev:"Anecdotes, announcements, evil news. Also indecision and the instability which accompanies it.",
        desc_up:"In a scene similar to the former, a young man stands in the act of proclamation. He is unknown but faithful, and his tidings are strange.",
        desc_rev:"In a scene similar to the former, a young man stands in the act of proclamation. He is unknown but faithful, and his tidings are strange."
    },
    {
        id: 24,
        img: "/images/minor/wands/Wands12Knight.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Knight of Wands",
        value:"knight",
        value_int:12,
        meaning_up:"ACTION | ADVENTURE | FEARLESSNESS",
        meaning_rev:"Rupture, division, interruption, discord.",
        desc_up:"He is shewn as if upon a journey, armed with a short wand, and although mailed is not on a warlike errand. He is passing mounds or pyramids. The motion of the horse is a key to the character of its rider, and suggests the precipitate mood, or things connected therewith.",
        desc_rev:"He is shewn as if upon a journey, armed with a short wand, and although mailed is not on a warlike errand. He is passing mounds or pyramids. The motion of the horse is a key to the character of its rider, and suggests the precipitate mood, or things connected therewith."
    },
    {
        id: 25,
        img: "/images/minor/wands/Wands13Queen.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Queen of Wands",
        value:"queen",
        value_int:13,
        meaning_up:"COURAGE | DETERMINATION | JOY",
        meaning_rev:"Good, economical, obliging, serviceable. Signifies also--but in certain positions and in the neighbourhood of other cards tending in such directions--opposition, jealousy, even deceit and infidelity.",
        desc_up:"The Wands throughout this suit are always in leaf, as it is a suit of life and animation. Emotionally and otherwise, the Queen's personality corresponds to that of the King, but is more magnetic.",
        desc_rev:"The Wands throughout this suit are always in leaf, as it is a suit of life and animation. Emotionally and otherwise, the Queen's personality corresponds to that of the King, but is more magnetic."
    },
    {
        id: 26,
        img: "/images/minor/wands/Wands14King.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"King of Wands",
        value:"king",
        value_int:14,
        meaning_up:"BIG PICTURE | LEADER | OVERCOMING CHALLENGES",
        meaning_rev:"Good, but severe; austere, yet tolerant.",
        desc_up:"The physical and emotional nature to which this card is attributed is dark, ardent, lithe, animated, impassioned, noble. The King uplifts a flowering wand, and wears, like his three correspondences in the remaining suits, what is called a cap of maintenance beneath his crown. He connects with the symbol of the lion, which is emblazoned on the back of his throne.",
        desc_rev:"The physical and emotional nature to which this card is attributed is dark, ardent, lithe, animated, impassioned, noble. The King uplifts a flowering wand, and wears, like his three correspondences in the remaining suits, what is called a cap of maintenance beneath his crown. He connects with the symbol of the lion, which is emblazoned on the back of his throne."
    },
    {
        id: 27,
        img: "/images/minor/wands/Wands1Ace.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Ace of Wands",
        value:"ace",
        value_int:1,
        meaning_up:"CREATION | WILLPOWER | INSPIRATION | DESIRE",
        meaning_rev:"Fall, decadence, ruin, perdition, to perish also a certain clouded joy.",
        desc_up:"A hand issuing from a cloud grasps a stout wand or club.",
        desc_rev:"A hand issuing from a cloud grasps a stout wand or club."
    },
    {
        id: 28,
        img: "/images/minor/wands/Wands2.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Two of Wands",
        value:"two",
        value_int:2,
        meaning_up:"PLANNING | REFRAINING FROM ACTION | DISCOVERY",
        meaning_rev:"Surprise, wonder, enchantment, emotion, trouble, fear.",
        desc_up:"A tall man looks from a battlemented roof over sea and shore; he holds a globe in his right hand, while a staff in his left rests on the battlement; another is fixed in a ring. The Rose and Cross and Lily should be noticed on the left side.",
        desc_rev:"A tall man looks from a battlemented roof over sea and shore; he holds a globe in his right hand, while a staff in his left rests on the battlement; another is fixed in a ring. The Rose and Cross and Lily should be noticed on the left side."
    },
    {
        id: 29,
        img: "/images/minor/wands/Wands3.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Three of Wands",
        value:"three",
        value_int:3,
        meaning_up:"LOOKING AHEAD | EXPANSION | RAPID GROWTH",
        meaning_rev:"The end of troubles, suspension or cessation of adversity, toil and disappointment.",
        desc_up:"A calm, stately personage, with his back turned, looking from a cliff's edge at ships passing over the sea. Three staves are planted in the ground, and he leans slightly on one of them.",
        desc_rev:"A calm, stately personage, with his back turned, looking from a cliff's edge at ships passing over the sea. Three staves are planted in the ground, and he leans slightly on one of them."
    },
    {
        id: 30,
        img: "/images/minor/wands/Wands4.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Four of Wands",
        value:"four",
        value_int:4,
        meaning_up:"COMMUNITY | HOME | CELEBRATION",
        meaning_rev:"The meaning remains unaltered; it is prosperity, increase, felicity, beauty, embellishment.",
        desc_up:"From the four great staves planted in the foreground there is a great garland suspended; two female figures uplift nosegays; at their side is a bridge over a moat, leading to an old manorial house.",
        desc_rev:"From the four great staves planted in the foreground there is a great garland suspended; two female figures uplift nosegays; at their side is a bridge over a moat, leading to an old manorial house."
    },
    {
        id: 31,
        img: "/images/minor/wands/Wands5.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Five of Wands",
        value:"five",
        value_int:5,
        meaning_up:"COMPETITION | CONFLICT | RIVALRY",
        meaning_rev:"Litigation, disputes, trickery, contradiction.",
        desc_up:"A posse of youths, who are brandishing staves, as if in sport or strife.",
        desc_rev:"A posse of youths, who are brandishing staves, as if in sport or strife."
    },
    {
        id: 32,
        img: "/images/minor/wands/Wands6.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Six of Wands",
        value:"six",
        value_int:6,
        meaning_up:"VICTORY | SUCCESS | PUBLIC REWARD",
        meaning_rev:"Apprehension, fear, as of a victorious enemy at the gate; treachery, disloyalty, as of gates being opened to the enemy; also indefinite delay.",
        desc_up:"A laurelled horseman bears one staff adorned with a laurel crown; footmen with staves are at his side.",
        desc_rev:"A laurelled horseman bears one staff adorned with a laurel crown; footmen with staves are at his side."
    },
    {
        id: 33,
        img: "/images/minor/wands/Wands7.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Seven of Wands",
        value:"seven",
        value_int:7,
        meaning_up:"PERSEVERANCE | DEFENSIVE | MAINTAINING CONTROL",
        meaning_rev:"Perplexity, embarrassments, anxiety. It is also a caution against indecision.",
        desc_up:"A young man on a craggy eminence brandishing a staff; six other staves are raised towards him from below.",
        desc_rev:"A young man on a craggy eminence brandishing a staff; six other staves are raised towards him from below."
    },
    {
        id: 34,
        img: "/images/minor/wands/Wands8.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Eight of Wands",
        value:"eight",
        value_int:8,
        meaning_up:"RAPID ACTION | MOVEMENT | QUICK DECISIONS",
        meaning_rev:"Arrows of jealousy, internal dispute, stingings of conscience, quarrels; and domestic disputes for persons who are married.",
        desc_up:"The card represents motion through the immovable-a flight of wands through an open country; but they draw to the term of their course. That which they signify is at hand; it may be even on the threshold.",
        desc_rev:"The card represents motion through the immovable-a flight of wands through an open country; but they draw to the term of their course. That which they signify is at hand; it may be even on the threshold."
    },
    {
        id: 35,
        img: "/images/minor/wands/Wands9.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Nine of Wands",
        value:"nine",
        value_int:9,
        meaning_up:"RESILIENCE | PUSHING FORWARD | LAST STRETCH",
        meaning_rev:"Obstacles, adversity, calamity.",
        desc_up:"The figure leans upon his staff and has an expectant look, as if awaiting an enemy. Behind are eight other staves--erect, in orderly disposition, like a palisade.",
        desc_rev:"The figure leans upon his staff and has an expectant look, as if awaiting an enemy. Behind are eight other staves--erect, in orderly disposition, like a palisade."
    },
    {
        id: 36,
        img: "/images/minor/wands/Wands10.PNG",
        img_reversed: "",
        suit: "wands",
        suit_thumbnail: "/images/thumbnails/WandsThumbnail.png",
        arcana_type:"Minor",
        name:"Ten of Wands",
        value:"ten",
        value_int:10,
        meaning_up:"ACCOMPLISHMENT | RESPONSIBILITY | BURDEN",
        meaning_rev:"Contrarieties, difficulties, intrigues, and their analogies.",
        desc_up:"A man oppressed by the weight of the ten staves which he is carrying.",
        desc_rev:"A man oppressed by the weight of the ten staves which he is carrying."
    },
    {
        id: 37,
        img: "/images/minor/cups/Cups11Page.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Page of Cups",
        value:"page",
        value_int:11,
        meaning_up:"DELIGHTFUL SURPRISE | INNER CHILD | INTUITION",
        meaning_rev:"Taste, inclination, attachment, seduction, deception, artifice.",
        desc_up:"A fair, pleasing, somewhat effeminate page, of studious and intent aspect, contemplates a fish rising from a cup to look at him. It is the pictures of the mind taking form.",
        desc_rev:"A fair, pleasing, somewhat effeminate page, of studious and intent aspect, contemplates a fish rising from a cup to look at him. It is the pictures of the mind taking form."
    },
    {
        id: 38,
        img: "/images/minor/cups/Cups12Knight.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Knight of Cups",
        value:"knight",
        value_int:12,
        meaning_up:"MESSENGER | ROMANCE | ADVENTURE",
        meaning_rev:"Trickery, artifice, subtlety, swindling, duplicity, fraud.",
        desc_up:"Graceful, but not warlike; riding quietly, wearing a winged helmet, referring to those higher graces of the imagination which sometimes characterize this card. He too is a dreamer, but the images of the side of sense haunt him in his vision.",
        desc_rev:"Graceful, but not warlike; riding quietly, wearing a winged helmet, referring to those higher graces of the imagination which sometimes characterize this card. He too is a dreamer, but the images of the side of sense haunt him in his vision."
    },
    {
        id: 39,
        img: "/images/minor/cups/Cups13Queen.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Queen of Cups",
        value:"queen",
        value_int:13,
        meaning_up:"COMPASSION | CALM | COMFORT",
        meaning_rev:"The accounts vary; good woman; otherwise, distinguished woman but one not to be trusted; perverse woman; vice, dishonour, depravity.",
        desc_up:"Beautiful, fair, dreamy--as one who sees visions in a cup. This is, however, only one of her aspects; she sees, but she also acts, and her activity feeds her dream.",
        desc_rev:"Beautiful, fair, dreamy--as one who sees visions in a cup. This is, however, only one of her aspects; she sees, but she also acts, and her activity feeds her dream."
    },
    {
        id: 40,
        img: "/images/minor/cups/Cups14King.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"King of Cups",
        value:"king",
        value_int:14,
        meaning_up:"COMPASSION | CONTROL | BALANCE",
        meaning_rev:"Dishonest, double-dealing man; roguery, exaction, injustice, vice, scandal, pillage, considerable loss.",
        desc_up:"He holds a short sceptre in his left hand and a great cup in his right; his throne is set upon the sea; on one side a ship is riding and on the other a dolphin is leaping. The implicit is that the Sign of the Cup naturally refers to water, which appears in all the court cards.",
        desc_rev:"He holds a short sceptre in his left hand and a great cup in his right; his throne is set upon the sea; on one side a ship is riding and on the other a dolphin is leaping. The implicit is that the Sign of the Cup naturally refers to water, which appears in all the court cards."
    },
    {
        id: 41,
        img: "/images/minor/cups/Cups1Ace.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Ace of Cups",
        value:"ace",
        value_int:1,
        meaning_up:"NEW LOVE | OVERFLOWING FEELINGS | CREATIVITY",
        meaning_rev:"House of the false heart, mutation, instability, revolution.",
        desc_up:"The waters are beneath, and thereon are water-lilies; the hand issues from the cloud, holding in its palm the cup, from which four streams are pouring; a dove, bearing in its bill a cross-marked Host, descends to place the Wafer in the Cup; the dew of water is falling on all sides. It is an intimation of that which may lie behind the Lesser Arcana.",
        desc_rev:"The waters are beneath, and thereon are water-lilies; the hand issues from the cloud, holding in its palm the cup, from which four streams are pouring; a dove, bearing in its bill a cross-marked Host, descends to place the Wafer in the Cup; the dew of water is falling on all sides. It is an intimation of that which may lie behind the Lesser Arcana."
    },
    {
        id: 42,
        img: "/images/minor/cups/Cups2.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Two of Cups",
        value:"two",
        value_int:2,
        meaning_up:"UNITY | PARTNERSHIP | TWO BECOME ONE",
        meaning_rev:"Dispassion, apathy.",
        desc_up:"A youth and maiden are pledging one another, and above their cups rises the Caduceus of Hermes, between the great wings of which there appears a lion's head. It is a variant of a sign which is found in a few old examples of this card. Some curious emblematical meanings are attached to it, but they do not concern us in this place.",
        desc_rev:"A youth and maiden are pledging one another, and above their cups rises the Caduceus of Hermes, between the great wings of which there appears a lion's head. It is a variant of a sign which is found in a few old examples of this card. Some curious emblematical meanings are attached to it, but they do not concern us in this place."
    },
    {
        id: 43,
        img: "/images/minor/cups/Cups3.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Three of Cups",
        value:"three",
        value_int:3,
        meaning_up:"FRIENDSHIP | COMMUNITY | HAPPINESS",
        meaning_rev:"Expedition, dispatch, achievement, end. It signifies also the side of excess in physical enjoyment, and the pleasures of the senses.",
        desc_up:"Maidens in a garden-ground with cups uplifted, as if pledging one another.",
        desc_rev:"Maidens in a garden-ground with cups uplifted, as if pledging one another."
    },
    {
        id: 44,
        img: "/images/minor/cups/Cups4.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Four of Cups",
        value:"four",
        value_int:4,
        meaning_up:"APATHY | CONTEMPLATION | DISCONNECTEDNESS",
        meaning_rev:"Novelty, presage, new instruction, new relations.",
        desc_up:"A young man is seated under a tree and contemplates three cups set on the grass before him; an arm issuing from a cloud offers him another cup. His expression notwithstanding is one of discontent with his environment.",
        desc_rev:"A young man is seated under a tree and contemplates three cups set on the grass before him; an arm issuing from a cloud offers him another cup. His expression notwithstanding is one of discontent with his environment."
    },
    {
        id: 45,
        img: "/images/minor/cups/Cups5.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Five of Cups",
        value:"five",
        value_int:5,
        meaning_up:"LOSS | GRIEF | DISAPPOINTMENT",
        meaning_rev:"News, alliances, affinity, consanguinity, ancestry, return, false projects.",
        desc_up:"A dark, cloaked figure, looking sideways at three prone cups two others stand upright behind him; a bridge is in the background, leading to a small keep or holding. Divanatory Meanings: It is a card of loss, but something remains over; three have been taken, but two are left; it is a card of inheritance, patrimony, transmission, but not corresponding to expectations; with some interpreters it is a card of marriage, but not without bitterness or frustration. Reversed: News, alliances, affinity, consanguinity, ancestry, return, false projects.",
        desc_rev:"A dark, cloaked figure, looking sideways at three prone cups two others stand upright behind him; a bridge is in the background, leading to a small keep or holding. Divanatory Meanings: It is a card of loss, but something remains over; three have been taken, but two are left; it is a card of inheritance, patrimony, transmission, but not corresponding to expectations; with some interpreters it is a card of marriage, but not without bitterness or frustration. Reversed: News, alliances, affinity, consanguinity, ancestry, return, false projects"
    },
    {
        id: 46,
        img: "/images/minor/cups/Cups6.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Six of Cups",
        value:"six",
        value_int:6,
        meaning_up:"NOSTALGIA | HAPPY MEMORIES | REUNION",
        meaning_rev:"The future, renewal, that which will come to pass presently.",
        desc_up:"Children in an old garden, their cups filled with flowers.",
        desc_rev:"Children in an old garden, their cups filled with flowers."
    },
    {
        id: 47,
        img: "/images/minor/cups/Cups7.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Seven of Cups",
        value:"seven",
        value_int:7,
        meaning_up:"CHOICES | FANTASY | ILLUSION",
        meaning_rev:"Desire, will, determination, project",
        desc_up:"Strange chalices of vision, but the images are more especially those of the fantastic spirit.",
        desc_rev:"Strange chalices of vision, but the images are more especially those of the fantastic spirit."
    },
    {
        id: 48,
        img: "/images/minor/cups/Cups8.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Eight of Cups",
        value:"eight",
        value_int:8,
        meaning_up:"WALKING AWAY | DISILLUSIONMENT | LEAVING BEHIND",
        meaning_rev:"Great joy, happiness, feasting.",
        desc_up:"A man of dejected aspect is deserting the cups of his felicity, enterprise, undertaking or previous concern.",
        desc_rev:"A man of dejected aspect is deserting the cups of his felicity, enterprise, undertaking or previous concern."
    },
    {
        id: 49,
        img: "/images/minor/cups/Cups9.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Nine of Cups",
        value:"nine",
        value_int:9,
        meaning_up:"COMFORT | EMOTIONAL STABILITY | LUXURY",
        meaning_rev:"Truth, loyalty, liberty; but the readings vary and include mistakes, imperfections, etc.",
        desc_up:"A goodly personage has feasted to his heart's content, and abundant refreshment of wine is on the arched counter behind him, seeming to indicate that the future is also assured. The picture offers the material side only, but there are other aspects.",
        desc_rev:"A goodly personage has feasted to his heart's content, and abundant refreshment of wine is on the arched counter behind him, seeming to indicate that the future is also assured. The picture offers the material side only, but there are other aspects."
    },
    {
        id: 50,
        img: "/images/minor/cups/Cups10.PNG",
        img_reversed: "",
        suit: "cups",
        suit_thumbnail: "/images/thumbnails/CupsThumbnail.png",
        arcana_type:"Minor",
        name:"Ten of Cups",
        value:"ten",
        value_int:10,
        meaning_up:"HAPPINESS | FULFILLMENT | CELEBRATION",
        meaning_rev:"Repose of the false heart, indignation, violence.",
        desc_up:"Appearance of Cups in a rainbow; it is contemplated in wonder and ecstacy by a man and woman below, evidently husband and wife. His right arm is about her; his left is raised upward; she raises her right arm. The two children dancing near them have not observed the prodigy but are happy after their own manner. There is a home-scene beyond.",
        desc_rev:"Appearance of Cups in a rainbow; it is contemplated in wonder and ecstacy by a man and woman below, evidently husband and wife. His right arm is about her; his left is raised upward; she raises her right arm. The two children dancing near them have not observed the prodigy but are happy after their own manner. There is a home-scene beyond."
    },
    {
        id: 51,
        img: "/images/minor/pentacles/Pentacles11Page.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Page of Pentacles",
        value:"page",
        value_int:11,
        meaning_up:"DREAMS | DESIRE | NEW OPPORTUNITY | ENTREPRENEURSHIP",
        meaning_rev:"Prodigality, dissipation, liberality, luxury; unfavourable news.",
        desc_up:"A youthful figure, looking intently at the pentacle which hovers over his raised hands. He moves slowly, insensible of that which is about him.",
        desc_rev:"A youthful figure, looking intently at the pentacle which hovers over his raised hands. He moves slowly, insensible of that which is about him."
    },
    {
        id: 52,
        img: "/images/minor/pentacles/Pentacles12Knight.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Knight of Pentacles",
        value:"knight",
        value_int:12,
        meaning_up:"EFFICIENCY | HARD WORK | ROUTINE",
        meaning_rev:"inertia, idleness, repose of that kind, stagnation; also placidity, discouragement, carelessness.",
        desc_up:"He rides a slow, enduring, heavy horse, to which his own aspect corresponds. He exhibits his symbol, but does not look therein.",
        desc_rev:"He rides a slow, enduring, heavy horse, to which his own aspect corresponds. He exhibits his symbol, but does not look therein."
    },
    {
        id: 53,
        img: "/images/minor/pentacles/Pentacles13Queen.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Queen of Pentacles",
        value:"queen",
        value_int:13,
        meaning_up:"PRACTICALITY | CREATURE COMFORTS | FINANCIAL SECURITY",
        meaning_rev:"Evil, suspicion, suspense, fear, mistrust.",
        desc_up:"The face suggests that of a dark woman, whose qualities might be summed up in the idea of greatness of soul; she has also the serious cast of intelligence; she contemplates her symbol and may see worlds therein.",
        desc_rev:"The face suggests that of a dark woman, whose qualities might be summed up in the idea of greatness of soul; she has also the serious cast of intelligence; she contemplates her symbol and may see worlds therein."
    },
    {
        id: 54,
        img: "/images/minor/pentacles/Pentacles14King.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"King of Pentacles",
        value:"king",
        value_int:14,
        meaning_up:"ABUNDANCE | POWER | SECURITY",
        meaning_rev:"Vice, weakness, ugliness, perversity, corruption, peril.",
        desc_up:"The figure calls for no special description the face is rather dark, suggesting also courage, but somewhat lethargic in tendency. The bull's head should be noted as a recurrent symbol on the throne. The sign of this suit is represented throughout as engraved or blazoned with the pentagram, typifying the correspondence of the four elements in human nature and that by which they may be governed. In many old Tarot packs this suit stood for current coin, money, deniers. I have not invented the substitution of pentacles and I have no special cause to sustain in respect of the alternative. But the consensus of divinatory meanings is on the side of some change, because the cards do not happen to deal especially with questions of money.",
        desc_rev:"The figure calls for no special description the face is rather dark, suggesting also courage, but somewhat lethargic in tendency. The bull's head should be noted as a recurrent symbol on the throne. The sign of this suit is represented throughout as engraved or blazoned with the pentagram, typifying the correspondence of the four elements in human nature and that by which they may be governed. In many old Tarot packs this suit stood for current coin, money, deniers. I have not invented the substitution of pentacles and I have no special cause to sustain in respect of the alternative. But the consensus of divinatory meanings is on the side of some change, because the cards do not happen to deal especially with questions of money."
    },
    {
        id: 55,
        img: "/images/minor/pentacles/Pentacles1Ace.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Ace of Pentacles",
        value:"ace",
        value_int:1,
        meaning_up:"OPPORTUNITY | PROSPERITY | NEW VENTURE",
        meaning_rev:"The evil side of wealth, bad intelligence; also great riches. In any case it shews prosperity, comfortable material conditions, but whether these are of advantage to the possessor will depend on whether the card is reversed or not.",
        desc_up:"A hand--issuing, as usual, from a cloud--holds up a pentacle.",
        desc_rev:"A hand--issuing, as usual, from a cloud--holds up a pentacle."
    },
    {
        id: 56,
        img: "/images/minor/pentacles/Pentacles2.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Two of Pentacles",
        value:"two",
        value_int:2,
        meaning_up:"BALANCE | PRIORITIES | ADAPTING TO CHANGE",
        meaning_rev:"Enforced gaiety, simulated enjoyment, literal sense, handwriting, composition, letters of exchange.",
        desc_up:"A young man, in the act of dancing, has a pentacle in either hand, and they are joined by that endless cord which is like the number 8 reversed.",
        desc_rev:"A young man, in the act of dancing, has a pentacle in either hand, and they are joined by that endless cord which is like the number 8 reversed."
    },
    {
        id: 57,
        img: "/images/minor/pentacles/Pentacles3.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Three of Pentacles",
        value:"three",
        value_int:3,
        meaning_up:"TEAMWORK | COLLABORATION | BUILDING",
        meaning_rev:"Mediocrity, in work and otherwise, puerility, pettiness, weakness.",
        desc_up:"A sculptor at his work in a monastery. Compare the design which illustrates the Eight of Pentacles. The apprentice or amateur therein has received his reward and is now at work in earnest.",
        desc_rev:"A sculptor at his work in a monastery. Compare the design which illustrates the Eight of Pentacles. The apprentice or amateur therein has received his reward and is now at work in earnest."
    },
    {
        id: 58,
        img: "/images/minor/pentacles/Pentacles4.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Four of Pentacles",
        value:"four",
        value_int:4,
        meaning_up:"CONSERVATION | SECURITY | FRUGALITY",
        meaning_rev:"Suspense, delay, opposition.",
        desc_up:"A crowned figure, having a pentacle over his crown, clasps another with hands and arms; two pentacles are under his feet. He holds to that which he has.",
        desc_rev:"A crowned figure, having a pentacle over his crown, clasps another with hands and arms; two pentacles are under his feet. He holds to that which he has."
    },
    {
        id: 59,
        img: "/images/minor/pentacles/Pentacles5.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Five of Pentacles",
        value:"five",
        value_int:5,
        meaning_up:"NEED | POVERTY | INSECURITY",
        meaning_rev:"Disorder, chaos, ruin, discord, profligacy.",
        desc_up:"Two mendicants in a snow-storm pass a lighted casement.",
        desc_rev:"Two mendicants in a snow-storm pass a lighted casement."
    },
    {
        id: 60,
        img: "/images/minor/pentacles/Pentacles6.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Six of Pentacles",
        value:"six",
        value_int:6,
        meaning_up:"CHARITY | GENEROSITY | SHARING",
        meaning_rev:"Desire, cupidity, envy, jealousy, illusion.",
        desc_up:"A person in the guise of a merchant weighs money in a pair of scales and distributes it to the needy and distressed. It is a testimony to his own success in life, as well as to his goodness of heart.",
        desc_rev:"A person in the guise of a merchant weighs money in a pair of scales and distributes it to the needy and distressed. It is a testimony to his own success in life, as well as to his goodness of heart."
    },
    {
        id: 61,
        img: "/images/minor/pentacles/Pentacles7.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Seven of Pentacles",
        value:"seven",
        value_int:7,
        meaning_up:"HARD WORK | PERSEVERENCE | DILIGENCE",
        meaning_rev:"Cause for anxiety regarding money which it may be proposed to lend.",
        desc_up:"A young man, leaning on his staff, looks intently at seven pentacles attached to a clump of greenery on his right; one would say that these were his treasures and that his heart was there.",
        desc_rev:"A young man, leaning on his staff, looks intently at seven pentacles attached to a clump of greenery on his right; one would say that these were his treasures and that his heart was there."
    },
    {
        id: 62,
        img: "/images/minor/pentacles/Pentacles8.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Eight of Pentacles",
        value:"eight",
        value_int:8,
        meaning_up:"EDUCATION | APPRENTICESHIP | ACHIEVEMENT",
        meaning_rev:"Voided ambition, vanity, cupidity, exaction, usury. It may also signify the possession of skill, in the sense of the ingenious mind turned to cunning and intrigue.",
        desc_up:"An artist in stone at his work, which he exhibits in the form of trophies.",
        desc_rev:"An artist in stone at his work, which he exhibits in the form of trophies."
    },
    {
        id: 63,
        img: "/images/minor/pentacles/Pentacles9.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Nine of Pentacles",
        value:"nine",
        value_int:9,
        meaning_up:"FRUITS OF LABOR | INDEPENDENCE | REWARDS",
        meaning_rev:"Roguery, deception, voided project, bad faith.",
        desc_up:"A woman, with a bird upon her wrist, stands amidst a great abundance of grapevines in the garden of a manorial house. It is a wide domain, suggesting plenty in all things. Possibly it is her own possession and testifies to material well-being.",
        desc_rev:"A woman, with a bird upon her wrist, stands amidst a great abundance of grapevines in the garden of a manorial house. It is a wide domain, suggesting plenty in all things. Possibly it is her own possession and testifies to material well-being."
    },
    {
        id: 64,
        img: "/images/minor/pentacles/Pentacles10.PNG",
        img_reversed: "",
        suit: "pentacles",
        suit_thumbnail: "/images/thumbnails/PentaclesThumbnail.png",
        arcana_type:"Minor",
        name:"Ten of Pentacles",
        value:"ten",
        value_int:10,
        meaning_up:"LEGACY | INHERITANCE | CULMINATION",
        meaning_rev:"Chance, fatality, loss, robbery, games of hazard; sometimes gift, dowry, pension.",
        desc_up:"A man and woman beneath an archway which gives entrance to a house and domain. They are accompanied by a child, who looks curiously at two dogs accosting an ancient personage seated in the foreground. The child's hand is on one of them.",
        desc_rev:"A man and woman beneath an archway which gives entrance to a house and domain. They are accompanied by a child, who looks curiously at two dogs accosting an ancient personage seated in the foreground. The child's hand is on one of them."
    },
    {
        id: 65,
        img: "/images/minor/swords/Swords11Page.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Page of Swords",
        value:"page",
        value_int:11,
        meaning_up:"CURIOSITY | RESTLESSNESS | MENTAL ENERGY",
        meaning_rev:"More evil side of these qualities; what is unforeseen, unprepared state; sickness is also intimated.",
        desc_up:"A lithe, active figure holds a sword upright in both hands, while in the act of swift walking. He is passing over rugged land, and about his way the clouds are collocated wildly. He is alert and lithe, looking this way and that, as if an expected enemy might appear at any moment.",
        desc_rev:"A lithe, active figure holds a sword upright in both hands, while in the act of swift walking. He is passing over rugged land, and about his way the clouds are collocated wildly. He is alert and lithe, looking this way and that, as if an expected enemy might appear at any moment."
    },
    {
        id: 66,
        img: "/images/minor/swords/Swords12Knight.PNG",
        img_reversed: "",
        suit: "swprds",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Knight of Swords",
        value:"knight",
        value_int:12,
        meaning_up:"ACTION | SPEED | AMBITION",
        meaning_rev:"Imprudence, incapacity, extravagance.",
        desc_up:"He is riding in full course, as if scattering his enemies. In the design he is really a prototypical hero of romantic chivalry. He might almost be Galahad, whose sword is swift and sure because he is clean of heart.",
        desc_rev:"He is riding in full course, as if scattering his enemies. In the design he is really a prototypical hero of romantic chivalry. He might almost be Galahad, whose sword is swift and sure because he is clean of heart."
    },
    {
        id: 67,
        img: "/images/minor/swords/Swords13Queen.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Queen of Swords",
        value:"queen",
        value_int:13,
        meaning_up:"COMPLEXITY | PERCEPTION | CLEAR MINDEDNESS",
        meaning_rev:"Malice, bigotry, artifice, prudery, bale, deceit.",
        desc_up:"Her right hand raises the weapon vertically and the hilt rests on an arm of her royal chair the left hand is extended, the arm raised her countenance is severe but chastened; it suggests familiarity with sorrow. It does not represent mercy, and, her sword notwithstanding, she is scarcely a symbol of power.",
        desc_rev:"Her right hand raises the weapon vertically and the hilt rests on an arm of her royal chair the left hand is extended, the arm raised her countenance is severe but chastened; it suggests familiarity with sorrow. It does not represent mercy, and, her sword notwithstanding, she is scarcely a symbol of power."
    },
    {
        id: 68,
        img: "/images/minor/swords/Swords14King.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"King of Swords",
        value:"king",
        value_int:14,
        meaning_up:"INTELLECTUAL | POWER | TRUTH",
        meaning_rev:"Cruelty, perversity, barbarity, perfidy, evil intention.",
        desc_up:"He sits in judgment, holding the unsheathed sign of his suit. He recalls, of course, the conventional Symbol of justice in the Trumps Major, and he may represent this virtue, but he is rather the power of life and death, in virtue of his office.",
        desc_rev:"He sits in judgment, holding the unsheathed sign of his suit. He recalls, of course, the conventional Symbol of justice in the Trumps Major, and he may represent this virtue, but he is rather the power of life and death, in virtue of his office."
    },
    {
        id: 69,
        img: "/images/minor/swords/Swords1Ace.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Ace of Swords",
        value:"ace",
        value_int:1,
        meaning_up:"VICTORY | RAW STRENGTH | SHARP MIND",
        meaning_rev:"The same, but the results are disastrous; another account says--conception, childbirth, augmentation, multiplicity.",
        desc_up:"A hand issues from a cloud, grasping as word, the point of which is encircled by a crown.",
        desc_rev:"A hand issues from a cloud, grasping as word, the point of which is encircled by a crown."
    },
    {
        id: 70,
        img: "/images/minor/swords/Swords2.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Two of Swords",
        value:"two",
        value_int:2,
        meaning_up:"DIFFICULT CHOICES | INDECISION | STALEMATE",
        meaning_rev:"Imposture, falsehood, duplicity, disloyalty.",
        desc_up:"A hoodwinked female figure balances two swords upon her shoulders.",
        desc_rev:"A hoodwinked female figure balances two swords upon her shoulders."
    },
    {
        id: 71,
        img: "/images/minor/swords/Swords3.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Three of Swords",
        value:"three",
        value_int:3,
        meaning_up:"HEARTBREAK | SUFFERING | GRIEF",
        meaning_rev:"Mental alienation, error, loss, distraction, disorder, confusion.",
        desc_up:"Three swords piercing a heart; cloud and rain behind.",
        desc_rev:"Three swords piercing a heart; cloud and rain behind."
    },
    {
        id: 72,
        img: "/images/minor/swords/Swords4.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Four of Swords",
        value:"four",
        value_int:4,
        meaning_up:"REST | RESTORATION | CONTEMPLATION",
        meaning_rev:"Wise administration, circumspection, economy, avarice, precaution, testament.",
        desc_up:"The effigy of a knight in the attitude of prayer, at full length upon his tomb.",
        desc_rev:"The effigy of a knight in the attitude of prayer, at full length upon his tomb."
    },
    {
        id: 73,
        img: "/images/minor/swords/Swords5.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Five of Swords",
        value:"five",
        value_int:5,
        meaning_up:"UNBRIDLED AMBITION | WIN AT ALL COSTS | SNEAKINESS",
        meaning_rev:"The same; burial and obsequies.",
        desc_up:"A disdainful man looks after two retreating and dejected figures. Their swords lie upon the ground. He carries two others on his left shoulder, and a third sword is in his right hand, point to earth. He is the master in possession of the field.",
        desc_rev:"A disdainful man looks after two retreating and dejected figures. Their swords lie upon the ground. He carries two others on his left shoulder, and a third sword is in his right hand, point to earth. He is the master in possession of the field."
    },
    {
        id: 74,
        img: "/images/minor/swords/Swords6.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Six of Swords",
        value:"six",
        value_int:6,
        meaning_up:"TRANSITION | LEAVING BEHIND | MOVING ON",
        meaning_rev:"Declaration, confession, publicity; one account says that it is a proposal of love.",
        desc_up:"A ferryman carrying passengers in his punt to the further shore. The course is smooth, and seeing that the freight is light, it may be noted that the work is not beyond his strength.",
        desc_rev:"A ferryman carrying passengers in his punt to the further shore. The course is smooth, and seeing that the freight is light, it may be noted that the work is not beyond his strength."
    },
    {
        id: 75,
        img: "/images/minor/swords/Swords7.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Seven of Swords",
        value:"seven",
        value_int:7,
        meaning_up:"DECEPTION | TRICKERY | TURNING A BLIND EYE",
        meaning_rev:"Good advice, counsel, instruction, slander, babbling.",
        desc_up:"A man in the act of carrying away five swords rapidly; the two others of the card remain stuck in the ground. A camp is close at hand.",
        desc_rev:"A man in the act of carrying away five swords rapidly; the two others of the card remain stuck in the ground. A camp is close at hand."
    },
    {
        id: 76,
        img: "/images/minor/swords/Swords8.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Eight of Swords",
        value:"eight",
        value_int:8,
        meaning_up:"IMPRISONMENT | POWERLESSNESS | SELF-VICTIMIZATION",
        meaning_rev:"Disquiet, difficulty, opposition, accident, treachery; what is unforeseen; fatality.",
        desc_up:"A woman, bound and hoodwinked, with the swords of the card about her. Yet it is rather a card of temporary durance than of irretrievable bondage.",
        desc_rev:"A woman, bound and hoodwinked, with the swords of the card about her. Yet it is rather a card of temporary durance than of irretrievable bondage."
    },
    {
        id: 77,
        img: "/images/minor/swords/Swords9.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Nine of Swords",
        value:"nine",
        value_int:9,
        meaning_up:"ANXIETY | HOPELESSNESS | NIGHTMARES",
        meaning_rev:"Imprisonment, suspicion, doubt, reasonable fear, shame.",
        desc_up:"One seated on her couch in lamentation, with the swords over her. She is as one who knows no sorrow which is like unto hers. It is a card of utter desolation.",
        desc_rev:"One seated on her couch in lamentation, with the swords over her. She is as one who knows no sorrow which is like unto hers. It is a card of utter desolation."
    },
    {
        id: 78,
        img: "/images/minor/swords/Swords10.PNG",
        img_reversed: "",
        suit: "swords",
        suit_thumbnail: "/images/thumbnails/SwordsThumbnail.png",
        arcana_type:"Minor",
        name:"Ten of Swords",
        value:"ten",
        value_int:10,
        meaning_up:"BETRAYAL | BACKSTABBING | DEFEAT",
        meaning_rev:"Advantage, profit, success, favour, but none of these are permanent; also power and authority.",
        desc_up:"A prostrate figure, pierced by all the swords belonging to the card.",
        desc_rev:"A prostrate figure, pierced by all the swords belonging to the card."
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
    }, 
    {
        read_requester_id: personal1.id,
        read_requester_type: "PersonalProfile",
        reader_id: personal1.id,
        reader_type: "PersonalProfile",
        drawing_type:"Daily Drawing",
        question:"What's the day look like?",
        rating: 8,
        descriptors:"Fine!",
        notes:"I should take stock of my situation"
    },
    {
        read_requester_id: personal1.id,
        read_requester_type: "PersonalProfile",
        reader_id: personal1.id,
        reader_type: "PersonalProfile",
        drawing_type:"Daily Drawing",
        question:"What's the day look like?",
        rating: 4,
        descriptors:"Concerned!",
        notes:"I need to fight my imposter syndrome today"
    },
    {
        read_requester_id: personal1.id,
        read_requester_type: "PersonalProfile",
        reader_id: personal1.id,
        reader_type: "PersonalProfile",
        drawing_type:"Daily Drawing",
        question:"What's the day look like?",
        rating: 7,
        descriptors:"Curious!",
        notes:"I think it's time I cut myself a break and celebrate!"
    },

])

reading1 = Reading.all[0]
reading2 = Reading.all[1]
reading3 = Reading.all[2]
reading4 = Reading.all[3]
reading5 = Reading.all[4]

puts "Seeding Card Drawings..."

CardDrawing.create!(reading_id: reading1.id, card_id: 8)
CardDrawing.create!(reading_id: reading2.id, card_id: 40)
CardDrawing.create!(reading_id: reading3.id, card_id: 73)
CardDrawing.create!(reading_id: reading4.id, card_id: 14)
CardDrawing.create!(reading_id: reading5.id, card_id: 18)

puts "🌱 Done seeding!"