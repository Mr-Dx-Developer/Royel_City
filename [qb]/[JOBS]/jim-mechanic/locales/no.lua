Loc = Loc or {}

Loc["no"] = {
	common = { --commonly used strings
		owned = "Kjøretøyet er ikke eid, kan ikke modifiseres",
		close = "Lukk",
		ret = "Returner",
		stock = "Lager", -- Default, Original, whatever word you use for this
		current = "Allerede montert",
		noOptions = "Ingen alternativer for denne gjenstanden",
		notinstall = "Ikke montert",
		installing = "Monterer",
		installed = "Montert!",
		instfail = " klarte ikke å montere!",
		removed = "Demontert!",
		removing = "Demonterer ",
		remfail = " klarte ikke å demontere!",
		cant = "Kan ikke bli montert på dette kjøretøyet",
		amountoption = "Tilgjengelige alternativer: ",
		already = " allerede montert", -- eg. "Orginal støtdemper allerede montert"
		menuinstalled = " Options] Installed: ", --eg "[4 Options] Installed: Grille 1"
		nearwheel = "Du må gå nærmere et av hjul",
		nearengine = "Du må gå nærmere motorrommet",
		closer = "Du må gå nærmere lyktene",
		harness = "Fester racingsele..",
	},
    progressbar = {
        progress_washing = "Washing hands",
        progress_mix = "Mixing a ",
        progress_pour = "Pouring a ",
        progress_drink = "Drinking a ",
        progress_eat = "Eating a ",
        progress_make = "Making a ",
    },
	error = {
		not_clockedin = "Not On Duty",
		cancelled = "Cancelled",
	},
	tires = {
		swap = "Skuddsikredekk fjernet!",
		swap2 = "Driftedekk fjernet!",
	},
	xenons = {
		notinstall = "Xenon lys ikke installert",
		--Menus
		neonheader1 = "Lyskontroller",
		neonheader2 = "Underglow lyskontroller",
		neonheader3 = "Underglow fargekontroller",
		neonheader4 = "Xenon lys kontroller",
		customheader = "Valgfri RBG",
		customconfirm = "LEGG TIL",
		neontxt1 = "Finjustering av neonLys",
		toggle = "Slå på alle",
		front = "Foran",
		right = "Høyre",
		left = "Venstre",
		back = "Bak",
		neontxt2 = "Endre Underglow Farge",
		xenonheader = "Xenon kontroller",
		xenontxt = "Juster kjøretøyets hovedlys farge",
	},
	--Cosmetic Items
	bumpers = {
		menugrille = "Grill",
		menuFBumper = "Frontfanger",
		menuBBumper = "Bakfanger",
	},
	exhaust = {
		menuheader = " Eksos Modifisering",
	},
	exterior = {
		stockMod = "Orginal ekteriør..",

		label1 = "Ekstrautstyr A",
		label2 = "Ekstrautstyr B",
		label3 = "Bagasjerom",
		label4 = "Motorblokk",
		label5 = "Filter",
		label6 = "Fjærbein",
		label7 = "Hydraulikk",
		label8 = "Motordeksel",
		label9 = "Drivstofftanker",
		label10 = "Ekstrautstyr C",
	},
	hood = {
		menuheader = " Panser Modifikasjon",
	},
	horns = {
		menuheader = " Hornlyd",
	},
	interior = {
		label1 = "Rullebur",
		label2 = "Ornamenter",
		label3 = "Dashboard",
		label4 = "Bryter",
		label5 = "Dør Høytallere",
		label6 = "Ratt",
		label7 = "Girspak",
		label8 = "Pyntedilldall",
		label9 = "Høytallere",
	},
	livery = {
		oldMod = "gammel",
		menuheader = " Foliering",
		menuoldheader = " Tak Foliering",
	},
	nos = {
		notinstalled = "Turbo er ikke installert",

		nosColour = "NOS Farge",
		boostmode = "Boost Modus",
		purgemode = "Spray Modus",
		boost = "Boost Styrke: ",
		spray = "Spray Styrke: ",
	},
	paint = {
		primary = "Primær",
		secondary = "Sekundær",
		pearl = "Perleskimrende",
		wheel = "Felg",
		dashboard = "Dashbord",
		interior = "Interiør",

		classic = "Vanlig lakk",
		metallic = "Metallic lakk",
		matte = "Matt lakk",
		metals = "Metall lakk",
		chameleon = "Kameleon lakk",

		menuheader = " Omlakker",
	},
	paintrgb = {
		select = "Utvalg:",
		finish = "Fullfør valg:",
		error = "Hex kode må være 6 teng",
		customheader = "Tilpasset HEX og RGB",
		chrome = "Krom",
		hexP = "HEX Velger",
		rgbP = "RGB Velger",
	},
	plates = { --paints.lua
		label1 = "Skilt",
		label2 = "Personligskilt",
		label3 = "Spesial Skilt",
	},
	rims = {
		menuheader = "Felg Modifikasjon",

		label1 = "Sport",
		label2 = "Muskel",
		label3 = "Lowrider",
		label4 = "SUV",
		label5 = "Terreng",
		label6 = "JDM felger",
		label7 = "Premium",
		label8 = "Danny's Originale",
		label9 = "Danny's Støpte",
		label10 = "Formel1",
		label11 = "OZ felger",
		label12 = "Bane",
		label13 = "Forhjul",
		label14 = "Bakhjul",
		label15 = "Motorsykkel",

		labelcustom = "Spesial felger",
	},
	rollcage = {
		menuheader = " Rullebur Modifikasjoner",
	},
	roof = {
		menuheader = " Tak Modifikasjoner",
	},
	seat = {
		menuheader = " Sete Modifikasjoner",
	},
	skirts = {
		menuskirt = "Sideskjørt",
		menuRF = "Høyre hjulbue",
		menuLF = "Venstre hjulbue",
	},
	spoilers = {
		menuheader = " Spoiler Modifikasjoner",
	},
	smoke = {
		already = "Denne fargen er allerede valgt!",
		menuheader = " Dekkrøyk Modifikasjon",

		remove = "Fjern Røyk",
		custom = " Tilpasset RBG",
		black = "Svart",
		white = "Hvit",
		blue = "Blå",
		eblue = "Elektrisk Blå",
		mgreen = "Mint Grønn",
		lgreen = "Lime Grønn",
		yellow = "Gul",
		gshower = "Gylden Gul",
		orange = "Oransje",
		red = "Rød",
		ppink = "Rosa",
		hpink = "Neon Rosa",
		purple = "Lilla",
		blacklight = "Fiolett",
	},
	windows = {
		menuheader = " Vindus Sot",
	},
	stores = {
		browse = "Bla gjennom katalogen",
		tools = "Verktøy",
		perform = "Ytelses Deler",
		cosmetic = "Kosmetiske Deler",
		repairs = "Reparer Gjenstander",
		nos = "NOS",
	},
	crafting = {
		menuheader = "Mekaniker Produkter",
		toolheader = "Verktøy",
		repairheader = "Reparer Gjenstander",
		performheader = "Ytelses Deler",
		cosmetheader = "Kosmetiske Deler",
		nosheader = "NOS",
		numitems = " items", --for menu. eg. "11 items"
	},
	payments = {
		charge = "Send Faktura",
	},
	check = {
		plate = "Skilt:",
		value = "Verdi: kr",
		unavail = "❌ Utilgjengelig",

		label1 = "Motorer:",
		label2 = "Bremser:",
		label3 = "Fjæring:",
		label4 = "Girkasse:",
		label5 = "Armor:",
		label6 = "Turbo:",
		label7 = "Xenon:",
		label8 = "Driftedekk",
		label9 = "Skuddsikre Dekk:",
		label10 = "Tilgjengelige Kosmetikk",
		label11 = "Kjøretøy: ",

		label12 = "Alternativer",
		label13 = "Eksteriør Kosmetikk -",
		label14 = "Interiør Kosmetikk - ",
		label15 = "Spoilere - [ ",
		label16 = "Frontfanger - [ ",
		label17 = "Bakfanger - [ ",
		label18 = "Sideskjørt- [ ",
		label19 = "Eksos - [ ",
		label20 = "Grill - [ ",
		label21 = "Panser - [ ",
		label22 = "Venstre Hjulbue - [ ",
		label23 = "Høyre Hjulbue - [ ",
		label24 = "Tak - [ ",
		label25 = "Skilt - [ ",
		label26 = "Personligskilt - [ ",
		label27 = "Ekstrautstyr A - [ ",
		label28 = "Ekstrautstyr B - [ ",
		label29 = "Bagasjerom - [ ",
		label30 = "Motorblokk - [ ",
		label31 = "Luft Filter - [ ",
		label32 = "Motorstøtte - [ ",
		label33 = "Motordeksel - [ ",

		label34 = "Rullebur - [ ",
		label35 = "Ornamenter - [ ",
		label36 = "Dashbord - [ ",
		label37 = "Bryter - [ ",
		label38 = "Dør Høytallere - [ ",
		label39 = "Seter - [ ",
		label40 = "Ratt - [ ",
		label41 = "Girspak - [ ",
		label42 = "Pyntedilldall - [ ",
		label43 = "Høytallere - [ ",
		label44 = "Hydraulikk - [ ",
		label45 = "Ekstrautstyr C - [ ",
		label46 = "Drivstofftanker - [ ",
		label47 = "Ja",
		label48 = "Nei",
		label49 = "Vil du fjerne ",
		label50 = "Antilag:",
		label51 = "Belte:",
		label58 = "Nitro:",
	},
	repair = {
		browse = "Se gjennom lager",
		materials = "Du har ikke nok materialer",
		checkeng = "Sjekker Motorskade..",
		checkbody = "Sjekker Karosseriskade..",

		engine = "Motor",
		body = "Karosseri",
		oil = "Oljenivå",
		driveshaft = "Drivaskel",
		spark = "Tennplugger",
		battery = "Bilbatteri",
		tank = "Drivstofftank",
		replacetire = "Skifte Dekk",
		tire = "Felger",

		repairing = "Reparerer ",
		changing = "Bytter ",
		repaired = " ferdig reparert ",
		cancel = " Reparasjon Kansellert!",
		nomaterials = "Det er ikke nok materialer på lager",

		cost = "Kostnad: ",
		status = "Status: ",
		doyou = "Vil du reparere ",

		applyduct = "Monterer Gaffateip..",
		ductfull = "Du kan ikke bruke mer gaffateip, dra til et verksted!",
		nocar = "Det er ingen kjøretøy i nærheten",
	},
	police = {
		header = "Arbeidsbenk",
		userepair = "Bruk Arbeidsbenk",
		repair = "Reparer",
		extras = "Ekstra",
		plates = "Skilt",
		livery = "Foliering",
		spoiler = "Spoiler",
		cleaning = "Vasker Kjøretøy..",
		engine = "Reparerer Motor...",
		body = "Reparerer Karosseri...",
		complete = "Ferdig Reparert",
	},
	manual = {
		tyres = "Bytte Ødelagte Dekk",
		window = "Fjerne Knuste Ruter",
		doors = "Reparerer Dører",
	},
	carwax = {
		head1 = "Vask Kjøretøy",
		head2 = "Vask og Voks",
		head3 = "Vask og Polering",
		head4 = "Vask og Lakkforsegling",
	},
	extras = {
		clean = "Rengjøring Av Kjøretøy",
		doorerr = "Dørfeil",
		locked = "Kjøretøy Låst",
		flipping = "Snur Kjøretøy",
		flipped = "Kjøretøy Flippet!",
		failed = "Flipping Av Kjøretøy Feilet!",
		noseat = "Ingen sete valgt",
		moveseat = "You move to seat ",
		fastseat = "Kjøretøyet går for fort...",
		notseat = "Dette setet er opptatt..",
		harness = "Du har på racingsele, så du kan ikke bytte..",
	},
	functions = {
		distance = "Distanse: ",
		inCar = "Du må gå ut av kjøretøyet",
		outCar = "Du må gå inn i kjøretøyet",
		locked = "Kjøretøyet Er Låst",
		nearby = "Det er ingen kjøretøy i nærheten",
		shop = "Du må være på et verksted",
		mechanic = "Kun en mekaniker kan fikse dette",
		checking = "Sjekker lager.."
	},
	servfunction = {
		checkdamage = "Sjekk kjøretøy for skade",
		checkmods = "Sjekk tilgjengelige modifikasjoner",
		flipvehicle = "Snu nærmeste kjøretøy",
		togglesound = "Aktiver oppgraderte motorlyder",
		togglesoundesc = "Skru oppgraderte motorlyder PÅ eller AV",
		cleancar = "Vask Bilen",
		hood = "Åpne/Lukke Panser",
		trunk = "Åpne/Lukke Bagasjerom",
		door = "Åpne/Lukke Dør [0-3]",
		seat = "Bytt til et annet sete [-1 to 10]",
	},
	previews = {
		changes = "Antall endringer: ",
		previewing = "Kan ikke gjøre dette mens du forhåndsvises",
		},
		stancer = {
			wheel_lf = "Venstre forhjulet",
			wheel_rf = "Høyre forhjul",
			wheel_lr = "Venstre bakhjul",
			wheel_rr = "Høyre bakhjul",
			wheel_lm1 = "Venstre midt (1) hjul",
			wheel_rm1 = "Høyre midt (1) hjul",
			wheel_lm2 = "Venstre midt (2) hjul",
			wheel_rm2 = "Høyre midt (2) hjul",
			wheel_lm3 = "Venstre midt (3) hjul",
			wheel_rm3 = "Høyre midt (3) hjul",
			spacer = "Spacer",
			camber = "Camber",
			width = "Bredde",
			size = "Størrelse",
			suspens = "Suspensjonsjustering",
			stance = "Stance",
			reset = "Tilbakestill hjul",
	},
	--Below are names of items/mods that can't be reteived natively
	vehicleWindowOptions = {
		{ name = "50 % Sot", id = 4 },
		{ name = "Grønn", id = 5 },
		{ name = "35 % Sot", id = 3 },
		{ name = "20 % Sot", id = 2 },
		{ name = "5 % Sot", id = 1 }
	},
	vehiclePlateOptions = {
		{ name = "Blå på hvit", id = 3 },
		{ name = "SA EXEMPT", id = 4 },
		{ name = "Oransje på hvit", id = 2 },
		{ name = "Gul på hvit", id = 1 },
		{ name = "Svart på hvit", id = 5 },
	},
	vehicleNeonOptions = {
		{ name = "Hvit", R = 255, G = 255, B = 255 },
        { name = "Blå", R = 2, G = 21, B = 255 },
        { name = "Elektrisk Blå", R = 3, G = 83, B = 255 },
        { name = "Mint Grønn", R = 0, G = 255, B = 140 },
        { name = "Lime Grønn", R = 94, G = 255, B = 1 },
        { name = "Gul", R = 255, G = 255, B = 0 },
        { name = "Gylden Gul", R = 255, G = 150, B = 0 },
        { name = "Oransje", R = 255, G = 62, B = 0 },
        { name = "Rød", R = 255, G = 1, B = 1 },
        { name = "Rosa", R = 255, G = 50, B = 100 },
        { name = "Neon Rosa", R = 255, G = 5, B = 190 },
        { name = "Lilla", R = 35, G = 1, B = 255 },
        { name = "Fiolett", R = 15, G = 3, B = 255 }
	},
	vehicleHorns = {
		{ name = "Trailer Horn", id = 0 },
		{ name = "Politi Horn", id = 1 },
		{ name = "Klovne Horn", id = 2 },
		{ name = "Musikalsk Horn 1", id = 3 },
		{ name = "Musikalsk Horn 2", id = 4 },
		{ name = "Musikalsk Horn 3", id = 5 },
		{ name = "Musikalsk Horn 4", id = 6 },
		{ name = "Musikalsk Horn 5", id = 7 },
		{ name = "Trombone Horn", id = 8 },
		{ name = "Klassisk Horn 1", id = 9 },
		{ name = "Klassisk Horn 2", id = 10 },
		{ name = "Klassisk Horn 3", id = 11 },
		{ name = "Klassisk Horn 4", id = 12 },
		{ name = "Klassisk Horn 5", id = 13 },
		{ name = "Klassisk Horn 6", id = 14 },
		{ name = "Klassisk Horn 7", id = 15 },
		{ name = "Skale - Do", id = 16 },
		{ name = "Skale - Re", id = 17 },
		{ name = "Skale - Mi", id = 18 },
		{ name = "Skale - Fa", id = 19 },
		{ name = "Skale - Sol", id = 20 },
		{ name = "Skale - La", id = 21 },
		{ name = "Skale - Ti", id = 22 },
		{ name = "Skale - Do", id = 23 },
		{ name = "Jazz Horn 1", id = 24 },
		{ name = "Jazz Horn 2", id = 25 },
		{ name = "Jazz Horn 3", id = 26 },
		{ name = "Jazz Horn Loop", id = 27 },
		{ name = "USA Nasjonalsang 1", id = 28 },
		{ name = "USA Nasjonalsang 2", id = 29 },
		{ name = "USA Nasjonalsang 3", id = 30 },
		{ name = "USA Nasjonalsang 4", id = 31 },
		{ name = "Klassisk Horn 8 Loop", id = 32 },
		{ name = "Klassisk Horn 9 Loop", id = 33 },
		{ name = "Klassisk Horn 10 Loop", id = 34 },
		{ name = "Klassisk Horn 8", id = 35 },
		{ name = "Klassisk Horn 9", id = 36 },
		{ name = "Klassisk Horn 10", id = 37 },
		{ name = "Begravelse Loop", id = 38 },
		{ name = "Begravelse", id = 39 },
		{ name = "Skummel Loop", id = 40 },
		{ name = "Skummel", id = 41 },
		{ name = "San Andreas Loop", id = 42 },
		{ name = "San Andreas", id = 43 },
		{ name = "Liberty City Loop", id = 44 },
		{ name = "Liberty City", id = 45 },
		{ name = "Festlig 1 Loop", id = 46 },
		{ name = "Festlig 1", id = 47 },
		{ name = "Festlig 2 Loop", id = 48 },
		{ name = "Festlig 2", id = 49 },
		{ name = "Festlig 3 Loop", id = 50 },
		{ name = "Festlig 3", id = 51 },
		{ name = "Air Horn 1 Loop", id = 52},
		{ name = "Air Horn 1", id = 53},
		{ name = "Air Horn 2 Loop", id = 54},
		{ name = "Air Horn 2", id = 55},
		{ name = "Air Horn 3 Loop", id = 56},
		{ name = "Air Horn 3", id = 57},
	},
	vehicleResprayOptionsClassic = {
		{ name = "Svart", id = 0 },
		{ name = "Karbon Svart", id = 147 },
		{ name = "Grafitt", id = 1 },
		{ name = "Ankrasitt Svart", id = 11 },
		{ name = "Svart Stål", id = 2 },
		{ name = "Mørkt Stål", id = 3 },
		{ name = "Sølv", id = 4 },
		{ name = "Blålig Sølv", id = 5 },
		{ name = "Valset Stål", id = 6 },
		{ name = "Skygge Sølv", id = 7 },
		{ name = "Stein Sølv", id = 8 },
		{ name = "Midnatt Sølv", id = 9 },
		{ name = "Støpejern Sølv", id = 10 },
		{ name = "Rød", id = 27 },
		{ name = "Torino Rød", id = 28 },
		{ name = "Formel Rød", id = 29 },
		{ name = "Lava Rød", id = 150 },
		{ name = "Blink Rød", id = 30 },
		{ name = "Eple Rød", id = 31 },
		{ name = "Granat Rød", id = 32 },
		{ name = "Rødoransje", id = 33 },
		{ name = "Vinrød", id = 34 },
		{ name = "Midnatt Rød", id = 143 },
		{ name = "Lollipop Rød", id = 35 },
		{ name = "Neon Rosa", id = 135 },
		{ name = "Baby Rosa", id = 137 },
		{ name = "Lakse Rosa", id = 136 },
		{ name = "Appelsin ", id = 36 },
		{ name = "Oransje", id = 38 },
		{ name = "Lys Oransje", id = 138 },
		{ name = "Gull", id = 99 },
		{ name = "Bronse", id = 90 },
		{ name = "Gul", id = 88 },
		{ name = "Racing Gul", id = 89 },
		{ name = "Neon Gul", id = 91 },
		{ name = "Mørke Grønn", id = 49 },
		{ name = "Racing Grønn", id = 50 },
		{ name = "Sjø Grønn", id = 51 },
		{ name = "Oliven Grønn", id = 52 },
		{ name = "Lysegrønn", id = 53 },
		{ name = "Petrol", id = 54 },
		{ name = "Lime Grønn", id = 92 },
		{ name = "Midnatt Blå", id = 141 },
		{ name = "Galakse Blå", id = 61 },
		{ name = "Mørkeblå", id = 62 },
		{ name = "Saksisk Blå", id = 63 },
		{ name = "Blå", id = 64 },
		{ name = "Marine Blå", id = 65 },
		{ name = "Sølvblå", id = 66 },
		{ name = "Diamant Blå", id = 67 },
		{ name = "Sjøblå", id = 68 },
		{ name = "Mystisk Blå", id = 69 },
		{ name = "Racing Blå", id = 73 },
		{ name = "Ultra Blå", id = 70 },
		{ name = "Lyseblå", id = 74 },
		{ name = "Brun", id = 96 },
		{ name = "Bison Brun", id = 101 },
		{ name = "Gullbrun", id = 95 },
		{ name = "Rustenbrun", id = 94 },
		{ name = "Trebrun", id = 97 },
		{ name = "Sjokolade Brun", id = 103 },
		{ name = "Sienna Brun", id = 104 },
		{ name = "Sal Brun", id = 98 },
		{ name = "Mose Brun", id = 100 },
		{ name = "Brunbeige", id = 102 },
		{ name = "Stråbrun", id = 99 },
		{ name = "Sand", id = 105 },
		{ name = "Eggehvit", id = 106 },
		{ name = "Lilla", id = 71 },
		{ name = "Blåbær", id = 72 },
		{ name = "Midnatt Lilla", id = 142 },
		{ name = "Lyselilla", id = 145 },
		{ name = "Krem", id = 107 },
		{ name = "Ishvit", id = 111 },
		{ name = "Frost Hvit", id = 112 },
	},
	vehicleResprayOptionsMatte = {
		{ name = "Svart", id = 12 },
		{ name = "Grå", id = 13 },
		{ name = "Lysegrå", id = 14 },
		{ name = "Ishvit", id = 131 },
		{ name = "Blå", id = 83 },
		{ name = "Mørkeblå", id = 82 },
		{ name = "Midnatt Blå", id = 84 },
		{ name = "Midnatt Lilla", id = 149 },
		{ name = "Lilla", id = 148 },
		{ name = "Rød", id = 39 },
		{ name = "Mørkerød", id = 40 },
		{ name = "Oransje", id = 41 },
		{ name = "Gul", id = 42 },
		{ name = "Lime Grønn", id = 55 },
		{ name = "Grønn", id = 128 },
		{ name = "Skog Grønn", id = 151 },
		{ name = "Grønn Te", id = 155 },
		{ name = "Oliven", id = 152 },
		{ name = "Jord", id = 153 },
		{ name = "Sand", id = 154 },
	},
	vehicleResprayOptionsMetals = {
		{ name = "Børstet Stål", id = 117 },
		{ name = "Børstet Svart Stål", id = 118 },
		{ name = "Børstet Aluminium", id = 119 },
		{ name = "Rent Gull", id = 158 },
		{ name = "Børstet Gull", id = 159 },
		{ name = "Krom", id = 120 },
	},
	vehicleResprayOptionsChameleon = {
		{ name = "Anodisert Rød", id = 161 },
		{ name = "Anodisert Vinrød", id = 162 },
		{ name = "Anodisert Lilla", id = 163 },
		{ name = "Anodisert Blå", id = 164 },
		{ name = "Anodisert Grønn", id = 165 },
		{ name = "Anodisert Lime", id = 166 },
		{ name = "Anodisert Kobber", id = 167 },
		{ name = "Anodisert Bronse", id = 168 },
		{ name = "Anodisert Champagne", id = 169 },
		{ name = "Anodisert Gull", id = 170 },
		{ name = "Grønn/Blå", id = 171 },
		{ name = "Grønn/Rød", id = 172 },
		{ name = "Grønn/Brun", id = 173 },
		{ name = "Grønn/Turkis", id = 174 },
		{ name = "Grønn/Lilla", id = 175 },
		{ name = "Blågrønn/Lilla", id = 176 },
		{ name = "Turkis/Rød", id = 177 },
		{ name = "Turkis/Lilla", id = 178 },
		{ name = "Cyan/Lilla", id = 179 },
		{ name = "Blå/Rosa", id = 180 },
		{ name = "Blå/Grønn", id = 181 },
		{ name = "Lilla/Rød", id = 182 },
		{ name = "Lilla/Grønn", id = 183 },
		{ name = "Magenta/Grønn", id = 184 },
		{ name = "Magenta/Gul", id = 185 },
		{ name = "Burgundy/Grønn", id = 186 },
		{ name = "Magenta/Cyan", id = 187 },
		{ name = "Kobber/Lilla", id = 188 },
		{ name = "Magenta/Oransje", id = 189 },
		{ name = "Rød/Oransje", id = 190 },
		{ name = "Oransje/Lilla", id = 191 },
		{ name = "Oransje/Blå", id = 192 },
		{ name = "Hvit/Lilla", id = 193 },
		{ name = "Rød/Regnbue", id = 194 },
		{ name = "Blå/Rengbue", id = 195 },
		{ name = "Mørkegrønn Perle", id = 196 },
		{ name = "Mørk Blågrønn Perle", id = 197 },
		{ name = "Mørkeblå Perlse", id = 198 },
		{ name = "Mørk Lilla Perle", id = 199 },
		{ name = "Oljeblank Perle", id = 200 },
		{ name = "Lysegrønn Perle", id = 201 },
		{ name = "Lyseblå Perle", id = 202 },
		{ name = "Lyselilla Perle", id = 203 },
		{ name = "Lyserosa Perle", id = 204 },
		{ name = "Eggehvit Perle", id = 205 },
		{ name = "Rosa Perle", id = 206 },
		{ name = "Gul Perle", id = 207 },
		{ name = "Grønn Perle", id = 208 },
		{ name = "Blå Perle", id = 209 },
		{ name = "Krem Perle", id = 210 },
		{ name = "Hvit Prismatisk", id = 211 },
		{ name = "Krafitt Prismatisk", id = 212 },
		{ name = "Mørkeblå Prismatisk", id = 213 },
		{ name = "Mørkelilla Prismatisk", id = 214 },
		{ name = "Neon Rosa Prismatisk", id = 215 },
		{ name = "Mørkerød Prismatisk", id = 216 },
		{ name = "Mørkegrønn Prismatisk", id = 217 },
		{ name = "Svart Prismatisk", id = 218 },
		{ name = "Regnbue", id = 219 },
		{ name = "Svart Regnbue", id = 220 },
		{ name = "Svart Holografisk", id = 221 },
		{ name = "Hvit Holografisk", id = 222 },
		{ name = "Monokrom", id = 223 },
		{ name = "Natt / Dag", id = 224 },
		{ name = "Lollipop", id = 225 },
		{ name = "Limegrønn", id = 226 },
		{ name = "Vice City", id = 227 },
		{ name = "Synthwave", id = 228 },
		{ name = "Årstider", id = 229 },
		{ name = "Hubbabubba", id = 230 },
		{ name = "Tyggegummi", id = 231 },
		{ name = "Full Regnbue", id = 232 },
		{ name = "Solnedgang", id = 233 },
		{ name = "Tie Dye", id = 234 },
		{ name = "Plomme På Crack", id = 235 },
		{ name = "Bubblizz", id = 236 },
		{ name = "Julaften", id = 237 },
		{ name = "Temperatur", id = 238 },
		{ name = "Fersken", id = 239 },
		{ name = "Elektro", id = 240 },
		{ name = "Gustavo", id = 241 },
		{ name = "Elegant", id = 242 }
	},
}