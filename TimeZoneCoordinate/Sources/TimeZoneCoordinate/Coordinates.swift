//
//  Coordinates.swift
//
//
//  Created by Jason Wray on 8/25/19.
//  Copyright © 2019 Jason Wray. All rights reserved.
//

import CoreLocation

/// TODO: Measure performance, investigate lazy loading, and potentially a different data structure
public let TimeZoneCoordinates: [String: (CLLocationDegrees, CLLocationDegrees)] = [
    "Europe/Andorra": (42.5, 1.517),
    "Asia/Dubai": (25.3, 55.3),
    "Asia/Kabul": (34.517, 69.2),
    "Europe/Tirane": (41.333, 19.833),
    "Asia/Yerevan": (40.183, 44.5),
    "Antarctica/Casey": (-66.283, 110.517),
    "Antarctica/Davis": (-68.583, 77.967),
    "Antarctica/DumontDUrville": (-66.667, 140.017),
    "Antarctica/Mawson": (-67.6, 62.883),
    "Antarctica/Palmer": (-64.8, -64.1),
    "Antarctica/Rothera": (-67.567, -68.133),
    "Antarctica/Syowa": (-69.006, 39.59),
    "Antarctica/Troll": (-72.011, 2.535),
    "Antarctica/Vostok": (-78.4, 106.9),
    "America/Argentina/Buenos_Aires": (-34.6, -58.45),
    "America/Argentina/Cordoba": (-31.4, -64.183),
    "America/Argentina/Salta": (-24.783, -65.417),
    "America/Argentina/Jujuy": (-24.183, -65.3),
    "America/Argentina/Tucuman": (-26.817, -65.217),
    "America/Argentina/Catamarca": (-28.467, -65.783),
    "America/Argentina/La_Rioja": (-29.433, -66.85),
    "America/Argentina/San_Juan": (-31.533, -68.517),
    "America/Argentina/Mendoza": (-32.883, -68.817),
    "America/Argentina/San_Luis": (-33.317, -66.35),
    "America/Argentina/Rio_Gallegos": (-51.633, -69.217),
    "America/Argentina/Ushuaia": (-54.8, -68.3),
    "Pacific/Pago_Pago": (-14.267, -170.7),
    "Europe/Vienna": (48.217, 16.333),
    "Australia/Lord_Howe": (-31.55, 159.083),
    "Antarctica/Macquarie": (-54.5, 158.95),
    "Australia/Hobart": (-42.883, 147.317),
    "Australia/Currie": (-39.933, 143.867),
    "Australia/Melbourne": (-37.817, 144.967),
    "Australia/Sydney": (-33.867, 151.217),
    "Australia/Broken_Hill": (-31.95, 141.45),
    "Australia/Brisbane": (-27.467, 153.033),
    "Australia/Lindeman": (-20.267, 149),
    "Australia/Adelaide": (-34.917, 138.583),
    "Australia/Darwin": (-12.467, 130.833),
    "Australia/Perth": (-31.95, 115.85),
    "Australia/Eucla": (-31.717, 128.867),
    "Asia/Baku": (40.383, 49.85),
    "America/Barbados": (13.1, -59.617),
    "Asia/Dhaka": (23.717, 90.417),
    "Europe/Brussels": (50.833, 4.333),
    "Europe/Sofia": (42.683, 23.317),
    "Atlantic/Bermuda": (32.283, -64.767),
    "Asia/Brunei": (4.933, 114.917),
    "America/La_Paz": (-16.5, -68.15),
    "America/Noronha": (-3.85, -32.417),
    "America/Belem": (-1.45, -48.483),
    "America/Fortaleza": (-3.717, -38.5),
    "America/Recife": (-8.05, -34.9),
    "America/Araguaina": (-7.2, -48.2),
    "America/Maceio": (-9.667, -35.717),
    "America/Bahia": (-12.983, -38.517),
    "America/Sao_Paulo": (-23.533, -46.617),
    "America/Campo_Grande": (-20.45, -54.617),
    "America/Cuiaba": (-15.583, -56.083),
    "America/Santarem": (-2.433, -54.867),
    "America/Porto_Velho": (-8.767, -63.9),
    "America/Boa_Vista": (2.817, -60.667),
    "America/Manaus": (-3.133, -60.017),
    "America/Eirunepe": (-6.667, -69.867),
    "America/Rio_Branco": (-9.967, -67.8),
    "America/Nassau": (25.083, -77.35),
    "Asia/Thimphu": (27.467, 89.65),
    "Europe/Minsk": (53.9, 27.567),
    "America/Belize": (17.5, -88.2),
    "America/St_Johns": (47.567, -52.717),
    "America/Halifax": (44.65, -63.6),
    "America/Glace_Bay": (46.2, -59.95),
    "America/Moncton": (46.1, -64.783),
    "America/Goose_Bay": (53.333, -60.417),
    "America/Blanc-Sablon": (51.417, -57.117),
    "America/Toronto": (43.65, -79.383),
    "America/Nipigon": (49.017, -88.267),
    "America/Thunder_Bay": (48.383, -89.25),
    "America/Iqaluit": (63.733, -68.467),
    "America/Pangnirtung": (66.133, -65.733),
    "America/Atikokan": (48.759, -91.622),
    "America/Winnipeg": (49.883, -97.15),
    "America/Rainy_River": (48.717, -94.567),
    "America/Resolute": (74.696, -94.829),
    "America/Rankin_Inlet": (62.817, -92.083),
    "America/Regina": (50.4, -104.65),
    "America/Swift_Current": (50.283, -107.833),
    "America/Edmonton": (53.55, -113.467),
    "America/Cambridge_Bay": (69.114, -105.053),
    "America/Yellowknife": (62.45, -114.35),
    "America/Inuvik": (68.35, -133.717),
    "America/Creston": (49.1, -116.517),
    "America/Dawson_Creek": (59.767, -120.233),
    "America/Fort_Nelson": (58.8, -122.7),
    "America/Vancouver": (49.267, -123.117),
    "America/Whitehorse": (60.717, -135.05),
    "America/Dawson": (64.067, -139.417),
    "Indian/Cocos": (-12.167, 96.917),
    "Europe/Zurich": (47.383, 8.533),
    "Africa/Abidjan": (5.317, -4.033),
    "Pacific/Rarotonga": (-21.233, -159.767),
    "America/Santiago": (-33.45, -70.667),
    "America/Punta_Arenas": (-53.15, -70.917),
    "Pacific/Easter": (-27.15, -109.433),
    "Asia/Shanghai": (31.233, 121.467),
    "Asia/Urumqi": (43.8, 87.583),
    "America/Bogota": (4.6, -74.083),
    "America/Costa_Rica": (9.933, -84.083),
    "America/Havana": (23.133, -82.367),
    "Atlantic/Cape_Verde": (14.917, -23.517),
    "America/Curacao": (12.183, -69),
    "Indian/Christmas": (-10.417, 105.717),
    "Asia/Nicosia": (35.167, 33.367),
    "Asia/Famagusta": (35.117, 33.95),
    "Europe/Prague": (50.083, 14.433),
    "Europe/Berlin": (52.5, 13.367),
    "Europe/Copenhagen": (55.667, 12.583),
    "America/Santo_Domingo": (18.467, -69.9),
    "Africa/Algiers": (36.783, 3.05),
    "America/Guayaquil": (-2.167, -79.833),
    "Pacific/Galapagos": (-0.9, -89.6),
    "Europe/Tallinn": (59.417, 24.75),
    "Africa/Cairo": (30.05, 31.25),
    "Africa/El_Aaiun": (27.15, -13.2),
    "Europe/Madrid": (40.4, -3.683),
    "Africa/Ceuta": (35.883, -5.317),
    "Atlantic/Canary": (28.1, -15.4),
    "Europe/Helsinki": (60.167, 24.967),
    "Pacific/Fiji": (-18.133, 178.417),
    "Atlantic/Stanley": (-51.7, -57.85),
    "Pacific/Chuuk": (7.417, 151.783),
    "Pacific/Pohnpei": (6.967, 158.217),
    "Pacific/Kosrae": (5.317, 162.983),
    "Atlantic/Faroe": (62.017, -6.767),
    "Europe/Paris": (48.867, 2.333),
    "Europe/London": (51.508, -0.125),
    "Asia/Tbilisi": (41.717, 44.817),
    "America/Cayenne": (4.933, -52.333),
    "Africa/Accra": (5.55, -0.217),
    "Europe/Gibraltar": (36.133, -5.35),
    "America/Godthab": (64.183, -51.733),
    "America/Danmarkshavn": (76.767, -18.667),
    "America/Scoresbysund": (70.483, -21.967),
    "America/Thule": (76.567, -68.783),
    "Europe/Athens": (37.967, 23.717),
    "Atlantic/South_Georgia": (-54.267, -36.533),
    "America/Guatemala": (14.633, -90.517),
    "Pacific/Guam": (13.467, 144.75),
    "Africa/Bissau": (11.85, -15.583),
    "America/Guyana": (6.8, -58.167),
    "Asia/Hong_Kong": (22.283, 114.15),
    "America/Tegucigalpa": (14.1, -87.217),
    "America/Port-au-Prince": (18.533, -72.333),
    "Europe/Budapest": (47.5, 19.083),
    "Asia/Jakarta": (-6.167, 106.8),
    "Asia/Pontianak": (-0.033, 109.333),
    "Asia/Makassar": (-5.117, 119.4),
    "Asia/Jayapura": (-2.533, 140.7),
    "Europe/Dublin": (53.333, -6.25),
    "Asia/Jerusalem": (31.781, 35.224),
    "Asia/Kolkata": (22.533, 88.367),
    "Indian/Chagos": (-7.333, 72.417),
    "Asia/Baghdad": (33.35, 44.417),
    "Asia/Tehran": (35.667, 51.433),
    "Atlantic/Reykjavik": (64.15, -21.85),
    "Europe/Rome": (41.9, 12.483),
    "America/Jamaica": (17.968, -76.793),
    "Asia/Amman": (31.95, 35.933),
    "Asia/Tokyo": (35.654, 139.745),
    "Africa/Nairobi": (-1.283, 36.817),
    "Asia/Bishkek": (42.9, 74.6),
    "Pacific/Tarawa": (1.417, 173),
    "Pacific/Enderbury": (-3.133, -171.083),
    "Pacific/Kiritimati": (1.867, -157.333),
    "Asia/Pyongyang": (39.017, 125.75),
    "Asia/Seoul": (37.55, 126.967),
    "Asia/Almaty": (43.25, 76.95),
    "Asia/Qyzylorda": (44.8, 65.467),
    "Asia/Qostanay": (53.2, 63.617),
    "Asia/Aqtobe": (50.283, 57.167),
    "Asia/Aqtau": (44.517, 50.267),
    "Asia/Atyrau": (47.117, 51.933),
    "Asia/Oral": (51.217, 51.35),
    "Asia/Beirut": (33.883, 35.5),
    "Asia/Colombo": (6.933, 79.85),
    "Africa/Monrovia": (6.3, -10.783),
    "Europe/Vilnius": (54.683, 25.317),
    "Europe/Luxembourg": (49.6, 6.15),
    "Europe/Riga": (56.95, 24.1),
    "Africa/Tripoli": (32.9, 13.183),
    "Africa/Casablanca": (33.65, -7.583),
    "Europe/Monaco": (43.7, 7.383),
    "Europe/Chisinau": (47, 28.833),
    "Pacific/Majuro": (7.15, 171.2),
    "Pacific/Kwajalein": (9.083, 167.333),
    "Asia/Yangon": (16.783, 96.167),
    "Asia/Ulaanbaatar": (47.917, 106.883),
    "Asia/Hovd": (48.017, 91.65),
    "Asia/Choibalsan": (48.067, 114.5),
    "Asia/Macau": (22.197, 113.542),
    "America/Martinique": (14.6, -61.083),
    "Europe/Malta": (35.9, 14.517),
    "Indian/Mauritius": (-20.167, 57.5),
    "Indian/Maldives": (4.167, 73.5),
    "America/Mexico_City": (19.4, -99.15),
    "America/Cancun": (21.083, -86.767),
    "America/Merida": (20.967, -89.617),
    "America/Monterrey": (25.667, -100.317),
    "America/Matamoros": (25.833, -97.5),
    "America/Mazatlan": (23.217, -106.417),
    "America/Chihuahua": (28.633, -106.083),
    "America/Ojinaga": (29.567, -104.417),
    "America/Hermosillo": (29.067, -110.967),
    "America/Tijuana": (32.533, -117.017),
    "America/Bahia_Banderas": (20.8, -105.25),
    "Asia/Kuala_Lumpur": (3.167, 101.7),
    "Asia/Kuching": (1.55, 110.333),
    "Africa/Maputo": (-25.967, 32.583),
    "Africa/Windhoek": (-22.567, 17.1),
    "Pacific/Noumea": (-22.267, 166.45),
    "Pacific/Norfolk": (-29.05, 167.967),
    "Africa/Lagos": (6.45, 3.4),
    "America/Managua": (12.15, -86.283),
    "Europe/Amsterdam": (52.367, 4.9),
    "Europe/Oslo": (59.917, 10.75),
    "Asia/Kathmandu": (27.717, 85.317),
    "Pacific/Nauru": (-0.517, 166.917),
    "Pacific/Niue": (-19.017, -169.917),
    "Pacific/Auckland": (-36.867, 174.767),
    "Pacific/Chatham": (-43.95, -176.55),
    "America/Panama": (8.967, -79.533),
    "America/Lima": (-12.05, -77.05),
    "Pacific/Tahiti": (-17.533, -149.567),
    "Pacific/Marquesas": (-9, -139.5),
    "Pacific/Gambier": (-23.133, -134.95),
    "Pacific/Port_Moresby": (-9.5, 147.167),
    "Pacific/Bougainville": (-6.217, 155.567),
    "Asia/Manila": (14.583, 121),
    "Asia/Karachi": (24.867, 67.05),
    "Europe/Warsaw": (52.25, 21),
    "America/Miquelon": (47.05, -56.333),
    "Pacific/Pitcairn": (-25.067, -130.083),
    "America/Puerto_Rico": (18.468, -66.106),
    "Asia/Gaza": (31.5, 34.467),
    "Asia/Hebron": (31.533, 35.095),
    "Europe/Lisbon": (38.717, -9.133),
    "Atlantic/Madeira": (32.633, -16.9),
    "Atlantic/Azores": (37.733, -25.667),
    "Pacific/Palau": (7.333, 134.483),
    "America/Asuncion": (-25.267, -57.667),
    "Asia/Qatar": (25.283, 51.533),
    "Indian/Reunion": (-20.867, 55.467),
    "Europe/Bucharest": (44.433, 26.1),
    "Europe/Belgrade": (44.833, 20.5),
    "Europe/Kaliningrad": (54.717, 20.5),
    "Europe/Moscow": (55.756, 37.618),
    "Europe/Simferopol": (44.95, 34.1),
    "Europe/Kirov": (58.6, 49.65),
    "Europe/Astrakhan": (46.35, 48.05),
    "Europe/Volgograd": (48.733, 44.417),
    "Europe/Saratov": (51.567, 46.033),
    "Europe/Ulyanovsk": (54.333, 48.4),
    "Europe/Samara": (53.2, 50.15),
    "Asia/Yekaterinburg": (56.85, 60.6),
    "Asia/Omsk": (55, 73.4),
    "Asia/Novosibirsk": (55.033, 82.917),
    "Asia/Barnaul": (53.367, 83.75),
    "Asia/Tomsk": (56.5, 84.967),
    "Asia/Novokuznetsk": (53.75, 87.117),
    "Asia/Krasnoyarsk": (56.017, 92.833),
    "Asia/Irkutsk": (52.267, 104.333),
    "Asia/Chita": (52.05, 113.467),
    "Asia/Yakutsk": (62, 129.667),
    "Asia/Khandyga": (62.656, 135.554),
    "Asia/Vladivostok": (43.167, 131.933),
    "Asia/Ust-Nera": (64.56, 143.227),
    "Asia/Magadan": (59.567, 150.8),
    "Asia/Sakhalin": (46.967, 142.7),
    "Asia/Srednekolymsk": (67.467, 153.717),
    "Asia/Kamchatka": (53.017, 158.65),
    "Asia/Anadyr": (64.75, 177.483),
    "Asia/Riyadh": (24.633, 46.717),
    "Pacific/Guadalcanal": (-9.533, 160.2),
    "Indian/Mahe": (-4.667, 55.467),
    "Africa/Khartoum": (15.6, 32.533),
    "Europe/Stockholm": (59.333, 18.05),
    "Asia/Singapore": (1.283, 103.85),
    "America/Paramaribo": (5.833, -55.167),
    "Africa/Juba": (4.85, 31.617),
    "Africa/Sao_Tome": (0.333, 6.733),
    "America/El_Salvador": (13.7, -89.2),
    "Asia/Damascus": (33.5, 36.3),
    "America/Grand_Turk": (21.467, -71.133),
    "Africa/Ndjamena": (12.117, 15.05),
    "Indian/Kerguelen": (-49.353, 70.218),
    "Asia/Bangkok": (13.75, 100.517),
    "Asia/Dushanbe": (38.583, 68.8),
    "Pacific/Fakaofo": (-9.367, -171.233),
    "Asia/Dili": (-8.55, 125.583),
    "Asia/Ashgabat": (37.95, 58.383),
    "Africa/Tunis": (36.8, 10.183),
    "Pacific/Tongatapu": (-21.167, -175.167),
    "Europe/Istanbul": (41.017, 28.967),
    "America/Port_of_Spain": (10.65, -61.517),
    "Pacific/Funafuti": (-8.517, 179.217),
    "Asia/Taipei": (25.05, 121.5),
    "Europe/Kiev": (50.433, 30.517),
    "Europe/Uzhgorod": (48.617, 22.3),
    "Europe/Zaporozhye": (47.833, 35.167),
    "Pacific/Wake": (19.283, 166.617),
    "America/New_York": (40.714, -74.006),
    "America/Detroit": (42.331, -83.046),
    "America/Kentucky/Louisville": (38.254, -85.759),
    "America/Kentucky/Monticello": (36.83, -84.849),
    "America/Indiana/Indianapolis": (39.768, -86.158),
    "America/Indiana/Vincennes": (38.677, -87.529),
    "America/Indiana/Winamac": (41.051, -86.603),
    "America/Indiana/Marengo": (38.376, -86.345),
    "America/Indiana/Petersburg": (38.492, -87.279),
    "America/Indiana/Vevay": (38.748, -85.067),
    "America/Chicago": (41.85, -87.65),
    "America/Indiana/Tell_City": (37.953, -86.761),
    "America/Indiana/Knox": (41.296, -86.625),
    "America/Menominee": (45.108, -87.614),
    "America/North_Dakota/Center": (47.116, -101.299),
    "America/North_Dakota/New_Salem": (46.845, -101.411),
    "America/North_Dakota/Beulah": (47.264, -101.778),
    "America/Denver": (39.739, -104.984),
    "America/Boise": (43.614, -116.203),
    "America/Phoenix": (33.448, -112.073),
    "America/Los_Angeles": (34.052, -118.243),
    "America/Anchorage": (61.218, -149.9),
    "America/Juneau": (58.302, -134.42),
    "America/Sitka": (57.176, -135.302),
    "America/Metlakatla": (55.127, -131.576),
    "America/Yakutat": (59.547, -139.727),
    "America/Nome": (64.501, -165.406),
    "America/Adak": (51.88, -176.658),
    "Pacific/Honolulu": (21.307, -157.858),
    "America/Montevideo": (-34.909, -56.213),
    "Asia/Samarkand": (39.667, 66.8),
    "Asia/Tashkent": (41.333, 69.3),
    "America/Caracas": (10.5, -66.933),
    "Asia/Ho_Chi_Minh": (10.75, 106.667),
    "Pacific/Efate": (-17.667, 168.417),
    "Pacific/Wallis": (-13.3, -176.167),
    "Pacific/Apia": (-13.833, -171.733),
    "Africa/Johannesburg": (-26.25, 28),
]
