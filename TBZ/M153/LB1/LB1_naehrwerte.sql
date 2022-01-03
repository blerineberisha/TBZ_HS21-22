create table naehrwerte
(
    NWTNR  varchar(10) not null
        primary key,
    LMName varchar(60) not null,
    Prot   float       not null,
    Fett   float       not null,
    KH     float       not null,
    Alk    float       not null
)
    collate = latin1_general_ci;

INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('C116001', 'Weizen Grieß', 9.56, 0.79, 68.91, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('C131001', 'Hafer ganzes Korn', 11.69, 7.09, 59.8, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('C141001', 'Gerste Vollkorn', 9.84, 2.1, 64.31, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('C213011', 'Weizen Mehl Type 550', 9.84, 1.13, 70.76, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('C221011', 'Roggen Vollkornmehl', 9, 1.7, 59.7, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('C341001', 'Mais Vollkorn', 8.54, 3.8, 64.66, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('C352001', 'Reis geschält', 6.83, 0.62, 77.73, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('C446001', 'Mais Stärke', 0.4, 0.08, 85.82, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('E110111', 'Hühnerei frisch', 12.9, 11.2, 0.7, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F081111', 'Rhabarber frisch', 0.6, 0.1, 1.36, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F110111', 'Apfel frisch', 0.34, 0.4, 11.43, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F110600', 'Apfel Fruchtsaft', 0.31, 0.33, 10.61, 0.2);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F130111', 'Birne frisch', 0.5, 0.3, 12.4, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F201111', 'Aprikose frisch', 0.9, 0.1, 8.54, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F201902', 'Aprikose Konserve abgetropft', 0.73, 0.08, 17.59, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F202111', 'Nektarine frisch', 0.9, 0.1, 12.4, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F203111', 'Pfirsich frisch', 0.8, 0.1, 8.9, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F203902', 'Pfirsich Konserve abgetropft', 0.65, 0.08, 17.79, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F210111', 'Kirschen frisch', 0.9, 0.3, 13.3, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F220111', 'Pflaumen frisch', 0.6, 0.2, 10.2, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F223111', 'Zwetschge frisch', 0.6, 0.1, 8.8, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F225111', 'Reineclaude frisch', 0.8, 0.1, 13.5, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F300000', 'Beerenobst', 0.7, 0.3, 15.6, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F301111', 'Erdbeere frisch', 0.8, 0.4, 5.5, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F310111', 'Weintrauben frisch', 0.7, 0.3, 15.6, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F310611', 'Weintrauben Fruchtsaft', 0.63, 0.24, 15.53, 0.2);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F501111', 'Ananas frisch', 0.46, 0.15, 13.12, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F501902', 'Ananas Konserve abgetropft', 0.38, 0.12, 20.28, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F503111', 'Banane frisch', 1.15, 0.18, 21.39, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F514111', 'Kiwi frisch', 1, 0.63, 10.77, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F530111', 'Melone frisch', 0.6, 0.2, 8.28, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F601111', 'Zitrone frisch', 0.7, 0.6, 8.08, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F603111', 'Orange frisch', 1, 0.2, 9.19, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F603600', 'Orange Fruchtsaft', 0.92, 0.16, 8.79, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F604111', 'Grapefruit frisch', 0.6, 0.15, 8.95, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('F606111', 'Mandarine frisch', 0.7, 0.3, 10.1, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G081111', 'Schnittlauch frisch', 3.58, 0.6, 1.6, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G101111', 'Chicoree frisch', 1.3, 0.18, 2.34, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G102111', 'Endivien frisch', 1.75, 0.2, 0.3, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G103111', 'Eisbergsalat frisch', 1, 0.2, 1.57, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G104111', 'Feldsalat frisch', 1.84, 0.36, 0.7, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G105111', 'Kopfsalat frisch', 1.25, 0.22, 1.06, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G108111', 'Schnittsalat frisch', 1.3, 0.3, 2.8, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G109111', 'Zuckerhutsalat frisch', 1.2, 0.22, 1.5, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G210111', 'Spinat frisch', 2.52, 0.3, 0.55, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G230111', 'Mangold frisch', 2.13, 0.3, 2.9, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G311111', 'Blumenkohl frisch', 2.46, 0.28, 2.34, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G312111', 'Broccoli frisch', 3.3, 0.2, 2.51, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G321111', 'Chinakohl frisch', 1.19, 0.3, 1.19, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G331111', 'Kohlrabi frisch', 2, 0.1, 3.7, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G332111', 'Rosenkohl frisch', 4.45, 0.34, 3.29, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G341111', 'Rotkohl frisch', 1.5, 0.18, 3.54, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G342111', 'Weißkohl frisch', 1.37, 0.2, 4.16, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G343111', 'Wirsingkohl frisch', 3, 0.4, 2.41, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G345902', 'Sauerkraut Konserve abgetropft', 1.37, 0.27, 0.59, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G410111', 'Artischocken frisch', 2.4, 0.12, 2.63, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G413902', 'Artischockenboden Konserve, abgetr', 1.84, 0.09, 1.71, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G430111', 'Fenchel frisch', 2.43, 0.3, 2.84, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G440111', 'Palmenherz frisch', 2.5, 0.09, 6, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G450111', 'Spargel frisch', 1.9, 0.14, 2.04, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G450902', 'Spargel Konserve, abgetropft', 1.74, 0.12, 1.58, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G480111', 'Zwiebeln frisch', 1.25, 0.25, 4.91, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G490111', 'Knoblauch frisch', 6.05, 0.12, 28.41, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G510111', 'Aubergine frisch', 1.24, 0.18, 2.49, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G520111', 'Gurke frisch', 0.6, 0.2, 1.81, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G541111', 'Gemüsepaprika grün frisch', 1.17, 0.3, 2.91, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G543111', 'Gemüsepaprika rot frisch', 1.3, 0.5, 6.4, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G560111', 'Tomaten frisch', 0.95, 0.21, 2.6, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G570111', 'Zuckermais frisch', 3.28, 1.23, 15.72, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G570902', 'Zuckermais Konserve, abgetropft', 3.12, 1.17, 12.63, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G582111', 'Zucchini frisch', 1.6, 0.4, 2.05, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G613111', 'Rote Rübe frisch', 1.53, 0.1, 8.38, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G620111', 'Mohrrübe frisch', 0.98, 0.2, 4.8, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G650111', 'Schwarzwurzel frisch', 1.4, 0.4, 1.63, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G660111', 'Knollensellerie frisch', 1.7, 0.3, 2.25, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G680111', 'Rettich frisch', 1.05, 0.15, 1.89, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G691111', 'Radieschen frisch', 1.05, 0.14, 2.13, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G710111', 'Bohnen grün frisch', 2.39, 0.24, 3.2, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G760111', 'Erbsen grün frisch', 6.55, 0.48, 12.3, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('G760902', 'Erbsen grün Konserve, abgetropft', 6.21, 0.45, 9.84, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('H110601', 'Erdnuß geröstet', 25.63, 49.4, 9.45, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('H120000', 'Walnüsse', 14.4, 62.5, 10.6, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('H130101', 'Haselnuß frisch', 11.96, 61.6, 10.54, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('H210101', 'Mandel süß frisch', 18.72, 54.1, 3.7, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('H230121', 'Edelkastanien (Marone) frisch gega', 2.48, 1.9, 35.97, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('H700111', 'Hülsenfrüchte reif frisch', 22.9, 1.44, 41.85, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('K110111', 'Kartoffeln geschält frisch', 2.04, 0.11, 14.81, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('K701111', 'Champignon frisch', 2.74, 0.24, 0.56, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M110110', 'Kuhmilch Trinkmilch entrahmt', 3.5, 0.1, 5, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M111211', 'Kuhmilch Trinkmilch fettarm = 2.8', 3.4, 2.8, 4.9, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M111311', 'Kuhmilch Trinkmilch vollfett', 3.3, 3.8, 4.76, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M141311', 'Joghurt vollfett', 4, 3.6, 4.5, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M171611', 'Kaffeesahne 15% Fett', 2.7, 15, 3.8, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M173800', 'Schlagsahne 30 % Fett-> 25 % Fett', 2.45, 26.5, 3.5, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M173911', 'Schlagsahne 40 % Fett-> 35% Fett', 2, 34.9, 3.1, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M181400', 'Kondensmilch gezuckert 7.5 % Fett', 8.2, 8, 55.5, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M301711', 'Appenzeller Rahmstufe vollfett', 24.8, 31.7, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M304600', 'Emmentaler Vollfettstufe', 29, 31.4, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M305711', 'Greyerzer Rahmstufe vollfett', 26.9, 32.1, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M306600', 'Parmesan Vollfettstufe (Sbrinz)', 28.6, 33.2, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M401500', 'Edamer Fettstufe', 26.1, 23.4, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M402600', 'Gouda Vollfettstufe', 25.5, 29.2, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M403700', 'Tilsiter Rahmstufe vollfett', 26.1, 30.2, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M600000', 'Weichkäse Mittelw. 6 Weichkäse', 20.2, 23.4, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M713100', 'Quark Magerstufe', 13.5, 0.2, 4, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M713500', 'Quark Fettstufe', 9, 10.3, 3.2, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M730100', 'Sauermilchkäse Magerstufe', 30, 0.7, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M770000', 'Schmelzkäse', 13.2, 30.4, 0.9, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M882000', 'Vollmilchpulver', 25.3, 26.3, 38, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('M884000', 'Magermilchpulver', 35.5, 0.9, 51.5, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('P162000', 'Bier Export Hell', 0.5, 0, 3.2, 4.2);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('P200000', 'Weißwein / Rotwein', 0.1, 0, 2.6, 8.8);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('P353111', 'Apfelwein', 0.001, 0, 7.3, 5);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('P700000', 'Spirituosen', 0, 0, 0, 33.4);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q120000', 'Olivenöl', 0, 99.6, 0.2, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q180000', 'Rüböl (Rapsöl)', 0, 99, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q210000', 'Erdnußöl', 0, 99.4, 0.2, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q270000', 'Sojaöl', 0, 98.6, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q320000', 'Sonnenblumenöl', 0, 99.8, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q510000', 'Erdnußbutter/-mus', 26.1, 50, 12.2, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q550211', 'Kokosfett gehärtet', 0.8, 99, 0.01, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q610000', 'Butter (nach Sieber)', 0.53, 82.3, 0.6, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q640000', 'Butter halbfett - Milchhalbfett (n', 4.9, 51.2, 1.1, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q683011', 'Butterschmalz (nach Sieber)', 0.1, 98.3, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q850000', 'Rinderschmalz/-fett', 0.8, 97, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Q860000', 'Schweineschmalz/-fett', 0.1, 99.7, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('S111000', 'Zucker weiß', 0, 0, 99.8, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('S121000', 'Blütenhonig-Mischungen', 0.38, 0, 75.07, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('S150000', 'Sirup', 0.3, 0, 79, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('S713000', 'Kakaopulver stark entölt', 23.07, 12, 12.63, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T102702', 'Hering Konserve in Öl, abgetropft', 16.94, 15.66, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T104902', 'Sardelle Konserve, abgetropft', 19.83, 2.27, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T105702', 'Sardine Konserve in Öl, abgetropft', 17.03, 10.89, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T121702', 'Thunfisch Konserve in Öl, abgetrop', 20.51, 15.68, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T204111', 'Kabeljau frisch Fischzuschnitt', 17.4, 0.67, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T311111', 'Flunder frisch Fischzuschnitt', 16.5, 3.2, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T410111', 'Lachs frisch', 18.4, 6.34, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T420111', 'Forelle frisch Fischzuschnitt', 20.55, 3.36, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T501111', 'Karpfen frisch Fischzuschnitt', 18, 4.8, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T751111', 'Krabbe klein frisch', 18.6, 1.44, 0.74, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('T880001', 'Muscheltiererzeugnisse', 7.71, 1.05, 2.89, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U010111', 'Rind Hackfleisch frisch =Hackfleis', 17.01, 8.93, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U020111', 'Schwein Hackfleisch frisch', 17.79, 20.06, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U100111', 'Rind Fleisch frisch', 19.6, 8.58, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U101811', 'Rind Fleisch (ma) gepökelt ungeräu', 38.72, 5.21, 0.83, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U172111', 'Rind Bratenfleisch (mf) frisch= Br', 19.41, 3.45, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U182011', 'Rind Kochfleisch mittelfett (mf) (', 18.42, 14.38, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U211011', 'Rind Filet (Lende) mager (ma) = En', 20.86, 6.37, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U261111', 'Rind Schulter (Bug) (ma) frisch', 20.2, 5.3, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U300111', 'Kalb Fleisch frisch', 19.27, 5.28, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U310111', 'Kalb Filet frisch = Plätzli', 21.35, 1.56, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U371011', 'Kalb Bratenfleisch mager (ma) = Br', 18.11, 4.78, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U461111', 'Kalb Schulter (Bug) (ma) frisch =', 16.34, 14.5, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U500111', 'Schwein Fleisch frisch', 20.4, 8.8, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U501611', 'Schwein Fleisch (ma) geräuchert', 21.52, 5.68, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U510111', 'Schwein Filet frisch', 22, 2, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U522011', 'Schwein Kotelett mittelfett (mf) =', 19.49, 10.9, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U541011', 'Schwein Schnitzel mager (ma) = Plä', 22.01, 2.69, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U572011', 'Schwein Bratenfleisch mittelfett (', 18.04, 7.79, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U661011', 'Schwein Schulter (Bug) mager (ma)', 18.99, 6.85, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('U700111', 'Schaf Fleisch frisch', 17.16, 17.22, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V111111', 'Pferd Fleisch (ma) frisch', 21.39, 3, 0.4, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V120111', 'Ziege Fleisch frisch', 19.5, 7.88, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V130111', 'Hauskaninchen Fleisch frisch', 19.3, 7.62, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V220111', 'Reh Fleisch frisch', 22.4, 3.55, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V400111', 'Geflügel', 19.9, 9.6, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V531111', 'Rind Leber frisch', 20.45, 3.86, 5.3, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V532111', 'Kalb Leber frisch', 20.1, 4.38, 4.59, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V533111', 'Schwein Leber frisch', 19.41, 3.31, 2.1, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V572111', 'Kalb Niere frisch', 15.76, 4.99, 1, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('V591111', 'Rind Zunge frisch', 16, 13, 3.68, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('W000011', 'Wurst (siehe Zeile 227)', 0, 0, 0.19, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('W140000', 'Salami (nach Wenk: 1. Qualität)', 26.96, 34.65, 0.19, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('W211111', 'Bockwurst (nach Wenk: Cervelas)', 12.69, 23.21, 0.27, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('W211211', 'Wiener (nach Wenk: Wienerli)', 12.92, 24.21, 0.18, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('W220000', 'Bratwurst (nicht umgerötet) (nach', 13.56, 23.46, 0.27, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('W231100', 'Lyoner Wurst (nach Wenk: Aufschnit', 13.42, 23.21, 0.23, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('W233000', 'Fleischkäse (nach Wenk: Fleischkäs', 12.37, 23.77, 0.26, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('W400000', 'Schwein Speck und Schinken (nach W', 17.3, 39.88, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('W420011', 'Schwein Schinken (nach Wenk: Vorde', 19.63, 5.64, 0, 0);
INSERT INTO LB1.naehrwerte (NWTNR, LMName, Prot, Fett, KH, Alk) VALUES ('Y780161', 'Käsefondue (6)', 15.41, 24.3, 0.67, 0);