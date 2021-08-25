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
        desc_up:"The Page of Wands in totally immersed in his own concerns. He surrenders to his flame and his passion unconditionally and is always full of enthusiasm. At the same time, this card counsels us to be aware of the limitations of our perceptions, because we are absorbed in our own world. Our zest for action and desire to develop urge us on to reach beyond our own boundaries now. In relation to our motivational forces - wands, fire, energy - the scope of our actual experience is relatively small. This is a danger, but also an opportunity. Beware of naive inactivity as well as effusive zeal. We once entered this life full of the will to survive, to grow, and to express ourselves. We can harness this zeal now to explore the world thoroughly, greeting each success or failure as a new experience. If we welome ordeals of fire and recognize them as a form of inner purification, we will find ourselves enriched by these lessons. Our ability always to go beyond ourselves gives us renewed strength and replenishes our youthful vitability. Learn to understand energies that are larger than you are. Beware of narrow-mindedness. Hold onto that which makes your heart sing and your spirit soar!",
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
        desc_up:"This is the card of your life's mission. When we start out on our journey, we are small, more an outline than a finished picture. Our aim in life and our potential is self-realization and the full development of our personality. Our life's tasks are the greatest and best that we will ever encounter. They require andfocus all our strength; their completion lasts a lifetime. Often on this journey, high ideals and lizard brain instincts have to be overcome. If you possess a lot of fire, you are not only very courageous, but often also extremely tired, retiring, or irritable. Once burned, twice shy. You possess an incredible amount of eneregy. Bring light into the darkness. Help those who are weaker than yourself. Commit yourself to meaningful projects that will benefit many people. Where the darkness is greatest, your light is most needed. It is here that you will discover your life's purpose, a mission so great that it will take a whole lifetime to accomplish. Start your journey now!",
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
        desc_up:"All court cards represent an ideal. They stand for the condient handling of the respective element, in this case, the fire element for the wands suit. If you draw this card, not just the mastery of a single aspect of your will and vigor is being addressed but your confident handling of all forces of fire, your mastery as an energetic being. Play, movement, and hunting instinct are just as important for this queen as living in and with nature. The success of your actions is critically dependent upon recognizing the existence of subliminal and unconscious, mainly vegetative processes. Instinctive drives, energetic action, and will, the forces of growth represented by the wands, are of utmost importance to this end. The Queen of Wands is the mistress of basic instincts and self-preservation. Likewise, a belief in your creative powers enables you to face seemingly insurmountable obstacles and to create new life out of nothing. Rely on your ability to take charge at the right moment and to get things moving. In order to appreciate enemies and obstacles as nothing but challenges and new chances, you might have to modify your way of thinking. Recognize your abilities and decide upon your own goals.",
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
        desc_up:"As an adult, you have to become a child again in order to confidently handle the fire within you - instictive drives, actions, and will. As a suit, wands are a symbol of motivation, growth, and vitality as well as of power and the strength to succeed. Beware nagging doubts, intrigues, and beastliness. You have the capacity to manifest a person of great vision and leadership, possessing all the drive and understanding to create your vision. Lead and inspire others with your unconquerable passion. Recognize your tasks and needs are what they really are: opportunities. Be willing to walk through fire to fulfill your heart's desire - skillfully and without fear.",
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
        desc_up:"Human beings possess basic instincts such as self-preservation and cultural instincts such as love and aggression. Our instincts determine our behavior and actions. We can only succeed in all our endeavors and put out green shoots if we are in constant contact with our inner fire. Yet sometimes, we fail. We have to go through many ordeals of fire, sometimes even burning to cinders like the mythical phoenix, if we want to be born again. The positive result of all such transformational processes is a cleansing and purification of our instincts and behavior. Therefore, wands and the fire element in general are symbols of the human will. If all goes well, we will discover our true will. This card is all about finding our real identity and true home. To be centered within ourselves and at the same time at home in the world often entails two conflicting issues or two ends of a wand that need to be united. This card challenges you to do something active and yet also to have the courage to let something happen. You will learn the answer by doing. Follow your energy and keep moving. Closely observe your fellow human beings and pay attention to relevant forces.",
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
        desc_up:"Two wands or two flames represent primal energies or basic instincts that are hard to handle. This conflict might pertain to short-term interests and intentions, such as having to accomplish two different things at the same time or wanting to do so. More fundamental conflicts may be at stake, such as loving two people at the same time or coordinating family and career. The message of this card is that a solution is always at hand! It is possible to overcome even the greatest of difficulties. Turn emotional conflicts into practical tasks and find the solution that fits the problem. This solution always has to do with an alchemical transformation of the coarse into the subtle. Break up the seemlingly insurmountable problem into smaller portions that are easier to deal with. This approach is much more useful than 'staring the snake in the eye' and much better than false compromises. It is necessary to have a model and a vision of the chosen objective. It may be necessary to go through the fires of hell to achieve these goals. Great tasks lie before you. Do not allow yourself to be pushed into a corner. You will succeed only if your will and your enthusiasm are unbroken. Rely on your own strength. Have confidence in your determination and your self-discipline. Wait until your vision has become clear and your mind is made up. Then do not hesitate any longer. Act with all your might.",
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
        desc_up:"This card represents the conflicting nature of wanderlust, the spirit of adventure, and the yearning for faraway places, each faced with opposing desires: the longing for closeness and the desire for remoteness, for home and abroad, arrival and departure. Balancing this dichotomy requires a lot of practical experience and individual metamorphoses. Personal advances unit instincts and actions patiently and serenely, in such a way that one does not take precedence over the other. Even the greatest of undertakings are based on aspects close to hand, namely in personal relationships. It is contact with others that gives us the energy and the fuel to go forth into the farthest corners of the earth. Acting half-heartedly is a waste of time. If you put all your effort and all your power into something, you will succeed. Become clear what it is that you want to achieve and which personal and emotional needs are related to your most important goals! Deliberabe action is the key to passion as distinguished from mere enthusiasm. Be aware of what you are doing.",
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
        desc_up:"The term 'wonders of creation' pertains to our most intimate, our most difficult, and most beautiful experiences. Birth, marriage, and death always take us to the very limits of our understanding. Through being confronted with these sometimes frightening, sometimes wonderful, but always amazing limits to our comprehension, we develop a hunger for culture, a yearning to experience that which really moves us through play, music, and dance! All truly creative endeavors are born out of testing our limits in some way. Parties and cultural events may either inspire us or divert us to the extent that we almost lose track of ourselves. This card is all about rediscovering what really moves you, deepening your understanding of yourself, as you climb up the ladder of life. Avoid petty solutions and false compromises. Neither forget nor hide your true motives and authentic feelings. They are the true source of your motivation and will guarantee your greatest successes.",
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
        desc_up:"Wands stand for instinctive drives and initiative and represent the fire element. Five wands are the ssence of the fire element: the human will. Our will is made up of our deeds and intentions, our consciously chosen actions, and our unconscious motives. As long as the fire of life burns, your will is constantly being reshaped. Different interests and tendencies are always pulling in different directions. What has first priority? How can several goals be attained at the same time? Do not spread your energies too thin. Center yourself. See your current tasks as tests of your determination, your willpower - and your playfulness. Find out which aspects of your will are in harmony with your desires and so able to get something moving. Find out which acts of will are superfluous, because you are still trying to force something to happen that is actually no longer relevant, or has not yet become so. Create space in your daily routine. This might include taking some time out or establishing your own room. New alternatives are waiting to be explored and tested in your personal relationships and in your career. Go for it!",
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
        desc_up:"We often assume that we have to suppress our weaknesses in order to become proud and strong. This card is here to remind you that in reality, the opposite is true. If you acknowledge strengths as well as weaknesses, you will become much stronger. If you know your strengths and your weaknesses, you will become much more flexible. Thus you enhance your ability to cooperate with your destiny. You need to reconcile yourself with your inner child and with your own animalistic aspects. You must make peace with your own imperfections and say goodbye to many immature habits. It is important to recognize the feminine and the masculine as two aspects of your own personality. Do not be intimidated and don't intimidate others. Stand up for what moves you and go for it wholeheartedly.",
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
        desc_up:"This card often appears to be rather puzzling. It is all about the power of our actions. When arms and wands lie across our life's journey, they indicate that we do not have to accept what is being handed to us. We are being encouraged to march to the sound of our own tune, and shine our own light. Yet we are warned not to put up any unnecessary resistance towrds life; we already possess the tools that enable us to reach for the stars, and are always on an evolutionary journey as a result. We constantly learn to deal with complex tasks and handle our energies. All existing truths can be changed by your actions. But doing so just for the sake of doing and morbid ambition will only harm you. It is of utmost importance to reach a new level and to use your power wisely and in a relaxed manner.",
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
        desc_up:"Wands represent vital energies - drives and aims ensure that the inner fire keeps on burning. Eight wands form a pattern of manifold and diverse energies. This is the card of multifarious energy transfer. Great undertakings require motivation and enthusiasm. The right word at the right time can work miracles and heal wounds. But false ideals can also make the blood boil. They open up old wounds and create new ones by being overly zealous or by exercising blind obedience. This card counsels you to become aware of your own motivating forces and your goals, and to take full responsibility for your own actions. You are challenged to grow in understanding and stature! Make sure that good vibrations exist between you and other people. Learn to understand what moves you and others. Become more sensitive to the needs of all parties involved. Then you will be able to harmonize many different types of energy and accomplish many things without having to resort to manipulation.",
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
        desc_up:"This card is a symbol of searching, of awarenress, and of intuitive perception. Many things are growing and changing. Like a hunter stalking his prey or a scout exploring the way, you need to be intuitively alert and vigilant. If your perception has been heightened, you will be better able to understand the motives and hidden interests behind certain actions. On the one hand, this card shows us the final goal of all our searching. Intuition and awareness are the path as well as the destination, the journey as well as the reqard. Sometimes, we get lost in routine and repetition. We fail to perceive the great mystery that is awaiting us. ",
        desc_rev:"The figure leans upon his staff and has an expectant look, as if awaiting an enemy. Behind are eight other staves--erect, in orderly disposition, like a palisade. On the other hand, this card encourages us to say goodbye to the uncivilized life. Intuition and awareness serve to overcome certain primal fears. Let go of redundant instincts and presumptions. Trust your actual perceptions and learn from all your experiences. You actual situation challenges you to become more vital and to live life to the fullest. Abandon your old fears and fulfill your most important wishes! Activate your senses! Learn to recognize outdated habits and relationships." 
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
        desc_up:"To carry ten wands means to accept all available energies, all instincts, purposes, and motives. To make a bundle of the ten wands means nothing less than to accept life with all its energies and tasks unconditionally and in its totality. This card indicates that you have been working extremely hard in order to turn something into fruition. At the end of that journey however, you find yourself being overburdened and too heavy with the responsibility that you created yourself. Throw off your old burdens and wake up to what is actually going on. Only by giving your undivided attention and affection to someone or something will you be able to completely understand them or it. You have to go forward and commit yourself. This way, you will always be a step ahead.",
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
        desc_up:"The emotional content of the water element - psychic depths - is presented light-heartedly and light-handedly in this card. Our emotions help us to discover something new. This is the card of playfully mastering your emotions and emotional needs. It encourages you to leave the ghosts of the past behind. This card is all about clearly identifying your desires and fears and acting accordingly. If your own emotional state and that of others is not clear, this card counsels you to be cautious. If you are overly careless in dealing with your emotional needs, you might end up even more unhappy and frightened. You might confuse your own inner mechanisms with outer influences or mysterious phantoms. Do not play with your own emotions or those of others. But retain your carefree spirit. Do not be afraid to stand up for your feelings and to be as tough as you deem necessary. You will gain new insights through meditation, incrased sensitivity, and udnerstanding. This will be a constant source of joy for you. You will be able to help others emotionally and spirtually. Cleanse your psyche and evaluate your motions. But do not dwell extensively on past mistakes, weaknesses, and fears. Balance your emotional account. Settle your own debts and ask others to settle their - financially, but more importantly, emotionally and spiritually.",
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
        desc_up:"Great feelings and passions, your dreams and your personal goals are always a matter of faith. Past experiences can neither prove nor disprove future possibilities. But any reasonable and rational belief system will make use of all information gathered - and take into account the feelings of all in a positive as well as a negative sense. Beliefs are like an ever-present cloak that we wrap ourselves up in and take with us wherever we go. Inappropriate beliefs hinder and stultify, making every step hard and sluggish. Appropriate beliefs, in contrast, are supportive, inspirational, and uplifting, helping us overcome any difficulties. The whole spectrum of passion, ranging from courtly love to frenzied infatuation, from loving devotion to woeful obsession, is contained within this card. What personal meaning does this card have for you? Faith can move mountains. Big emotions move us the most and enable us to move the most. We are equipped with heart and mind so that we can experience and live out our deeply felt passions. What are your mental, emotional, and spiritual goals? Avoid naivety as well as superstition. Question and examine. Identify what moves and supports you in the long term. Do your sums and update your bookkeeping. Find a trustworthy conversation partner.",
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
        desc_up:"Many interpretations accept only one aspect of the Queen of Cups and reject the other. Some praise her sensitivity, her emotional and psychic abilities, while others are critical of her reserve, toughness, and introspection. In fact, all these attributes are equally fitting. It is our task to find the common denominator in all these conflicting emotions and eschew one-sided perspectives. Openness and coherence, softness, and hardness, female and male qualities that are the poles that make for an intact inner life. The result will be spiritual automony and personal independence. Take a walk along a river or lake. Meditate near the water. Embellish yourself and your surroundings. Show the beauty and costliness of your feelings. Open up your heart.",
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
        desc_up:"Strong emotions and intense desire are the essential features of the King of Cups. If this king doesn't want to become a prisoner of his own needs and emotions, he will have to learn to successfully deal with the highest emotional heights as well as the pits. Instincts and presentiments, temptations and often confusing needs have to be dealt with firmly. The fulfillment of your dominant desires and the dissolution of basic fears will lead to personal maturity and to the surmounting of all vain longing - leading to a blessed state of perfect contentment. It is through change that we grow and the more we grow, the better we can deal with change. If we are careful not to neglect our true nature in the process, our personal dignity will be augmented. Be true to your desires. If you walk through a dark tunnel, take a light with you. Do not be afraid of confronting taboos and the dark side - but do not become too fascinated by them either! As you learn to deal with your dominant emotions, your true desire will become clear.",
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
        desc_up:"Oceanic feelings enable us to experience connectedness with all. The single cup stands for the individual's inner life, the soul. Here, our place in the community is as important as our distinctiveness as an individual. If we manage to attain harmony of the individuality within the great flow of life, we will experience a very special baptism and drink deep from the fountain of youth. The secret of the Ace of Cups lies in purification of the psyche. If you can learn to delve deep into your feelings - through reconciliation or by letting go - thus ensuring that no bad feelings or compromises dull the clear mirror of your soul, you will stay young, regardless of your age. We are all in need of a place we consider our true home, which we will find wherever we can purify our psyche and recharge our batteries, in short: wherever our soul takes wing. This is not the time for great promises or expectations but for personal integrity. Settle all problems that dull your feelings. Clear your emotions and take your own cup into your own hands.",
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
        desc_up:"The Two of Cups represents the polarities of our emotional life - sympathy and antipathy, affection and repulsion. Each of us has to learn to deal with the 'two souls dwelling in our breast.' As long as emotional matters are disturbed, you will not find your true identity. Our spiritual growth depends on the clarification of ambiguous feelings, leading to emotional maturity. The ancient symbol of the caduceus commonly found on this card also suggests energy, passion, and the intermingling of opposite forces while also signaling a union and partnership of balance. The validity of your feelings should not depend on the approval or disapproval of others. Avoid false compromises in emotional and intimate matters. It is of utmost importance that you learn to deal purposefully with your emotional needs and feelings.",
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
        desc_up:"The Three of Cups point toward a time of bliss, enchantment, and great joy. Life will become a feast if we venture beyond ourselves and learn to retain our emotional independence even in the company of others. This card is all about the quality of feelings, a lucky and auspicious card if interpreted as a symbol of emotional intelligence. Conscious emotions are fruitful emotions. The magic of feeling needs to be enhanced by the magic of thoughts, words, and deeds to allow your personal means of expression to come alive. Integrate your feelings to become one in body, mind, and spirit. This inner unity constitutes the basis of happy and lasting relationships. Develop your emotional vocabulary. Learn to appreciate the feelings of others. Express your own feelings with gusto. Don't be afraid of emotional reactions. Appraoch others, or keep them at a distance, defining your own boundaries - even if you may be unaccustomed to this. The right word at the right time can make miracles come true.",
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
        desc_up:"On one hand, the Four of Cups counsels you to interrupt your daily routine in order to find refuge within yourself and to contemplate your situation. On the other, it challenges you to stop your brooding, to find a new direction in life, and to reach for the stars. Expect new emotional experiences, as within this card, it is a matter of ups and downs, joys and sorrows, and of finding the right balancce between your own feelings and those of others. Beware your own eccentricities and flights of fancy, while at the same time, be on the lookout for newfound enthusiasm and new meanings. Being so deep in contemplation and thought, you may sometimes ignore the gifts that the world gives you. The potential joys that are laid at your feet are ignored,. Even though your intentions may be noble, you run the risk of treating the world with apathy. Explore your feelings. Relax and allow your spirit to float. Define your boundaries. It is in deep meditation and in silence that you will find the right words to express your previously mute emotions and experiences.",
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
        desc_up:"This card signifies the despair and sadness associated with loss. What counts now is inner reality and personal vision. Here and now, we are confronted with desires and fears that may issue from times long past or pertain to events in times still two come. Typically, this card posseses three of the cups being overturned, while two are still upright. The image of two cups still upright means that we can always choose which emotions and needs to accept and which to reject. A beautiful new way opens up. The challenge is to walk through the doorway, and this card symbolizes that your moment of truth has come. New inner realities and new experiences lie ahead. Take note of what aspect of the card attracts you most. Reconciliation or separation, setting out or staying put: these are all possibilities. Water treatments, baths, and showers can help you to open up emotionally. Do not run away from your own feelings. This is the moment of truth. The long-awaited new beginning.",
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
        desc_up:"The happy meeting between past and present is indicated here. There is a sense of wonderful nostalgia for times long ago. The memories coming back though, can sometimes be so engrossing that you begin to forget your present. Carefully evaluate your emotional experience. What was good and what less so? How can you recreate the beauty of yesteryear and how can you prevent past pain from resurfacing? How can you cope with old threats or old negative feelings should these reoccur? Today, you have more alternatives and many more possibilities. Sort out your feelings. Seize the chance to let go of old fears and to fulfill your true desires. This will rejuvenate and empower you. Dig up your memories until you can bury old feuds. Talk to your 'inner child.' Leave your childish behavior behind and do what you as an adult have wanted to do for a long time",
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
        desc_up:"This card stands for having reached a new peak of development. Worlds beyond imagination open up. We dance with our dreams and are victims of ever-changing illusions. The Seven of Cups represent the promising yet deterrent character of gifts and presents. The head evokes not only beauty but also vanity. The tower-like castle represents might and greatness, but also arrogance and loneliness. Pearls and precious gems speak for themselves as objects of beauty but also point to a passion for grandeur. The next cup contains a laurel wreath symbolizing success or futuility, a funeral wreath or the laurels of victory. The dragon stands for the forces of the underworld, which could devour you or bring you back. The serpent represents not only wisdom but also falseness and base instincts. The seventh cup is empty, hinting at new possibilities or chances missed. There is nothing left but to fathom the depths of your own needs and personal goals. Sometimes, your greatest longing and most unrealistic yearning turns out to be the most appropriate desire. Other times, the smalles of temptations and the most harmless of promises might turn out to be evil. Examine your fears and follow those desires that contain the most energy. Judging by the fruit of your desire, you will realize what is right and what is wrong. Create and live according to your own set of rules - especially in matters of the heart and in regard to your most intimate desires.",
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
        desc_up:"Dreams and visions that cnanot be easily grasped are nevertheless an important part of our inner world. They hlep our consciousness to expand and our power of discernment to grow. Beging your search now. This card encourages you to start your journey and to keep moving. But it warns you not to become too restless, because then you might hurry past your goal without noticing it. Replace nervousness or sluggishness with purposeful action. Go where your heart wants you to go! It is your task to become aware of your inner flow. This is the best remedy against addiction as well as loneliness. It is said that 'everything flows' but somtimes, the inner life has dried up, or overflowed and submerged all. Think of your life as a journey. Be like the journeymen of old, who used to travel in order to become masters of their craft. Where do you come from? Where are you headed? Don't force your feelings and inclinations to fit into a preconceived lgoic. You will find your own destiny in the balance of your own feelings and thoughts. You will discover it at the place where the experience of the flow is the strongest. This is not only a wonderful spiritual experience; it is also a very practical way of dealing with everyday life. 'The lazy ones are the clever ones.' The person who succeeds in goingwith the flow exerts relatively little energy and yet achieves the most! Feel and trust your inner flow. Be aware of your own personal thythm and make it an integral part of daily life. Feast and fast - there is a time for everything.",
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
        desc_up:"What moves you emotionally? The Nine of Cups represents strong feelings and manifold passions. Foreign or your own 'higher' demands keep you from living your own life, despite the fact that you have very definite ideas regarding your own happiness. Have the courage to make a difference. Don't let embarrassments hold you back nor be unduly fascinated by things strange and exotic. Define your long-term goals. Explore your life dreams. The challenge is to reshape your own life. Learn from your own experiences and define your own standards! Find out what kind of support you can muster and try to distinguish between needs that can be ignored and those you should take into consideration. This way, you will protect your great emotional store. Learn to go with the flow and to swim against the current if necessary. Write yourself a 'letter of intent' stating your goals for the next nine weeks. Write down important desires or fears. Establish specific goals for your personal growth and well-being",
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
        desc_up:"This is the card of great emotion and high times. Expect to feel emotional fulfillment and happiness due to a deep sense of unity with the world arund you. This card is about harmony and the joy that results from it, applying to your family, friends, and loved ones. There is a deep sense of community associated with this card. Don't be afraid of 'oceanic feelings.' This is a perfect opportunity to take a fearless look at powerful and bold passions. The more you learn to assess the degree to which you can truly trust yourself and others, the more secure you will feel. This is a test of your self-awareness and knowledge of human nature.",
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
        desc_up:"The pentacle is a gift of life. It refelcts the way you are a treasure to yourself and your surroundings - if you realize your talent. This card challenges you to rediscover and reevaluate your practical abilities. You should reassess the obvious - just like picking up a coin that has been lying on the street unnoticed. Our own talents often seem to us to be insignificant. The intrinsic and prototypical is often hidden in the invisible. You do not take yourself seriously or you have the wrong idea about what talent really entails. You might think that only experts or famous entertainers possess a special gift. In reality, every person has special talents. You 'only' have to learn to understand the value of your unique experiences and abilities. Do not allow yourself to be confused, but keep on searching and evaluating your experiences and results. You will find the right answer to your questions by examining your value system. What has dwindled in importance? What has recently grown in significant? Everything can be of value if you consciously make it your own. Become an explorer. A simple walk through the town or the countryside can be an adventure full of surprising discoveries! Regard your relationships and encounters, your duties and tasks in the same spirit.",
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
        desc_up:"The Knight of Pentacles is all about your ability to organize your life, to turn insights into practical solutions, instead of sweeping problems under the carpet. There is much to be harvested in your life. By understanding your purpose and your needs, you will ensure a bountiful harvest. However, your talent has the potential to fall to pieces for lack of a connecting framework; the whole dissolves into its parts because you focus too much on details. In a positive sense, if you truly have become yourself and found your place in the world, no borders will be able to contain or limit you. It is actually the small things, the seemingly insignificant, that take on a special significant. By exploring your current contradictions, you will gain experience and develop a deep sense of tranquility. Do not be afraid of conflicts; on the contrary, seek them out at the right time. Strengthen your faith in your ability to solve problems, to conquer fears, and to fulfill your desires. Forgive yourself and others for not being perfect. Even the 'garbage' that we all produce can still serve a purpose. You cannot change your fellow human beings, but you can accept them as they are and help them to use their talents the the greatest effect.",
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
        desc_up:"It is certainly not your destiny to go through life as a nameless being, but neighter are you called upon to sacrifice something absolutely essential in the name of duty: your uniqueness and the value of your existence. Do not foolishly play around with your opportunities or your problems. You possess special talents, as well as certain disadvantages. They are part of what makes you unique, so learn more about them. Understand the value of your life's experiences. Every human being is a unique product of nature. Respect for the experience of each individual is the only proper way to conduct yourself. You have at your disposal the strength to pursue happiness and to make your fortune. Your love for yourself and your fellow human beings, as well as your ability to accept your present circumstances, whatever they may be, will allow you to get out of life what is most important. Go into the hills and climb a peak. Organize your everyday routin in such a way that you will move mountains in your daily life. As the saying goes, 'First do what is necessary, then what is possible, and suddently you will find that you can do the impossible.'",
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
        desc_up:"In tarot, the suit of pentacles represents matter and the physical body, money, and talents. The King of Pentacles is its master, and intends to show you that you need to become active yourself in a hand-on approach to creating your own fortune. In a positive sense, it encourages you to be at ease and to feel comfortable with your current abundance. You are your own greatest resource - your fiends and harvest, vineyard and wine. Create a life and work style that fits your personality, your own personal culture. Become the architect, artist, and builder of your life! Reassess your financial situation as well as your talents and your desire for productivity and fulfillment. Take stock and make a survey of what you have accomplished s far and what is still lacking. Care for everything you have planted - in your garden as well as in your life. All that is meant to last needs to be reevaluated. Sense and pleasure are the measure of appropriate, personal wealth.",
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
        desc_up:"This card emphasizes the double nature of human beings. You are like the two faces of a coin representing the influences on your character: on one side, experience and expectation, on the other, future events and results. 'How have I been shaped?' on one face and, on the other, 'What do I give shape to?' Each person possesses special talents as well as disadvantages. By accepting all that we are made of, we will discover and develop our strengths. Each person has certain talents, which are uniquely theirs. How do you see your role in the world? Do you want to take it easy? Or do you want to carry the weight of the world on your shoulders like the titan Atlast? Your talents become clear in the face of huge challenges, but also in the sum total of small achievements. Recognize the power within yourself. The world is waiting for your special contribution. Conquer the world wth creativity and passion!",
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
        desc_up:"New facts, values, and results are appearing in your current situation. As a result, you will find your perspective shifting. Something that has always been present and possible is becoming clearly visible and gaining special significance. A true change always requires a reevaluation on the old. Your focus in life may alter. Old principles will become ambiguous, formerly important habits suddently seem questionable, and new tasks are added to old ones! You are in the midst of it all and experience yourself like never before. This is your opportunity to liberate yourself and to let go of what formerly appeared as constraints. You are called upon to see beyond your narrow view of life and to break free from your limited reality. You are encouraged to undergo a transformation and to expand your 'frame of life.' Yet the card also warns you not to take yourself too seriously and not to puff yourself up or to become the victim of empty promises. You are neither th servant nor the master of circumstance. You have chosen in the past and you are free to choose again and to put your life into a new context. When your focus in life changes, you will experience unexpected confirmation, but also much insecurity. This is a blessing for the development of your personality, in spite of all the difficulties that may be involved. Pay attention to your knees - do not let them become too soft or too rigid. Your eyes and ears - all of your senses - may be playing up for some time to come. This is because all your perceptions are shifting, changing, and expanding as you attain a new focus in life. What is needed now are new results. They constitute your new task and will prove to be your mainstay.",
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
        desc_up:"Each person has their own peak to climb. Naturally, there are mountains of varying heights, but each has a summit. Your personal task is to reach your own zenith. This card encourages you to be consistent and patient, but to beware of reclusive and standoffish behavior. Only top-class achievements that enhance your personal wellbeing and expand your consciousness are of any lasting value. Yet, this is not a journey that must be embarked upon alone. Several people of vastly varying skills and beliefs with heterogenous perspectives can work together to join in on a greater cause. Teamwork helps to create something new, and progress can be swift when the yoke is shared. Find the task that requires and focuses all your energies. Do not only ask what you want. Ask what the world wants from you, and who might help share in both the effort and the reward.",
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
        desc_up:"Each person creates their own world. On the one hand, the Four of Pentacles tells you to beware of 'fact-bound superstition,' of putting your faith in hard data and material things only. In a more positive sense, it is a card of completeness. You restructure and discard all that is no longer appropriate for you, creating new forms and new habits. You complete the framework in which you choose to live your life, an environment which your talents, your personal strengths and weaknesses will all find their proper place. Do not play the hero or the loser! Do not waste your time with show-offs or yeasayers. Every human being possesses something unique that is theirs alone. Neither good nor bad behavior will help you succeed. You will advance only by developing your greatest talents. Your most precious talents are those that are the most useful. They will benefit you most by helping you to fulfill your desires and let go of your fears. Sometimes, it is better to clearly draw the line and to emphasize your uniqueness. But sometimes, it is better to improve your communicative abilities and to include as many people as possible in your endeavors.",
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
        desc_up:"The Five of Pentacles represents the essence of the earth element: the full blossoming of your talents. This transformation is emphasized by the caterpillar in its cocoon and the butterflies awaiting its emergence. It takes both community and individuality to succeed. Personal assets - property as well as ability - create enough value to rule out avoidable human hardships and make unavoidable distress bearable. There are hardships caused by hunger or sickness, but also others which arise from unfulfilled needs: the hunger for meaning, the thirst for love, or the longing for roots. Each and every type of human plight is a tragedy. Where the need is greatest, our talents can achieve the most. Make a virtue of necessity. Where the darkness is deepest, your light is needed most. Where your talents shine, walls become transparent and you will stand on firm ground in all situations. Take care of your strengths as well as your weaknesses and of the big and small things alike. Build a bridge between heaven and earth. Become involved without becoming constrained. Refuse to fulfill unfounded demands. But discharge meaningful obligations with a glad heart! Put an end to unnecessary suffering. Make the world a more human, a more livable, comfortable - and valuable place!",
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
        desc_up:"Whenever giving and taking become one, whenever strengths and weaknesses are reconciled, a divine blessing can be felt. Whenever you use your talents to satisfy your needs and use your needs to stimulate your talents, there is always something to be gained. Both aspects will benefit by the result - a true win-win situation. In this manner, you can transform plain wants and banal necessities through blessed creative acts. Compassion and understanding breeds generosity, sharing, and charity. one gives away the fruits of one's labors with the understanding that the situation of having the upper hand can be reversed at any moment. New ways of realizing your own needs and of understanding the needs of others are called for. Learn to distinguish productive from unproductive needs. The value of that which you own is greatest when as many people as possible benefit from it. In this sense, you own only that which you give away. Focus upon realizing a gain for all parties involved. This is much better than managing deprivation.",
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
        desc_up:"Whether a mountain of hardships and sorrows is already behind us or still to be climbed, this card is all about reviewing results and determining new goals. Are we satisfied with the results of past efforts? Are we happy about the way we have achieved our goals? Our results are the mirror of our lives. Emotional and mental clarity are only of value if put to good use. The fruits of our effots will only make us happy and satisfied if we relate to them as true expressions of our authentic selves. Facing contradictions offers a special chance to contemplate the self and to be contempative. We will gain our own measure and recognize our true talents only by evaluating our own experiences. Every one of us possesses special talents. Talent is not something exotic but shows itself in always mastering the next step and accomplishing thetasks of your daily life in your own way and according to your own standards. Through your personal talent, you make a differece to the world. If you examine social norms, you will find out whether or not they function for you. Objective facts and subjective questions are linked, and yet different. There are objective matters that you will only be able to solve by realizing your own destiny, your own purpose in life, your own individuality. Each success will confirm that you are indeed on the right track. But even failures are important if they reveal to you what is not your purpose in life and not your destiny. In your current situation, you are called upon to look for signs and interpret them. Sometimes, even stumbling blocks can give you important clues. Search and find until you see clearly. If you can find your own measure, you will grow with your tasks and your tasks will grow with you!",
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
        desc_up:"It is a paradox that you have to rise above yourself to find yourself. In a certain sense, the Eight of Pentacles is all about going out of the ordinary and breaking free. Your contribution to a great task is called for now. Review your personal responsibilities and necessities. Your current questions will help you to find your calling and to create a framework, in which you will get the best results with the means your presently have at your disposal. Do not wear yourself out with tasks set by others. Find the purpose that only you can fulfill! Like every human being, you too possess special talents that will make your own life happy and the world more humane and a better place to live in. There are typical talents and tasks that await you - and you alone. If you focus on them, you will be able to banish all gurus and experts - for it is you who will gain mastery of your life! Create many results that are uniquely yours, with your signature and style, and through which you can express yourself. In this manner, you will create a sort of healthy luxury: an abundance of wellbeing, accomplished ideas, and fulfilled desires. Reflect on your experiences. The clearer your assets and handicaps become, the easier it will be for you to discover your true purpose in life. Focusing on this will prove to be the basis and the secret of your mastery.",
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
        desc_up:"It maeks a big difference whether or not you are in this world, because you brought something unique with you that will make it a better place. Do not hide your talents! Be generous and show your fellow human beings the treasures you have to offer. You yourself are a treasure. The key to unfolding inner wealth is love. Love is not just an emotion it is the basis and the result of the blossoming of all your needs and talents! The Nine of Coins is all about the love you feel for your fellow human beings, for animal and plants, for things, events, and anything in between. Love is not just the right measure in a partnership; love is a way of encountering the world. The more talents and needs of as many people as possible are being realized, the greater the love and the greater the benefit for all involved. Any material gain that does not fulfill needs or support talents is really of no value. If you encounter the world with respect and love, you add to it. A greater whole is created, in which many people with their strengths and weaknesses, their advantages and disadvantages, feel included. You cannot gain more than this, and you should not be satisfied with less. Stop the internal dialogue, the nervous chattering of yyour inner voice. Find inner peace, your 'blue hour,' by giving loving attention to your tasks and by joyfully recognizing your results. Stop parroting the ideas of others or imitating their everchanging moods. Find the fitting framework for your high-flying plans and your blossoming talents.",
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
        desc_up:"The Ten of Pentacles represents the joy of living, the best results, proliferating talents, and great wealth. Significantly, individuality cannot be achieved in isolation. If you succeed in finding the bridge to others, loneliness - the shadow of missing individuality - will disappear, and with it, the danger of drowning in the crowd. The greatest wealth lies in acknowledging and fulfilling your contribution to the course of events. Your own experiences and those of others constitute a greater whole. You know that you will not be able to hold onto anything and that change is inevitable, heralding new opportunities. You are aware that your actions are based on those of your ancestors and that future generations will carry these forward. Time is relative. Nothing ever gets lost. Nothing keeps you from living and from feeling your own rhythm. Nothing stops you from lingering or moving on. Cooperation, exchange, mutual support, and compromises are great as long as they are the result of each indiviudal involved following their own path. They become unnecessarily limiting if based on sacrificing your independence and your individuality. Touch the moment with the magic wand of individuality and contribute to a communcal style of living, in which each and every individual can walk their own path in joy. Then the bliss of mutuality will blossom, culminating in a culture of shared intentions.",
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
        desc_up:"By adding air to a flame in the fire, to a body immersed in water, or to an object floating in air, it will become more buoyant and rise up. This is also true of the human mind, which is symbolically equivalent to the fire element. A well-functioning mind makes many things easier. Traditionally, the Page of Swords represents mental renewal and new thoughts, judgments, and decisions. In a more general sense, this card stands for everything new, for playful and experimental thinking. It warns you to beware of gullibility and ignorance, which might lead to powerless protests, general distrust, and erratic or dogmatic decision-making. Remain mentally fit. Look for rewarding tasks and challenges. Explot your humor and your charm. Discover a new lightness of being. Avoid made-up statements and arguments. Work in a creative and attentive manner with the images that are in your head and in the heads of others. Take things more 'lightly.' Take the 'sword' into your own hands. Do not delegate your power of discernment to others. The value of a new idea cannot be judged by that which is, but only by that which will be. You might sense that the little bit that man can comprehend is much smaller than that which is. It makes a big difference whether or not you comprehend your individual contribution and put your abilities to good use in order to make life easier, more deliberate, and more fun for yourself and for your fellow human beings.",
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
        desc_up:"Living a purely symbolic life is one of the greatest of dangers, but when acknowledged, a great task. If you live completely within and for the realm of the mind, you will be completely absorbed in your imagination, your ideas, and your perceptions. You might think the title of a doctor or a professor, an award, or a medal will bring you the greatest happiness. To gather such trophies might become your most important goal in life. But because these trophies are nothing but symbols, your life becomes merely symbolic. In this rather chilling version of mental radicalism, you ultimately sacrifice your humanity for the sake of amassing trophies. This will lead to a shrivelling up of your personality, which then can be shown around on a silver platter. Positive alternatives may vary, but they always have to do with overcoming the dangers of symbolic life and using the power of your mind to deal with real problems and experience real happiness. Take your thoughts further than suual. Risk greater commitment and be more consequential and steadfast. Leave old thought patterns behind. Take your thoughts seriously and interpret them like dreams.",
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
        desc_up:"The Queen of Swords has two faces. She is a stern judge and at the same time a cheerful elf queen. One of the most splendid tasks of the suit of swords is to reveal alternative ways to realize your unfulfilled needs. Use the weapons of your mind to liberate yourself from internal and external constraints. Stand up for yourself. Do not be impressed by superficialities or delusions. Refine your power of discernment. This card celebrates the capacity to recognize and to define vague desires or fears. One of the major strengths of this mistress of perception lies in dispelling unfounded fears. Prejudices and fears constitute self-imposed obstacles, and may prove to be unfounded when carefully analyzed. In other cases, they express authentic needs and experiences, which cannot be communicated in any other way. Swords as weapons of the mind have the power to develop and refine our mental capacities. Being able to discern and assess experiences that have previously gone unnoticed, about which you were ignorant, is an important aspect of that power. Ensure clarity in your decisions and your behavior. If necessary, use a magnifying glass or a pair of binoculars to look at your concerns from all possible angles. Refine love, longing, and pasion. This is a card of release from your fears and of new openings in matters of the heart.",
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
        desc_up:"The King of Swords is the master of swords, the master of knowledge. His lofty realm of the mind begins high above the mountaintops. Either he has his head in the clouds, or develops an independent consciousness - free and independent in his thinking, down to earth, and well-grounded. He is a reminder that each piece of knowledge includes its paradoxical opposite: not-knowing. The peaks of know include the limits of our knowledge as well as the realm in which knowing is transformed into believing. Heaven and earth represent mental absoluteness and practical necessity. They who know much will also have to define their place between heaven and earth. Success or failure depend very much upon your ability to question yourself and to view yourself from the outside. Use your mental powers to better understand your needs and how to fulfill them. It is your conscious handling of the unconscious that will result in a better understanding of yourself and help you to overcome half-truths, superstition, and disbelief. Try to understand what it is that you do not now about yourself and others - and what you cannot know. Make sure you understand your most important needs and expectations. In order to achieve this end, it is most helpful to have all the mirrors of your mind well-polished and to know your own star!",
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
        desc_up:"In tarot, swords stand for the mind's weapons. This symbolism dates back to the figure of Justitia from antiquity. The attributes of the goddess of justice - one of the four cardinal virtues - were tools in the form of a pair of scales and a sword. Not only an executioner's instrument of power, the sword was a means to form a judgment, like the scales. While the scales measure, the sword examines and discerns, being used to make deep cuts and and to draw the line, separating that which belongs from that which does not belong. The realm of the mind is the air. A single sword already expresses the ambiguity of the human mind. On the one hand, it is the crowning achievement of creation. On the other hand, it represents the greatest possible alienation and distance from nature in all its glory. To develop the former and avoid the latter, it is up to us to learn to fly. The fruitfulness of the mind is measured by the refinement and fulfillment of practical needs. The Ace of Swords stands for the opportunity to gain a better understanding of your unexpressed desires and fears. Rise and stand up straight! Gain strngth from your knowledge and delve into everything you don't yet know. You possess and you will need clear reasoning and staying power. Brain jogging and physical exercise will support your mental facilities. Enjoy your newfound clarity!",
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
        desc_up:"This card shows that your thoughts and your discerning powers are in the process of transcending your previous limits. Subtle sentiments and unexpressed needs demand your attention, unvoiced desires and fears await a response. And yet those louder and more insistent opinions and intentions are in no less need of closer scrutiny. You need to use the weapons of your mind - thinking, knowing, and discerning - to probe your emotions and wants. The frontiers of the realm of the mind, within which your current questions are focused, are to be found beyond the concrete and the obvious. The challenge is to penetrate new spaces with the weapons of your mind and to shed the light of consciousness on all aspects of your personality. Do not become entrenched in uncertainty. Do not pretent to be blind or not to understand. Expand your horizons. Search within to grow beyond yourself. ",
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
        desc_up:"This is a very powerful card, an homage to love and to the liberating power of the mind. As ever, the message is ambiguous: perhaps a great abyss is opening up at the center of your heart - or maybe swords are about to free you from affliction and distress. The positive message is that whatever problems we may encounter, the weapons of the mind and the eyes of love will enable us to find a solution, in a happy alliance of heart and sword. Most problems arise out of a separation of abstract thoughts and your real feelings. Obsessive views and rigid ideas refuse to be checked against actual experience, paralyzing your mental and emotional faculties. Like a thorn in the side, they are a source of constant pain and irritation. Give love a chance, including a love of truth and honesty. Shed light on your memories and expectations. Do not be afraid of painful truths. All wounds will heal if you tend to them. Do not give up! Risk being more honest and authentic. Let go of your prejudice, pretense, and reserve, Feel the great relief that will be yours when your heart is set free again.",
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
        desc_up:"This particular card warns of the dangers of the hypnotic effect of ideas and of fanaticism in general, which turns people into martyrs and into politically or religiously motivated criminals. Drawing on the four points of the compass, the Four of Swords represent the completeness of the weapons of the mind. Thoughts and ideas form a composite whole. Ideally, your thoughts should be 'well-rounded.' They should completement and inspire each other, as a sign of wisdom and expanded consciousness. In less ideal circumstances, unmitigated thought manifests itself in disastrous convictions that can only lead to dire consequences. Then you will become a victim or a perpetrator, a fundamentalist or a martyr. In a metaphorical sense, you are warned against human and spiritual bleakness, when convictions become more important than love or life. You've got some tough nuts to crack! But you will be able to resolve major contradictions and master complicated issues. Relax both inwardly and outwardly by letting go of negative thoughts. In order for your mind to concentrate on the task at hand, you must relax. A new dimension and a life beyond your expectations await you.",
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
        desc_up:"This card depicts a telling of uncertainty, flightiness, and ultimately of misunderstanding. How do we use the air element of the mind? You may be totally ruled by your moods or have suppressed them by the use of the sword. A fertile mind is able to distinguish between good and bad emotional states, enabling you to live according to your own rhythm. The essence of the mind is a developed consciousness and personal clarity, which will make your life easier and more fulfilled. Learn from experience. Probe deeper into the meaning of your victories and your defeats. Use the weapons of your mind as tools for healing. It is never too late, and only very rarely too early, to draw conclusions from your experiences and to learn the necessary lessons. Do not allow difficulties to bring you down. Be clear and honest. You have nothing to lose, but much to gain. Use your knowledge fruitfully. Consider the two swords lying on the ground and ask yourself whether you understand the power of your untapped thoughts and can aprpeciate the joy of overcoming anddiscarding old doubts. Beware of empty promises and unfounded speculation. Live fully in the present moment. Reassess what you consider to be good and beautiful. You know you are on the right track when you are happy and have learned to marvel again.",
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
        desc_up:"Ferrying someone from one shore to the other can be likened to translating words from one language into another. Different people and their respective truths are like two shores or two different worlds, which need to be connected. The archetype of the ferryman typically found on this card represents the controlling power and transformational abilities of the human mind. In many traditional stories, such as 'The Devil with the Three Golden Hairs,' the ferryman is condemned for all eternity to ferry back and forth. In his novel Siddhartha, Hermann Hesse created such an inspiring version of the ferryman that this archetype has become a symbol of the dignity of human consciousness as a bridge between two realms. Whether or not we can cope with our current situation depends to a great extent on our mental clarity and openness. Useless thoughts are like old baggage, carried along to each new destination. Useful thoughts, on the other hand, plumb the depths of any issue, just as the ferryman can only advance if his pole makes contact with the bottom of the river. Be thorough in all your dealings. Use your mental agility and the intensity of the moment to find out which needs really motivate you and others. Communicate to them your needs.",
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
        desc_up:"Each human being brings a new truth into this world. As long as we are separated from our inner qualities, we will be forever searching! You are faced with contradictions and riddles that have one purpose only: to enable you to find the answer that is in true harmony with your personality. This card stands in a negative sense for failing to know yourself or others, a permanent division of your outer personality and inner being. You are searching without being aware of what you are looking for. However, there is an alternative. The best way to broaden our minds is to look at familiar things from a different perspective! This occurs quite naturally when, on returning from a vacation, we see our familiar surroundings in a different light. Similarly, when we are in love, hurt, angry, or relieved, we suddently see the world through new eyes. The card challenges you to do what often happens spontaneously on purpose. If you draw this card, it means you should bury old feuds and ban the ghosts of yesteryear from your life for good. Revaluate all that you take for granted. Take a break - for an hour or a whole day. Allow yourself to do something 'foolish.' See to your needs so that they may benefit yourself and others in the long term. Say goodbye to aims and ambitions which no longer serve you. Pay attention to your dreams and your life's wishes.",
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
        desc_up:"Spiritual life connects heaven and earth. All conscious thought and knowledge has a spiritual dimension that helps us to recognize our own limitations and sense a reality that is muchg reater than ourselves. Beyond the boundaries of the ego lies eternal life, motivating us to free yourself from all dependencies! Come into contact with your own emotional basis, with your own 'inner child' and with all that you want to contribute to the world. In many situations, this card should encourage you to withdraw for a while. Retreat or hide in a self-made cocoon, in order to get in touch with yourself, and to generate new and original thoughts. Become the master of your life and the center of your world. Always remain in harmony with yourself. You will become comfortable and relaxed in everyday life when you reestablish your own way of thinking, acting, and desiring. Werner Sprenger said, 'There are thoughts that you cannot comprehend, unless you change your life.' But the opposite is also true: there are changes in your life that cannot be realized, unless you comprehend your thoughts.",
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
        desc_up:"The Nine of Swords symbolize a very broad mental horizon. If it becomes dark on the horizon, you will experience a deep personal crisis. As soon as a p-erson starts going their own way, they enter dimensions of being that are uncharted, because no one has been there before. Once we redefine our own individuality and comprehend the uniqueness of each and every life, our horizon will shift. Nightmares and nagging thoughts are an integral part of this process. Do not be afraid. Take your time to digest the new state of affairs. Accept doubts and disappointments, but do not succumb to despair. Accept responsibility for your situation. There are new possibilities and new horizons ahead. Go forth and explore them. The time has come to think about your thinking. Reevaluate your ideas from a different perspective. Try to comprehend what your thoughts really mean. Beware of irrational actions and automatic reactions. Do not let yourself be provoked. Accept responsibility. You will find spiritual guides to help you during the transition to a new horizon. Do not be too deterred by temporary obstacles or difficulties. Keep your feet firmly on the ground.",
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
        desc_up:"In a negative sense, swords as weapons of the mind represent its destructive power and, in turn, man's alientation from nature. The vicious and hurtful aspect of the sword culminates here. This card tells us to beware of highly sophisticated and cultivated people who nevertheless succumb to their baser instincts and malice, ourselves included. In a positive sense, the Ten of Swords has quite a different meaning: reaping the fruits of the mind. Ten swords represent the epitome of consciousness and knowledge. However, disaster strikes when one least expects it - it is swift and at times unavoidable. Something here may be beyond your control, leaving you with a feeling that you are a victim of your circumstances. Strengthen your mental alertness. Treat thoughts, definitions, and decisions with care. Clear the air and take a deep breath. Beware of suspicions and harmful actions. Open up to the flow of life",
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