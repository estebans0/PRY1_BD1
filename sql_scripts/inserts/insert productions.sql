SET DEFINE OFF

ALTER TABLE PRODUCTION MODIFY (SYNOPSIS VARCHAR2(2000));
ALTER TABLE PRODUCTION MODIFY (TRAILER VARCHAR2(200));

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (1, 'Avatar', 'In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.', to_date('12/10/2009', 'MM/DD/YYYY'), 162, 1, 'https://www.imdb.com/video/vi531039513/?playlistId=tt0499549&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (2, 'Pirates of the Caribbean: At World''s End', 'Captain Barbossa, long believed to be dead, has come back to life and is headed to the edge of the Earth with Will Turner and Elizabeth Swann. But nothing is quite as it seems.', to_date('5/19/2007', 'MM/DD/YYYY'), 169, 1, 'https://www.imdb.com/video/vi3821315609/?playlistId=tt0449088&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (3, 'Spectre', 'A cryptic message from Bond’s past sends him on a trail to uncover a sinister organization. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind SPECTRE.', to_date('10/26/2015', 'MM/DD/YYYY'), 148, 1, 'https://www.imdb.com/video/vi3362042649/?playlistId=tt2379713&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (4, 'The Dark Knight Rises', 'Following the death of District Attorney Harvey Dent, Batman assumes responsibility for Dent''s crimes to protect the late attorney''s reputation and is subsequently hunted by the Gotham City Police Department. Eight years later, Batman encounters the mysterious Selina Kyle and the villainous Bane, a new terrorist leader who overwhelms Gotham''s finest. The Dark Knight resurfaces to protect a city that has branded him an enemy.', to_date('7/16/2012', 'MM/DD/YYYY'), 165, 1, 'https://www.imdb.com/video/vi144884505/?playlistId=tt1345836&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (5, 'John Carter', 'John Carter is a war-weary, former military captain who''s inexplicably transported to the mysterious and exotic planet of Barsoom (Mars) and reluctantly becomes embroiled in an epic conflict. It''s a world on the brink of collapse, and Carter rediscovers his humanity when he realizes the survival of Barsoom and its people rests in his hands.', to_date('3/7/2012', 'MM/DD/YYYY'), 132, 1, 'https://www.imdb.com/video/vi2340397337/?playlistId=tt0401729&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (6, 'Spider-Man 3', 'The seemingly invincible Spider-Man goes up against an all-new crop of villain – including the shape-shifting Sandman. While Spider-Man’s superpowers are altered by an alien organism, his alter ego, Peter Parker, deals with nemesis Eddie Brock and also gets caught up in a love triangle.', to_date('5/1/2007', 'MM/DD/YYYY'), 139, 1, 'https://www.imdb.com/video/vi1939784217/?playlistId=tt0413300&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (7, 'Tangled', 'When the kingdom''s most wanted-and most charming-bandit Flynn Rider hides out in a mysterious tower, he''s taken hostage by Rapunzel, a beautiful and feisty tower-bound teen with 70 feet of magical, golden hair. Flynn''s curious captor, who''s looking for her ticket out of the tower where she''s been locked away for years, strikes a deal with the handsome thief and the unlikely duo sets off on an action-packed escapade, complete with a super-cop horse, an over-protective chameleon and a gruff gang of pub thugs.', to_date('11/24/2010', 'MM/DD/YYYY'), 100, 1, 'https://www.imdb.com/video/vi385091865/?playlistId=tt0398286&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (8, 'Avengers: Age of Ultron', 'When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and Earth’s Mightiest Heroes are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to The Avengers to stop him from enacting his terrible plans, and soon uneasy alliances and unexpected action pave the way for an epic and unique global adventure.', to_date('4/22/2015', 'MM/DD/YYYY'), 141, 1, 'https://www.imdb.com/video/vi2821566745/?playlistId=tt2395427&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (9, 'Harry Potter and the Half-Blood Prince', 'As Harry begins his sixth year at Hogwarts, he discovers an old book marked as ''Property of the Half-Blood Prince'', and begins to learn more about Lord Voldemort''s dark past.', to_date('7/7/2009', 'MM/DD/YYYY'), 153, 1, 'https://www.imdb.com/video/vi1061421849/?playlistId=tt0417741&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (10, 'Batman v Superman: Dawn of Justice', 'Fearing the actions of a god-like Super Hero left unchecked, Gotham City’s own formidable, forceful vigilante takes on Metropolis’s most revered, modern-day savior, while the world wrestles with what sort of hero it really needs. And with Batman and Superman at war with one another, a new threat quickly arises, putting mankind in greater danger than it’s ever known before.', to_date('3/23/2016', 'MM/DD/YYYY'), 151, 1, 'https://www.imdb.com/video/vi1946858521/?playlistId=tt2975590&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (11, 'Superman Returns', 'Superman returns to discover his 5-year absence has allowed Lex Luthor to walk free, and that those he was closest too felt abandoned and have moved on. Luthor plots his ultimate revenge that could see millions killed and change the face of the planet forever, as well as ridding himself of the Man of Steel.', to_date('6/28/2006', 'MM/DD/YYYY'), 154, 1, 'https://www.imdb.com/video/vi641508889/?playlistId=tt0348150&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (12, 'Quantum of Solace', 'Quantum of Solace continues the adventures of James Bond after Casino Royale. Betrayed by Vesper, the woman he loved, 007 fights the urge to make his latest mission personal. Pursuing his determination to uncover the truth, Bond and M interrogate Mr. White, who reveals that the organization that blackmailed Vesper is far more complex and dangerous than anyone had imagined.', to_date('10/30/2008', 'MM/DD/YYYY'), 106, 1, 'https://www.imdb.com/video/vi1024524313/?playlistId=tt0830515&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (13, 'Pirates of the Caribbean: Dead Man''s Chest', 'Captain Jack Sparrow works his way out of a blood debt with the ghostly Davey Jones, he also attempts to avoid eternal damnation.', to_date('6/20/2006', 'MM/DD/YYYY'), 151, 1, 'https://www.imdb.com/video/vi3077572377/?playlistId=tt0383574&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (14, 'The Lone Ranger', 'The Texas Rangers chase down a gang of outlaws led by Butch Cavendish, but the gang ambushes the Rangers, seemingly killing them all. One survivor is found, however, by an American Indian named Tonto, who nurses him back to health. The Ranger, donning a mask and riding a white stallion named Silver, teams up with Tonto to bring the unscrupulous gang and others of that ilk to justice.', to_date('7/3/2013', 'MM/DD/YYYY'), 149, 1, 'https://www.imdb.com/video/vi460432921/?playlistId=tt1210819&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (15, 'Man of Steel', 'A young boy learns that he has extraordinary powers and is not of this earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must emerge if he is to save the world from annihilation and become the symbol of hope for all mankind.', to_date('6/12/2013', 'MM/DD/YYYY'), 143, 1, 'https://www.imdb.com/video/vi705668633/?playlistId=tt0770828&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (16, 'The Chronicles of Narnia: Prince Caspian', 'One year after their incredible adventures in the Lion, the Witch and the Wardrobe, Peter, Edmund, Lucy and Susan Pevensie return to Narnia to aid a young prince whose life has been threatened by the evil King Miraz. Now, with the help of a colorful cast of new characters, including Trufflehunter the badger and Nikabrik the dwarf, the Pevensie clan embarks on an incredible quest to ensure that Narnia is returned to its rightful heir.', to_date('5/15/2008', 'MM/DD/YYYY'), 150, 1, 'https://www.imdb.com/video/vi1793261849/?playlistId=tt0499448&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (17, 'The Avengers', 'When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!', to_date('4/25/2012', 'MM/DD/YYYY'), 143, 1, 'https://www.imdb.com/video/vi1891149081/?playlistId=tt0848228&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (18, 'Pirates of the Caribbean: On Stranger Tides', 'Captain Jack Sparrow crosses paths with a woman from his past, and he''s not sure if it''s love -- or if she''s a ruthless con artist who''s using him to find the fabled Fountain of Youth. When she forces him aboard the Queen Anne''s Revenge, the ship of the formidable pirate Blackbeard, Jack finds himself on an unexpected adventure in which he doesn''t know who to fear more: Blackbeard or the woman from his past.', to_date('5/14/2011', 'MM/DD/YYYY'), 136, 1, 'https://www.imdb.com/video/vi3747192089/?playlistId=tt1298650&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (19, 'Men in Black 3', 'Agents J (Will Smith) and K (Tommy Lee Jones) are back...in time. J has seen some inexplicable things in his 15 years with the Men in Black, but nothing, not even aliens, perplexes him as much as his wry, reticent partner. But when K''s life and the fate of the planet are put at stake, Agent J will have to travel back in time to put things right. J discovers that there are secrets to the universe that K never told him - secrets that will reveal themselves as he teams up with the young Agent K (Josh Brolin) to save his partner, the agency, and the future of humankind.', to_date('5/23/2012', 'MM/DD/YYYY'), 106, 1, 'https://www.imdb.com/video/vi3916407065/?playlistId=tt1409024&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (20, 'The Hobbit: The Battle of the Five Armies', 'Immediately after the events of The Desolation of Smaug, Bilbo and the dwarves try to defend Erebor''s mountain of treasure from others who claim it: the men of the ruined Laketown and the elves of Mirkwood. Meanwhile an army of Orcs led by Azog the Defiler is marching on Erebor, fueled by the rise of the dark lord Sauron. Dwarves, elves and men must unite, and the hope for Middle-Earth falls into Bilbo''s hands.', to_date('12/10/2014', 'MM/DD/YYYY'), 144, 1, 'https://www.imdb.com/video/vi1092005657/?playlistId=tt2310332&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (21, 'The Amazing Spider-Man', 'Peter Parker is an outcast high schooler abandoned by his parents as a boy, leaving him to be raised by his Uncle Ben and Aunt May. Like most teenagers, Peter is trying to figure out who he is and how he got to be the person he is today. As Peter discovers a mysterious briefcase that belonged to his father, he begins a quest to understand his parents'' disappearance – leading him directly to Oscorp and the lab of Dr. Curt Connors, his father''s former partner. As Spider-Man is set on a collision course with Connors'' alter ego, The Lizard, Peter will make life-altering choices to use his powers and shape his destiny to become a hero.', to_date('6/27/2012', 'MM/DD/YYYY'), 136, 1, 'https://www.imdb.com/video/vi717595161/?playlistId=tt0948470&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (22, 'Robin Hood', 'When soldier Robin happens upon the dying Robert of Loxley, he promises to return the man''s sword to his family in Nottingham. There, he assumes Robert''s identity; romances his widow, Marion; and draws the ire of the town''s sheriff and King John''s henchman, Godfrey.', to_date('5/12/2010', 'MM/DD/YYYY'), 140, 1, 'https://www.imdb.com/video/vi73860121/?playlistId=tt0955308&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (23, 'The Hobbit: The Desolation of Smaug', 'The Dwarves, Bilbo and Gandalf have successfully escaped the Misty Mountains, and Bilbo has gained the One Ring. They all continue their journey to get their gold back from the Dragon, Smaug.', to_date('12/11/2013', 'MM/DD/YYYY'), 161, 1, 'https://www.imdb.com/video/vi2165155865/?playlistId=tt1170358&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (24, 'The Golden Compass', 'After overhearing a shocking secret, precocious orphan Lyra Belacqua trades her carefree existence roaming the halls of Jordan College for an otherworldly adventure in the far North, unaware that it''s part of her destiny.', to_date('12/4/2007', 'MM/DD/YYYY'), 113, 1, 'https://www.imdb.com/video/vi2813395225/?playlistId=tt0385752&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (25, 'King Kong', 'In 1933 New York, an overly ambitious movie producer coerces his cast and hired ship crew to travel to mysterious Skull Island, where they encounter Kong, a giant ape who is immediately smitten with the leading lady.', to_date('12/14/2005', 'MM/DD/YYYY'), 187, 1, 'https://www.imdb.com/video/vi4100440345/?playlistId=tt0360717&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (26, 'Titanic', '84 years later, a 101-year-old woman named Rose DeWitt Bukater tells the story to her granddaughter Lizzy Calvert, Brock Lovett, Lewis Bodine, Bobby Buell and Anatoly Mikailavich on the Keldysh about her life set in April 10th 1912, on a ship called Titanic when young Rose boards the departing ship with the upper-class passengers and her mother, Ruth DeWitt Bukater, and her fiancé, Caledon Hockley. Meanwhile, a drifter and artist named Jack Dawson and his best friend Fabrizio De Rossi win third-class tickets to the ship in a game. And she explains the whole story from departure until the death of Titanic on its first and last voyage April 15th, 1912 at 2:20 in the morning.', to_date('11/18/1997', 'MM/DD/YYYY'), 194, 1, 'https://www.imdb.com/video/vi1740686617/?playlistId=tt0120338&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (27, 'Captain America: Civil War', 'Following the events of Age of Ultron, the collective governments of the world pass an act designed to regulate all superhuman activity. This polarizes opinion amongst the Avengers, causing two factions to side with Iron Man or Captain America, which causes an epic battle between former allies.', to_date('4/27/2016', 'MM/DD/YYYY'), 147, 1, 'https://www.imdb.com/video/vi174044441/?playlistId=tt3498820&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (28, 'Battleship', 'When mankind beams a radio signal into space, a reply comes from ‘Planet G’, in the form of several alien crafts that splash down in the waters off Hawaii. Lieutenant Alex Hopper is a weapons officer assigned to the USS John Paul Jones, part of an international naval coalition which becomes the world''s last hope for survival as they engage the hostile alien force of unimaginable strength. While taking on the invaders, Hopper must also try to live up to the potential his brother, and his fiancée''s father, Admiral Shane, expect of him.', to_date('4/11/2012', 'MM/DD/YYYY'), 131, 1, 'https://www.imdb.com/video/vi4081754393/?playlistId=tt1440129&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (29, 'Jurassic World', 'Twenty-two years after the events of Jurassic Park, Isla Nublar now features a fully functioning dinosaur theme park, Jurassic World, as originally envisioned by John Hammond.', to_date('6/9/2015', 'MM/DD/YYYY'), 124, 1, 'https://www.imdb.com/video/vi1176612889/?playlistId=tt0369610&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (30, 'Skyfall', 'When Bond''s latest assignment goes gravely wrong and agents around the world are exposed, MI6 is attacked forcing M to relocate the agency. These events cause her authority and position to be challenged by Gareth Mallory, the new Chairman of the Intelligence and Security Committee. With MI6 now compromised from both inside and out, M is left with one ally she can trust: Bond. 007 takes to the shadows - aided only by field agent, Eve - following a trail to the mysterious Silva, whose lethal and hidden motives have yet to reveal themselves.', to_date('10/25/2012', 'MM/DD/YYYY'), 143, 1, 'https://www.imdb.com/video/vi973841433/?playlistId=tt1074638&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (31, 'Spider-Man 2', 'Peter Parker is going through a major identity crisis. Burned out from being Spider-Man, he decides to shelve his superhero alter ego, which leaves the city suffering in the wake of carnage left by the evil Doc Ock. In the meantime, Parker still can''t act on his feelings for Mary Jane Watson, a girl he''s loved since childhood.', to_date('6/25/2004', 'MM/DD/YYYY'), 127, 1, 'https://www.imdb.com/video/vi629801241/?playlistId=tt0316654&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (32, 'Iron Man 3', 'When Tony Stark''s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.', to_date('4/18/2013', 'MM/DD/YYYY'), 130, 1, 'https://www.imdb.com/video/vi2830738969/?playlistId=tt1300854&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (33, 'Alice in Wonderland', 'Alice, an unpretentious and individual 19-year-old, is betrothed to a dunce of an English nobleman. At her engagement party, she escapes the crowd to consider whether to go through with the marriage and falls down a hole in the garden after spotting an unusual rabbit. Arriving in a strange and surreal place called ''Underland,'' she finds herself in a world that resembles the nightmares she had as a child, filled with talking animals, villainous queens and knights, and frumious bandersnatches. Alice realizes that she is there for a reason – to conquer the horrific Jabberwocky and restore the rightful queen to her throne.', to_date('3/3/2010', 'MM/DD/YYYY'), 108, 1, 'https://www.imdb.com/video/vi975438873/?playlistId=tt1014759&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (34, 'X-Men: The Last Stand', 'When a cure is found to treat mutations, lines are drawn amongst the X-Men and The Brotherhood, a band of powerful mutants organized under Xavier''s former ally, Magneto.', to_date('5/24/2006', 'MM/DD/YYYY'), 104, 1, 'https://www.imdb.com/video/vi3890348313/?playlistId=tt0376994&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (35, 'Monsters University', 'A look at the relationship between Mike and Sulley during their days at Monsters University — when they weren''t necessarily the best of friends.', to_date('6/20/2013', 'MM/DD/YYYY'), 104, 1, 'https://www.imdb.com/video/vi2206049817/?playlistId=tt1453405&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (36, 'Transformers: Revenge of the Fallen', 'Sam Witwicky leaves the Autobots behind for a normal life. But when his mind is filled with cryptic symbols, the Decepticons target him and he is dragged back into the Transformers'' war.', to_date('6/19/2009', 'MM/DD/YYYY'), 150, 1, 'https://www.imdb.com/video/vi2982019609/?playlistId=tt1055369&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (37, 'Transformers: Age of Extinction', 'As humanity picks up the pieces, following the conclusion of "Transformers: Dark of the Moon," Autobots and Decepticons have all but vanished from the face of the planet. However, a group of powerful, ingenious businessman and scientists attempt to learn from past Transformer incursions and push the boundaries of technology beyond what they can control - all while an ancient, powerful Transformer menace sets Earth in his cross-hairs.', to_date('6/25/2014', 'MM/DD/YYYY'), 165, 1, 'https://www.imdb.com/video/vi3138759961/?playlistId=tt2109248&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (38, 'Oz: The Great and Powerful', 'Oscar Diggs, a small-time circus illusionist and con-artist, is whisked from Kansas to the Land of Oz where the inhabitants assume he''s the great wizard of prophecy, there to save Oz from the clutches of evil.', to_date('3/7/2013', 'MM/DD/YYYY'), 130, 1, 'https://www.imdb.com/video/vi3322455833/?playlistId=tt1623205&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (39, 'The Amazing Spider-Man 2', 'For Peter Parker, life is busy. Between taking out the bad guys as Spider-Man and spending time with the person he loves, Gwen Stacy, high school graduation cannot come quickly enough. Peter has not forgotten about the promise he made to Gwen’s father to protect her by staying away, but that is a promise he cannot keep. Things will change for Peter when a new villain, Electro, emerges, an old friend, Harry Osborn, returns, and Peter uncovers new clues about his past.', to_date('4/16/2014', 'MM/DD/YYYY'), 142, 1, 'https://www.imdb.com/video/vi717595161/?playlistId=tt0948470&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (40, 'TRON: Legacy', 'Sam Flynn, the tech-savvy and daring son of Kevin Flynn, investigates his father''s disappearance and is pulled into The Grid. With the help of a mysterious program named Quorra, Sam quests to stop evil dictator Clu from crossing into the real world.', to_date('12/10/2010', 'MM/DD/YYYY'), 125, 1, 'https://www.imdb.com/video/vi4134312217/?playlistId=tt1104001&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (41, 'Cars 2', 'Star race car Lightning McQueen and his pal Mater head overseas to compete in the World Grand Prix race. But the road to the championship becomes rocky as Mater gets caught up in an intriguing adventure of his own: international espionage.', to_date('6/11/2011', 'MM/DD/YYYY'), 106, 1, 'https://www.imdb.com/video/vi1822465049/?playlistId=tt1216475&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (42, 'Green Lantern', 'For centuries, a small but powerful force of warriors called the Green Lantern Corps has sworn to keep intergalactic order. Each Green Lantern wears a ring that grants him superpowers. But when a new enemy called Parallax threatens to destroy the balance of power in the Universe, their fate and the fate of Earth lie in the hands of the first human ever recruited.', to_date('6/16/2011', 'MM/DD/YYYY'), 114, 1, 'https://www.imdb.com/video/vi3445005593/?playlistId=tt1133985&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (43, 'Toy Story 3', 'Woody, Buzz, and the rest of Andy''s toys haven''t been played with in years. With Andy about to go to college, the gang find themselves accidentally left at a nefarious day care center. The toys must band together to escape and return home to Andy.', to_date('6/16/2010', 'MM/DD/YYYY'), 103, 1, 'https://www.imdb.com/video/vi3676898329/?playlistId=tt0435761&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (44, 'Terminator Salvation', 'All grown up in post-apocalyptic 2018, John Connor must lead the resistance of humans against the increasingly dominating militaristic robots. But when Marcus Wright appears, his existence confuses the mission as Connor tries to determine whether Wright has come from the future or the past -- and whether he''s friend or foe.', to_date('5/20/2009', 'MM/DD/YYYY'), 115, 1, 'https://www.imdb.com/video/vi360907545/?playlistId=tt0438488&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (45, 'Furious 7', 'Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.', to_date('4/1/2015', 'MM/DD/YYYY'), 137, 1, 'https://www.imdb.com/video/vi4285973785/?playlistId=tt2820852&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (46, 'World War Z', 'Life for former United Nations investigator Gerry Lane and his family seems content. Suddenly, the world is plagued by a mysterious infection turning whole human populations into rampaging mindless zombies. After barely escaping the chaos, Lane is persuaded to go on a mission to investigate this disease. What follows is a perilous trek around the world where Lane must brave horrific dangers and long odds to find answers before human civilization falls.', to_date('6/20/2013', 'MM/DD/YYYY'), 116, 1, 'https://www.imdb.com/video/vi3616319001/?playlistId=tt0816711&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (47, 'X-Men: Days of Future Past', 'The ultimate X-Men ensemble fights a war for the survival of the species across two time periods as they join forces with their younger selves in an epic battle that must change the past – to save our future.', to_date('5/15/2014', 'MM/DD/YYYY'), 131, 1, 'https://www.imdb.com/video/vi3858345241/?playlistId=tt1877832&ref_=tt_pr_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (48, 'Star Trek Into Darkness', 'When the crew of the Enterprise is called back home, they find an unstoppable force of terror from within their own organization has detonated the fleet and everything it stands for, leaving our world in a state of crisis. With a personal score to settle, Captain Kirk leads a manhunt to a war-zone world to capture a one man weapon of mass destruction. As our heroes are propelled into an epic chess game of life and death, love will be challenged, friendships will be torn apart, and sacrifices must be made for the only family Kirk has left: his crew.', to_date('5/5/2013', 'MM/DD/YYYY'), 132, 1, 'https://www.imdb.com/video/vi410167577/?playlistId=tt1408101&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (49, 'Jack the Giant Slayer', 'The story of an ancient war that is reignited when a young farmhand unwittingly opens a gateway between our world and a fearsome race of giants. Unleashed on the Earth for the first time in centuries, the giants strive to reclaim the land they once lost, forcing the young man, Jack into the battle of his life to stop them. Fighting for a kingdom, its people, and the love of a brave princess, he comes face to face with the unstoppable warriors he thought only existed in legend–and gets the chance to become a legend himself.', to_date('2/27/2013', 'MM/DD/YYYY'), 114, 1, 'https://www.imdb.com/video/vi830449433/?playlistId=tt1351685&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (50, 'The Great Gatsby', 'An adaptation of F. Scott Fitzgerald''s Long Island-set novel, where Midwesterner Nick Carraway is lured into the lavish world of his neighbor, Jay Gatsby. Soon enough, however, Carraway will see through the cracks of Gatsby''s nouveau riche existence, where obsession, madness, and tragedy await.', to_date('5/10/2013', 'MM/DD/YYYY'), 143, 1, 'https://www.imdb.com/video/vi2949817881/?playlistId=tt1343092&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (51, 'Prince of Persia: The Sands of Time', 'A rogue prince reluctantly joins forces with a mysterious princess and together, they race against dark forces to safeguard an ancient dagger capable of releasing the Sands of Time – gift from the gods that can reverse time and allow its possessor to rule the world.', to_date('5/19/2010', 'MM/DD/YYYY'), 116, 1, 'https://www.imdb.com/video/vi3849520153/?playlistId=tt0473075&ref_=tt_ov_vi', 2);


INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (53, 'The Others', 'A woman who lives in her old, dark family home with her two photosensitive children becomes convinced that the house is haunted.', to_date('8/2/2001', 'MM/DD/YYYY'), 104, 1, 'https://www.imdb.com/video/vi3201343001/?playlistId=tt0230600&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (54, 'Episode 1', 'Richard Gadd plays Donny, a failing London comedian who gets entangled with a relentless stalker named Martha.', to_date('4/11/2024', 'MM/DD/YYYY'), 30, 1, 'https://www.imdb.com/video/vi2745026073/?playlistId=tt13649112&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (55, 'Episode 2', 'On a date with Teri, Donny opens up about his stalker. Trying to be kind, he gives Martha false hope, which only encourages her further.', to_date('4/11/2024', 'MM/DD/YYYY'), 30, 1, 'https://www.imdb.com/video/vi2745026073/?playlistId=tt13649112&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (56, 'Episode 3', 'Donny takes some time off from the pub and tries to make amends with Teri. But no matter how much he avoids Martha, he just can''t escape from her for long.', to_date('4/11/2024', 'MM/DD/YYYY'), 30, 1, 'https://www.imdb.com/video/vi2745026073/?playlistId=tt13649112&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (57, 'Episode 4', 'As Donny reports Martha to the police, it triggers the memory of a traumatic experience he had with a man, Darrien, who he met at the Edinburgh Fringe Festival years before.', to_date('4/11/2024', 'MM/DD/YYYY'), 30, 1, 'https://www.imdb.com/video/vi2745026073/?playlistId=tt13649112&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (58, 'Episode 5', 'Liz learns the truth about Martha and asks Donny to move out of the house. It is looking like a fresh start for him and Teri, but his persistent memories are stopping them from getting truly close.', to_date('4/11/2024', 'MM/DD/YYYY'), 30, 1, 'https://www.imdb.com/video/vi2745026073/?playlistId=tt13649112&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (59, 'Episode 6', 'Martha finds new ways to get to Donny: by hurting the people he loves. With frustration building as the police fail to intervene, he riskily takes matters into his own hands.', to_date('4/11/2024', 'MM/DD/YYYY'), 30, 1, 'https://www.imdb.com/video/vi2745026073/?playlistId=tt13649112&ref_=tt_ov_vi', 2);

INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (60, 'Episode 7', 'For the first time in his career, Donny feels like he''s getting somewhere. Until he makes one careless decision that allows Martha to explode back into his life.', to_date('4/11/2024', 'MM/DD/YYYY'), 30, 1, 'https://www.imdb.com/video/vi2745026073/?playlistId=tt13649112&ref_=tt_ov_vi', 2);


INSERT INTO PRODUCTION (ID, TITLE, SYNOPSIS, AIRDATE, RUN_TIME, IS_PUBLIC, TRAILER, CREATED_BY) 
VALUES (61, 'Maid in Manhattan', 'A Senatorial candidate falls for a hotel maid, thinking she is a socialite, when he sees her trying on a wealthy womans dress.', to_date('12/13/2002', 'MM/DD/YYYY'), 30, 1, 'https://www.imdb.com/video/vi3935764761/?playlistId=tt0252076&ref_=tt_pr_ov_vi', 2);


DROP SEQUENCE s_production;

CREATE SEQUENCE s_production
start with 63
increment by 1
minvalue 1
maxvalue 9999
cache 2
order
nocycle;