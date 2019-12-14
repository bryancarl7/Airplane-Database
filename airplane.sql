/*I literally have no idea what I'm doing, but here we are*/;

--
-- Create schema airport
--

CREATE DATABASE IF NOT EXISTS airplane;
USE airplane;


--
-- Definition of table `airplane`.`airline`
--
DROP TABLE IF EXISTS `airplane`.`airline`;
CREATE TABLE  `airplane`.`airline` (
  `airline_ID` char(30) NOT NULL default '',
  `name` char(30) default NULL,
  PRIMARY KEY  (`airline_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
LOCK TABLES `airline` WRITE;
INSERT INTO `airplane`.`airline` VALUES  (
  ("ALA", "Alaska"),
  ("SOU", "Southwest"),
  ("AME", "American"),
  ("UTD", "United"),
  ("DEL", "Delta"),
  ("JBL", "Jet Blue"),
  ("ALL", "Allegiant"),
  ("FRO", "Frontier"),
  ("FEM", "Fly Emirates"),
  ("SAR", "Singapore Airlines")
);
UNLOCK TABLES;
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;


--
-- Definition of table `airplane`.`ticket`
--
DROP TABLE IF EXISTS `airplane`.`ticket`;
CREATE TABLE  `airplane`.`ticket` (
  `fname` char(30) default NULL,
  `lname` char(30) default NULL,
  `cost` smallint(6) NOT NULL,
  `airline_ID` char(30) NOT NULL,
  `ticket_ID` bigint(10) NOT NULL,
  `flight_ID` bigint(10) NOT NULL,
  PRIMARY KEY  (`ticket_ID`),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
LOCK TABLES `ticket` WRITE;
INSERT INTO `airplane`.`ticket` VALUES  (
  (' Sally ', ' Longbottom ', 567 ,' FEM ', 1 , 21 ),
  (' Carol ', ' Last ', 254 ,' JBL ', 2 , 29 ),
  (' Nick ', ' Cringle ', 321 ,' ALA ', 3 , 3 ),
  (' Kevin ', ' Longbottom ', 234 ,' SAR ', 4 , 4 ),
  (' Digi ', ' Anderson ', 392 ,' AME ', 5 , 7 ),
  (' Melissa ', ' Potter ', 234 ,' SAR ', 6 , 13 ),
  (' Digi ', ' Cringle ', 254 ,' ALA ', 7 , 6 ),
  (' Carol ', ' Cringle ', 125 ,' FRO ', 8 , 9 ),
  (' John ', ' Last ', 234 ,' JBL ', 9 , 17 ),
  (' Digi ', ' Wanderer ', 125 ,' FRO ', 10 , 12 ),
  (' Carol ', ' Alexstrasza ', 100 ,' FRO ', 11 , 27 ),
  (' Ray ', ' Last ', 422 ,' DEL ', 12 , 21 ),
  (' Digi ', ' Grommash ', 150 ,' ALL ', 13 , 9 ),
  (' Melissa ', ' Jingle ', 567 ,' FEM ', 14 , 30 ),
  (' Carol ', ' Longbottom ', 392 ,' ALL ', 15 , 10 ),
  (' Nick ', ' Potter ', 422 ,' FEM ', 16 , 34 ),
  (' James ', ' Hammerlock ', 125 ,' AME ', 17 , 24 ),
  (' Kevin ', ' Cringle ', 422 ,' JBL ', 18 , 22 ),
  (' John ', ' Hammerlock ', 234 ,' ALA ', 19 , 8 ),
  (' John ', ' Jingle ', 100 ,' ALL ', 20 , 6 ),
  (' Carol ', ' Hammerlock ', 422 ,' SAR ', 21 , 28 ),
  (' Carol ', ' Longbottom ', 100 ,' ALA ', 22 , 16 ),
  (' Digi ', ' Last ', 150 ,' FEM ', 23 , 28 ),
  (' Ray ', ' Anderson ', 392 ,' DEL ', 24 , 26 ),
  (' Digi ', ' Hammerlock ', 150 ,' SOU ', 25 , 31 ),
  (' Digi ', ' Potter ', 234 ,' DEL ', 26 , 5 ),
  (' Carol ', ' Cringle ', 150 ,' SOU ', 27 , 24 ),
  (' Nick ', ' Alexstrasza ', 392 ,' AME ', 28 , 25 ),
  (' Garry ', ' Alexstrasza ', 422 ,' AME ', 29 , 16 ),
  (' Ray ', ' Potter ', 392 ,' FRO ', 30 , 26 ),
  (' Carol ', ' Potter ', 150 ,' FEM ', 31 , 33 ),
  (' Digi ', ' Cringle ', 234 ,' DEL ', 32 , 33 ),
  (' Ray ', ' Alexstrasza ', 422 ,' FRO ', 33 , 2 ),
  (' James ', ' Longbottom ', 422 ,' ALA ', 34 , 19 ),
  (' Digi ', ' Hammerlock ', 234 ,' UTD ', 35 , 10 ),
  (' Tekken ', ' Wanderer ', 125 ,' ALA ', 36 , 19 ),
  (' Melissa ', ' Grommash ', 234 ,' DEL ', 37 , 20 ),
  (' Digi ', ' Alexstrasza ', 100 ,' ALL ', 38 , 21 ),
  (' Ray ', ' Longbottom ', 100 ,' ALL ', 39 , 1 ),
  (' James ', ' Hammerlock ', 392 ,' AME ', 40 , 18 ),
  (' Carol ', ' Last ', 100 ,' SOU ', 41 , 18 ),
  (' James ', ' Alexstrasza ', 422 ,' SOU ', 42 , 30 ),
  (' Ray ', ' Cringle ', 150 ,' SAR ', 43 , 1 ),
  (' Carol ', ' Cringle ', 234 ,' UTD ', 44 , 10 ),
  (' Garry ', ' Max ', 234 ,' AME ', 45 , 34 ),
  (' Jessie ', ' Jingle ', 100 ,' AME ', 46 , 20 ),
  (' Tekken ', ' Alexstrasza ', 422 ,' JBL ', 47 , 23 ),
  (' Melissa ', ' Jingle ', 254 ,' FRO ', 48 , 21 ),
  (' Garry ', ' Hammerlock ', 100 ,' SOU ', 49 , 7 ),
  (' Carol ', ' Cringle ', 392 ,' JBL ', 50 , 29 ),
  (' Melissa ', ' Longbottom ', 100 ,' AME ', 51 , 17 ),
  (' John ', ' Grommash ', 422 ,' FRO ', 52 , 3 ),
  (' Tekken ', ' Grommash ', 150 ,' JBL ', 53 , 15 ),
  (' Jessie ', ' Longbottom ', 567 ,' SOU ', 54 , 17 ),
  (' Jessie ', ' Last ', 422 ,' UTD ', 55 , 17 ),
  (' Melissa ', ' Potter ', 321 ,' ALA ', 56 , 7 ),
  (' Jessie ', ' Jingle ', 422 ,' JBL ', 57 , 9 ),
  (' James ', ' Longbottom ', 422 ,' FRO ', 58 , 23 ),
  (' Sally ', ' Hammerlock ', 392 ,' SAR ', 59 , 6 ),
  (' Tekken ', ' Hammerlock ', 234 ,' SOU ', 60 , 8 ),
  (' Nick ', ' Anderson ', 321 ,' FRO ', 61 , 32 ),
  (' Kevin ', ' Jingle ', 567 ,' UTD ', 62 , 31 ),
  (' Tekken ', ' Last ', 321 ,' SOU ', 63 , 13 ),
  (' Nick ', ' Longbottom ', 321 ,' SAR ', 64 , 28 ),
  (' Melissa ', ' Anderson ', 392 ,' FEM ', 65 , 21 ),
  (' Sally ', ' Max ', 254 ,' SOU ', 66 , 33 ),
  (' Tekken ', ' Longbottom ', 254 ,' ALA ', 67 , 26 ),
  (' Nick ', ' Potter ', 392 ,' AME ', 68 , 8 ),
  (' Ray ', ' Longbottom ', 254 ,' FRO ', 69 , 22 ),
  (' Sally ', ' Hammerlock ', 422 ,' AME ', 70 , 7 ),
  (' Ray ', ' Last ', 567 ,' AME ', 71 , 33 ),
  (' Kevin ', ' Anderson ', 150 ,' SAR ', 72 , 2 ),
  (' Melissa ', ' Wanderer ', 422 ,' FRO ', 73 , 20 ),
  (' Tekken ', ' Last ', 321 ,' ALA ', 74 , 30 ),
  (' Melissa ', ' Jingle ', 150 ,' DEL ', 75 , 7 ),
  (' Ray ', ' Alexstrasza ', 234 ,' JBL ', 76 , 33 ),
  (' Sally ', ' Wanderer ', 234 ,' FRO ', 77 , 3 ),
  (' Garry ', ' Last ', 254 ,' DEL ', 78 , 4 ),
  (' Melissa ', ' Longbottom ', 321 ,' SAR ', 79 , 19 ),
  (' Kevin ', ' Hammerlock ', 100 ,' ALA ', 80 , 26 ),
  (' Melissa ', ' Anderson ', 125 ,' SOU ', 81 , 24 ),
  (' Ray ', ' Jingle ', 422 ,' AME ', 82 , 15 ),
  (' Digi ', ' Cringle ', 150 ,' FEM ', 83 , 17 ),
  (' Melissa ', ' Cringle ', 567 ,' JBL ', 84 , 26 ),
  (' Melissa ', ' Alexstrasza ', 422 ,' FRO ', 85 , 27 ),
  (' Carol ', ' Anderson ', 234 ,' ALL ', 86 , 2 ),
  (' Kevin ', ' Anderson ', 100 ,' DEL ', 87 , 13 ),
  (' Sally ', ' Wanderer ', 234 ,' SOU ', 88 , 19 ),
  (' Sally ', ' Last ', 422 ,' AME ', 89 , 16 ),
  (' Ray ', ' Wanderer ', 125 ,' ALL ', 90 , 13 ),
  (' Carol ', ' Jingle ', 392 ,' DEL ', 91 , 27 ),
  (' John ', ' Last ', 125 ,' ALL ', 92 , 3 ),
  (' Jessie ', ' Jingle ', 392 ,' FEM ', 93 , 25 ),
  (' Sally ', ' Last ', 392 ,' FEM ', 94 , 25 ),
  (' Nick ', ' Longbottom ', 234 ,' SAR ', 95 , 33 ),
  (' Tekken ', ' Alexstrasza ', 100 ,' AME ', 96 , 23 ),
  (' Tekken ', ' Wanderer ', 321 ,' SOU ', 97 , 23 ),
  (' Tekken ', ' Anderson ', 100 ,' FEM ', 98 , 8 ),
  (' Melissa ', ' Anderson ', 392 ,' SOU ', 99 , 25 ),
  (' Tekken ', ' Jingle ', 321 ,' SOU ', 100 , 14 ),
  (' Carol ', ' Cringle ', 321 ,' ALL ', 101 , 25 ),
  (' Tekken ', ' Alexstrasza ', 100 ,' AME ', 102 , 34 ),
  (' Digi ', ' Longbottom ', 254 ,' ALA ', 103 , 9 ),
  (' Carol ', ' Wanderer ', 150 ,' AME ', 104 , 28 ),
  (' James ', ' Last ', 392 ,' SAR ', 105 , 1 ),
  (' John ', ' Cringle ', 125 ,' ALL ', 106 , 21 ),
  (' Sally ', ' Max ', 234 ,' DEL ', 107 , 33 ),
  (' Nick ', ' Anderson ', 100 ,' FEM ', 108 , 25 ),
  (' Jessie ', ' Anderson ', 234 ,' DEL ', 109 , 30 ),
  (' Carol ', ' Anderson ', 234 ,' SOU ', 110 , 11 ),
  (' Tekken ', ' Cringle ', 125 ,' UTD ', 111 , 31 ),
  (' Sally ', ' Anderson ', 125 ,' UTD ', 112 , 24 ),
  (' Sally ', ' Anderson ', 100 ,' DEL ', 113 , 16 ),
  (' James ', ' Hammerlock ', 321 ,' JBL ', 114 , 33 ),
  (' Digi ', ' Longbottom ', 254 ,' JBL ', 115 , 18 ),
  (' Sally ', ' Anderson ', 125 ,' JBL ', 116 , 30 ),
  (' Sally ', ' Alexstrasza ', 125 ,' SOU ', 117 , 12 ),
  (' John ', ' Grommash ', 422 ,' UTD ', 118 , 16 ),
  (' Melissa ', ' Longbottom ', 100 ,' SOU ', 119 , 20 ),
  (' Nick ', ' Hammerlock ', 100 ,' ALL ', 120 , 22 ),
  (' Garry ', ' Last ', 234 ,' FRO ', 121 , 22 ),
  (' Melissa ', ' Last ', 254 ,' UTD ', 122 , 7 ),
  (' Sally ', ' Longbottom ', 125 ,' FEM ', 123 , 25 ),
  (' Garry ', ' Potter ', 234 ,' ALA ', 124 , 12 ),
  (' James ', ' Alexstrasza ', 254 ,' FEM ', 125 , 11 ),
  (' Nick ', ' Max ', 321 ,' FEM ', 126 , 11 ),
  (' Carol ', ' Longbottom ', 234 ,' JBL ', 127 , 19 ),
  (' Ray ', ' Last ', 234 ,' SAR ', 128 , 6 ),
  (' Kevin ', ' Hammerlock ', 254 ,' SOU ', 129 , 26 ),
  (' Garry ', ' Wanderer ', 392 ,' UTD ', 130 , 23 ),
  (' Garry ', ' Wanderer ', 100 ,' ALL ', 131 , 27 ),
  (' Nick ', ' Potter ', 392 ,' FRO ', 132 , 28 ),
  (' Digi ', ' Jingle ', 422 ,' SAR ', 133 , 15 ),
  (' Garry ', ' Cringle ', 567 ,' SOU ', 134 , 22 ),
  (' Kevin ', ' Grommash ', 422 ,' JBL ', 135 , 21 ),
  (' James ', ' Max ', 150 ,' FRO ', 136 , 22 ),
  (' Digi ', ' Grommash ', 125 ,' SOU ', 137 , 15 ),
  (' Ray ', ' Max ', 150 ,' JBL ', 138 , 23 ),
  (' Tekken ', ' Hammerlock ', 392 ,' FRO ', 139 , 26 ),
  (' Digi ', ' Anderson ', 321 ,' SAR ', 140 , 21 ),
  (' Digi ', ' Grommash ', 254 ,' FRO ', 141 , 20 ),
  (' Kevin ', ' Grommash ', 150 ,' SOU ', 142 , 7 ),
  (' Carol ', ' Grommash ', 321 ,' UTD ', 143 , 16 ),
  (' Kevin ', ' Cringle ', 392 ,' JBL ', 144 , 5 ),
  (' Kevin ', ' Wanderer ', 392 ,' FEM ', 145 , 13 ),
  (' Sally ', ' Alexstrasza ', 254 ,' ALA ', 146 , 27 ),
  (' Tekken ', ' Grommash ', 422 ,' UTD ', 147 , 3 ),
  (' Jessie ', ' Last ', 254 ,' UTD ', 148 , 31 ),
  (' John ', ' Max ', 321 ,' AME ', 149 , 10 ),
  (' Nick ', ' Longbottom ', 392 ,' AME ', 150 , 23 ),
  (' James ', ' Max ', 321 ,' SOU ', 151 , 34 ),
  (' Carol ', ' Cringle ', 150 ,' FRO ', 152 , 20 ),
  (' Nick ', ' Anderson ', 100 ,' SOU ', 153 , 15 ),
  (' Melissa ', ' Potter ', 100 ,' FEM ', 154 , 9 ),
  (' Nick ', ' Longbottom ', 125 ,' JBL ', 155 , 21 ),
  (' Tekken ', ' Wanderer ', 100 ,' SAR ', 156 , 8 ),
  (' Tekken ', ' Cringle ', 567 ,' JBL ', 157 , 3 ),
  (' Jessie ', ' Cringle ', 234 ,' JBL ', 158 , 31 ),
  (' Sally ', ' Anderson ', 234 ,' JBL ', 159 , 16 ),
  (' Carol ', ' Cringle ', 392 ,' AME ', 160 , 6 ),
  (' Sally ', ' Grommash ', 321 ,' DEL ', 161 , 4 ),
  (' Jessie ', ' Longbottom ', 321 ,' ALA ', 162 , 7 ),
  (' Digi ', ' Alexstrasza ', 234 ,' SOU ', 163 , 11 ),
  (' James ', ' Hammerlock ', 234 ,' ALL ', 164 , 34 ),
  (' Sally ', ' Last ', 422 ,' SOU ', 165 , 13 ),
  (' Carol ', ' Anderson ', 567 ,' FRO ', 166 , 27 ),
  (' Kevin ', ' Alexstrasza ', 125 ,' JBL ', 167 , 19 ),
  (' Digi ', ' Alexstrasza ', 100 ,' ALL ', 168 , 33 ),
  (' Tekken ', ' Last ', 254 ,' FRO ', 169 , 18 ),
  (' Sally ', ' Max ', 125 ,' JBL ', 170 , 7 ),
  (' Tekken ', ' Wanderer ', 392 ,' FRO ', 171 , 17 ),
  (' Jessie ', ' Alexstrasza ', 567 ,' ALA ', 172 , 34 ),
  (' Carol ', ' Wanderer ', 100 ,' DEL ', 173 , 14 ),
  (' Carol ', ' Longbottom ', 150 ,' FRO ', 174 , 24 ),
  (' Melissa ', ' Anderson ', 321 ,' FEM ', 175 , 4 ),
  (' Kevin ', ' Cringle ', 150 ,' JBL ', 176 , 21 ),
  (' Digi ', ' Anderson ', 234 ,' UTD ', 177 , 23 ),
  (' John ', ' Jingle ', 321 ,' AME ', 178 , 31 ),
  (' Ray ', ' Max ', 254 ,' FEM ', 179 , 19 ),
  (' Kevin ', ' Longbottom ', 392 ,' AME ', 180 , 4 ),
  (' James ', ' Cringle ', 150 ,' AME ', 181 , 15 ),
  (' John ', ' Longbottom ', 234 ,' SOU ', 182 , 22 ),
  (' Tekken ', ' Cringle ', 567 ,' FEM ', 183 , 6 ),
  (' Carol ', ' Alexstrasza ', 422 ,' SOU ', 184 , 19 ),
  (' Kevin ', ' Max ', 100 ,' ALL ', 185 , 29 ),
  (' James ', ' Anderson ', 125 ,' UTD ', 186 , 33 ),
  (' Ray ', ' Anderson ', 150 ,' SAR ', 187 , 32 ),
  (' Ray ', ' Max ', 125 ,' JBL ', 188 , 13 ),
  (' Tekken ', ' Anderson ', 422 ,' FRO ', 189 , 1 ),
  (' Kevin ', ' Longbottom ', 567 ,' SAR ', 190 , 34 ),
  (' Garry ', ' Longbottom ', 321 ,' FEM ', 191 , 3 ),
  (' Sally ', ' Wanderer ', 321 ,' FRO ', 192 , 4 ),
  (' Ray ', ' Jingle ', 392 ,' DEL ', 193 , 7 ),
  (' James ', ' Wanderer ', 422 ,' UTD ', 194 , 9 ),
  (' Kevin ', ' Max ', 422 ,' UTD ', 195 , 3 ),
  (' Kevin ', ' Cringle ', 100 ,' FEM ', 196 , 5 ),
  (' Kevin ', ' Alexstrasza ', 321 ,' ALL ', 197 , 13 ),
  (' Carol ', ' Grommash ', 321 ,' AME ', 198 , 13 ),
  (' Tekken ', ' Anderson ', 392 ,' AME ', 199 , 10 ),
  (' James ', ' Wanderer ', 150 ,' UTD ', 200 , 18 ),
  (' Ray ', ' Alexstrasza ', 567 ,' UTD ', 201 , 32 ),
  (' Sally ', ' Longbottom ', 567 ,' FEM ', 202 , 31 ),
  (' Tekken ', ' Hammerlock ', 321 ,' DEL ', 203 , 8 ),
  (' Tekken ', ' Potter ', 150 ,' JBL ', 204 , 11 ),
  (' Tekken ', ' Jingle ', 100 ,' DEL ', 205 , 18 ),
  (' John ', ' Anderson ', 321 ,' ALL ', 206 , 8 ),
  (' John ', ' Jingle ', 567 ,' FEM ', 207 , 26 ),
  (' Garry ', ' Hammerlock ', 125 ,' UTD ', 208 , 16 ),
  (' Sally ', ' Max ', 567 ,' SAR ', 209 , 22 ),
  (' Jessie ', ' Cringle ', 100 ,' UTD ', 210 , 19 ),
  (' Jessie ', ' Hammerlock ', 254 ,' UTD ', 211 , 13 ),
  (' Ray ', ' Anderson ', 150 ,' JBL ', 212 , 20 ),
  (' Carol ', ' Hammerlock ', 422 ,' UTD ', 213 , 27 ),
  (' Kevin ', ' Hammerlock ', 100 ,' ALL ', 214 , 16 ),
  (' Jessie ', ' Cringle ', 234 ,' ALL ', 215 , 12 ),
  (' Carol ', ' Alexstrasza ', 321 ,' JBL ', 216 , 4 ),
  (' Garry ', ' Longbottom ', 100 ,' SAR ', 217 , 7 ),
  (' James ', ' Hammerlock ', 422 ,' DEL ', 218 , 18 ),
  (' Kevin ', ' Grommash ', 321 ,' AME ', 219 , 6 ),
  (' Nick ', ' Last ', 125 ,' SAR ', 220 , 6 ),
  (' Melissa ', ' Grommash ', 567 ,' ALL ', 221 , 4 ),
  (' Nick ', ' Last ', 567 ,' SAR ', 222 , 30 ),
  (' Carol ', ' Alexstrasza ', 392 ,' UTD ', 223 , 21 ),
  (' Garry ', ' Anderson ', 234 ,' ALL ', 224 , 9 ),
  (' Melissa ', ' Potter ', 422 ,' DEL ', 225 , 31 ),
  (' Digi ', ' Cringle ', 125 ,' DEL ', 226 , 4 ),
  (' Ray ', ' Last ', 392 ,' ALL ', 227 , 30 ),
  (' Carol ', ' Max ', 392 ,' JBL ', 228 , 34 ),
  (' Nick ', ' Alexstrasza ', 125 ,' SAR ', 229 , 19 ),
  (' Melissa ', ' Max ', 422 ,' SOU ', 230 , 25 ),
  (' Jessie ', ' Alexstrasza ', 254 ,' DEL ', 231 , 2 ),
  (' Tekken ', ' Last ', 392 ,' ALL ', 232 , 30 ),
  (' Nick ', ' Alexstrasza ', 150 ,' AME ', 233 , 30 ),
  (' Kevin ', ' Cringle ', 125 ,' SAR ', 234 , 20 ),
  (' Nick ', ' Potter ', 321 ,' ALL ', 235 , 16 ),
  (' Garry ', ' Alexstrasza ', 567 ,' SOU ', 236 , 19 ),
  (' Garry ', ' Hammerlock ', 567 ,' UTD ', 237 , 25 ),
  (' Digi ', ' Jingle ', 422 ,' ALA ', 238 , 22 ),
  (' Digi ', ' Jingle ', 567 ,' ALA ', 239 , 31 ),
  (' Tekken ', ' Alexstrasza ', 234 ,' UTD ', 240 , 4 ),
  (' James ', ' Max ', 150 ,' FEM ', 241 , 23 ),
  (' Jessie ', ' Grommash ', 392 ,' DEL ', 242 , 10 ),
  (' Digi ', ' Alexstrasza ', 254 ,' SAR ', 243 , 5 ),
  (' Nick ', ' Max ', 254 ,' UTD ', 244 , 3 ),
  (' Garry ', ' Grommash ', 254 ,' FRO ', 245 , 19 ),
  (' John ', ' Wanderer ', 234 ,' SAR ', 246 , 9 ),
  (' Jessie ', ' Hammerlock ', 150 ,' UTD ', 247 , 26 ),
  (' Melissa ', ' Last ', 100 ,' FEM ', 248 , 9 ),
  (' Ray ', ' Max ', 321 ,' AME ', 249 , 24 ),
  (' Jessie ', ' Wanderer ', 392 ,' FRO ', 250 , 15 ),
  (' John ', ' Alexstrasza ', 254 ,' ALL ', 251 , 10 ),
  (' Kevin ', ' Last ', 150 ,' SOU ', 252 , 8 ),
  (' Jessie ', ' Cringle ', 422 ,' FEM ', 253 , 13 ),
  (' Digi ', ' Wanderer ', 422 ,' ALL ', 254 , 14 ),
  (' James ', ' Hammerlock ', 321 ,' SOU ', 255 , 8 ),
  (' Jessie ', ' Anderson ', 125 ,' UTD ', 256 , 6 ),
  (' Tekken ', ' Max ', 254 ,' SAR ', 257 , 25 ),
  (' Ray ', ' Alexstrasza ', 125 ,' SAR ', 258 , 9 ),
  (' Tekken ', ' Hammerlock ', 125 ,' UTD ', 259 , 11 ),
  (' James ', ' Max ', 254 ,' FEM ', 260 , 24 ),
  (' John ', ' Anderson ', 567 ,' UTD ', 261 , 3 ),
  (' John ', ' Cringle ', 234 ,' JBL ', 262 , 30 ),
  (' Garry ', ' Wanderer ', 422 ,' JBL ', 263 , 12 ),
  (' Digi ', ' Longbottom ', 392 ,' FRO ', 264 , 12 ),
  (' Tekken ', ' Last ', 422 ,' JBL ', 265 , 12 ),
  (' John ', ' Longbottom ', 392 ,' FEM ', 266 , 19 ),
  (' Nick ', ' Jingle ', 321 ,' FRO ', 267 , 12 ),
  (' Ray ', ' Wanderer ', 100 ,' SOU ', 268 , 17 ),
  (' Sally ', ' Last ', 125 ,' JBL ', 269 , 12 ),
  (' John ', ' Anderson ', 392 ,' UTD ', 270 , 26 ),
  (' Melissa ', ' Cringle ', 150 ,' JBL ', 271 , 27 ),
  (' Sally ', ' Alexstrasza ', 100 ,' SOU ', 272 , 30 ),
  (' Garry ', ' Hammerlock ', 567 ,' AME ', 273 , 24 ),
  (' Tekken ', ' Potter ', 150 ,' DEL ', 274 , 30 ),
  (' Nick ', ' Potter ', 392 ,' FRO ', 275 , 4 ),
  (' Ray ', ' Cringle ', 125 ,' SOU ', 276 , 25 ),
  (' John ', ' Hammerlock ', 234 ,' AME ', 277 , 12 ),
  (' Tekken ', ' Max ', 567 ,' ALL ', 278 , 1 ),
  (' Nick ', ' Alexstrasza ', 234 ,' DEL ', 279 , 4 ),
  (' Ray ', ' Max ', 254 ,' SOU ', 280 , 25 ),
  (' Ray ', ' Jingle ', 125 ,' ALL ', 281 , 26 ),
  (' Sally ', ' Cringle ', 254 ,' AME ', 282 , 26 ),
  (' Nick ', ' Jingle ', 567 ,' DEL ', 283 , 2 ),
  (' Jessie ', ' Cringle ', 321 ,' SAR ', 284 , 32 ),
  (' Garry ', ' Max ', 254 ,' FEM ', 285 , 28 ),
  (' Jessie ', ' Grommash ', 125 ,' FEM ', 286 , 29 ),
  (' James ', ' Anderson ', 234 ,' ALL ', 287 , 13 ),
  (' John ', ' Last ', 422 ,' SOU ', 288 , 21 ),
  (' Nick ', ' Anderson ', 100 ,' DEL ', 289 , 32 ),
  (' Garry ', ' Wanderer ', 567 ,' ALL ', 290 , 11 ),
  (' Garry ', ' Max ', 150 ,' JBL ', 291 , 3 ),
  (' James ', ' Last ', 321 ,' UTD ', 292 , 26 ),
  (' Melissa ', ' Wanderer ', 254 ,' ALA ', 293 , 10 ),
  (' Melissa ', ' Hammerlock ', 567 ,' FEM ', 294 , 20 ),
  (' Nick ', ' Alexstrasza ', 392 ,' ALL ', 295 , 33 ),
  (' Sally ', ' Alexstrasza ', 150 ,' ALL ', 296 , 10 ),
  (' Carol ', ' Cringle ', 321 ,' AME ', 297 , 29 ),
  (' Ray ', ' Wanderer ', 234 ,' SOU ', 298 , 10 ),
  (' Ray ', ' Jingle ', 392 ,' ALL ', 299 , 28 ),
  (' Sally ', ' Wanderer ', 150 ,' SAR ', 300 , 23 )
);
UNLOCK TABLES;
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;


--
-- Definition of table `airplane`.`flights`
--
DROP TABLE IF EXISTS `airplane`.`flights`;
CREATE TABLE  `airplane`.`flights` (
  `ID` bigint(15) default NULL,
  `dep_aiport` char(30) default NULL,
  `arr_aiport` char(30) default NULL,
  `date` date NOT NULL,
  `pilot_ssn` bigint(15) NOT NULL,
  `attendant_1` bigint(15) NOT NULL,
  `attendant_2` bigint(15) NOT NULL,
  `airline_ID` char(30) NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
LOCK TABLES `flights` WRITE;
INSERT INTO `airplane`.`flights` VALUES  (
  ( 1 ,' SJC ',' SEA ','2018-10-12', 2281871029 , 1436103645 , 6105559923 ,' UTD '),
  ( 2 ,' SEA ',' BOS ','2018-05-11', 9818103795 , 2756182810 , 4489624810 ,' SAR '),
  ( 3 ,' OAK ',' SEA ','2018-03-10', 7910141314 , 1436103645 , 7281110641 ,' ALA '),
  ( 4 ,' CHI ',' SJC ','2018-03-08', 2281871029 , 6710841537 , 7281110641 ,' FEM '),
  ( 5 ,' LAX ',' AMS ','2019-03-11', 6431095105 , 1363410825 , 1436103645 ,' AME '),
  ( 6 ,' BOS ',' YYZ ','2019-06-18', 7121089887 , 4489624810 , 4489624810 ,' DEL '),
  ( 7 ,' SFO ',' SJC ','2018-04-08', 5910899108 , 1436103645 , 7281110641 ,' SOU '),
  ( 8 ,' SJC ',' YYZ ','2019-02-15', 9631191108 , 7961085482 , 1363410825 ,' FEM '),
  ( 9 ,' AMS ',' YYZ ','2019-10-19', 9818103795 , 5791881074 , 6710841537 ,' UTD '),
  ( 10 ,' AMS ',' CHI ','2018-07-17', 4161043766 , 4489624810 , 7961085482 ,' JBL '),
  ( 11 ,' SFO ',' LAX ','2019-06-27', 6431095105 , 1363410825 , 8277391089 ,' ALL '),
  ( 12 ,' AMS ',' FDG ','2019-07-15', 9818103795 , 5791881074 , 1436103645 ,' SAR '),
  ( 13 ,' CHI ',' FDG ','2019-01-19', 7910141314 , 6105559923 , 6105559923 ,' SAR '),
  ( 14 ,' BOS ',' SEA ','2018-04-07', 2437110466 , 1436103645 , 7281110641 ,' ALL '),
  ( 15 ,' BOS ',' LAX ','2018-01-06', 7910141314 , 6105559923 , 6105559923 ,' SAR '),
  ( 16 ,' CHI ',' AMS ','2019-05-29', 7910141314 , 8277391089 , 7961085482 ,' UTD '),
  ( 17 ,' SFO ',' AMS ','2019-07-18', 7910141314 , 7961085482 , 2756182810 ,' ALL '),
  ( 18 ,' SFO ',' LAX ','2019-02-27', 6431095105 , 6105559923 , 1039765109 ,' FEM '),
  ( 19 ,' OAK ',' YYZ ','2019-04-17', 8310682310 , 7961085482 , 8838771010 ,' SAR '),
  ( 20 ,' AMS ',' CHI ','2018-06-26', 9310155798 , 7281110641 , 8277391089 ,' DEL '),
  ( 21 ,' SFO ',' CHI ','2018-10-28', 7121089887 , 5791881074 , 1436103645 ,' ALA '),
  ( 22 ,' BOS ',' BOS ','2019-07-12', 7910141314 , 6105559923 , 7961085482 ,' AME '),
  ( 23 ,' CHI ',' YYZ ','2019-01-08', 4528105774 , 8277391089 , 1363410825 ,' FRO '),
  ( 24 ,' FDG ',' SFO ','2018-07-25', 2281871029 , 1039765109 , 5791881074 ,' SAR '),
  ( 25 ,' BOS ',' FDG ','2019-01-03', 2437110466 , 6105559923 , 7961085482 ,' SAR '),
  ( 26 ,' FDG ',' SFO ','2018-09-17', 2437110466 , 8277391089 , 1436103645 ,' AME '),
  ( 27 ,' SEA ',' BOS ','2018-07-24', 8310682310 , 7281110641 , 8838771010 ,' AME '),
  ( 28 ,' BOS ',' CHI ','2018-04-05', 2281871029 , 8838771010 , 6105559923 ,' AME '),
  ( 29 ,' AMS ',' FDG ','2018-02-15', 5910899108 , 6710841537 , 1363410825 ,' AME '),
  ( 30 ,' SJC ',' SFO ','2019-05-15', 2437110466 , 1436103645 , 1039765109 ,' ALA '),
  ( 31 ,' YYZ ',' CHI ','2019-03-26', 8826792810 , 6710841537 , 7281110641 ,' JBL '),
  ( 32 ,' BOS ',' LAX ','2019-08-28', 6431095105 , 6710841537 , 8277391089 ,' ALL '),
  ( 33 ,' CHI ',' AMS ','2019-05-19', 9818103795 , 4489624810 , 2756182810 ,' ALL '),
  ( 34 ,' FDG ',' LAX ','2019-03-13', 5910899108 , 2174531061 , 7281110641 ,' SOU ')
);
UNLOCK TABLES;
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;


--
-- Definition of table `airplane`.`aiport`
--
DROP TABLE IF EXISTS `airplane`.`aiport`;
CREATE TABLE  `airplane`.`aiport` (
  `airport_ID` char(10) default NULL,
  `name` char(30) default NULL,
  PRIMARY KEY  (`airport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
LOCK TABLES `aiport` WRITE;
INSERT INTO `airplane`.`aiport` VALUES  (
  ("SJC", "San Jose"),
  ("SFO", "San Francisco"),
  ("LAX", "Los Angeles"),
  ("CHI", "Chicago O'Hare"),
  ("SEA", "Seattle International"),
  ("YYZ", "Toronto International"),
  ("BOS", "Boston international"),
  ("OAK", "Oakland"),
  ("AMS", "Amsterdam"),
  ("FDG", "France De Gaul")
);
UNLOCK TABLES;
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;


--
-- Definition of table `airplane`.`airplane`
--
DROP TABLE IF EXISTS `airplane`.`airplane`;
CREATE TABLE  `airplane`.`airplane` (
  `ID` smallint(5) default NOT NULL,
  `model_name` char(30) default NULL,
  `airline_ID` char(30) default NULL,
  `most_recent_test` date default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
LOCK TABLES `airplane` WRITE;
INSERT INTO `airplane`.`airplane` VALUES  (
  ( 1 ,' airbus ',' UTD ','2018-01-01')
( 2 ,' propeller ',' JBL ','2018-01-25')
( 3 ,' airbus ',' ALL ','2019-09-26')
( 4 ,' propeller ',' DEL ','2018-07-21')
( 5 ,' airbus ',' ALA ','2019-10-22')
( 6 ,' airbus ',' JBL ','2018-10-17')
( 7 ,' taxi ',' SAR ','2018-06-09')
( 8 ,' airbus ',' FRO ','2018-02-22')
( 9 ,' propeller ',' SOU ','2018-02-21')
( 10 ,' taxi ',' SOU ','2018-08-23')
( 11 ,' propeller ',' JBL ','2018-02-07')
( 12 ,' taxi ',' SOU ','2019-04-04')
( 13 ,' airbus ',' ALL ','2018-03-23')
( 14 ,' taxi ',' AME ','2018-09-05')
( 15 ,' taxi ',' SAR ','2019-03-24')
( 16 ,' propeller ',' JBL ','2019-05-12')
( 17 ,' airbus ',' JBL ','2018-10-08')
( 18 ,' taxi ',' AME ','2018-05-10')
( 19 ,' taxi ',' SAR ','2018-01-19')
);
UNLOCK TABLES;
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;


--
-- Definition of table `airplane`.`employee`
--
DROP TABLE IF EXISTS `airplane`.`employee`;
CREATE TABLE  `airplane`.`employee` (
  `SSN` bigint(20) default NULL,
  `department` char(30) default NULL,
  `airline_ID` char(30) default NULL,
  PRIMARY KEY  (`SSN`),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
LOCK TABLES `employee` WRITE;
INSERT INTO `airplane`.`employee` VALUES  (
  (8277391089, "attendant", "SOU"),
  (4161043766, "pilot", "SOU"),
  (8826792810, "pilot", "ALA"),
  (7121089887, "pilot", "UTD"),
  (2756182810, "attendant", "ALA"),
  (5791881074, "attendant","FEM"),
  (9818103795, "pilot","FEM"),
  (9310155798, "pilot","SAR"),
  (9631191108,"pilot","SAR"),
  (1363410825,"attendant","SAR"),
  (7961085482,"attendant","FRO"),
  (4489624810,"attendant","ALL"),
  (4528105774,"pilot","ALL"),
  (1436103645,"attendant","JBL"),
  (2174531061,"attendant","FRO"),
  (7281110641,"attendant","DEL"),
  (2437110466,"pilot","JBL"),
  (2281871029,"pilot","DEL"),
  (7910141314,"pilot","UTD"),
  (6105559923,"attendant","UTD"),
  (6710841537,"attendant","AME"),
  (8310682310,"pilot","AME"),
  (8838771010,"attendant","SOU"),
  (5910899108,"pilot","SOU"),
  (1039765109,"attendant","ALA"),
  (6431095105,"pilot","ALA")
);
UNLOCK TABLES;
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;


--
-- Definition of table `airplane`.`pilot`
--
DROP TABLE IF EXISTS `airplane`.`pilot`;
CREATE TABLE  `airplane`.`pilot` (
  `SSN` bigint(20) NOT NULL,
  `plane` char(30) NOT NULL,
  `airline_ID` char(30) NOT NULL,
  PRIMARY KEY  (`SSN`),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `pilot` DISABLE KEYS */;
LOCK TABLES `pilot` WRITE;
INSERT INTO `airplane`.`pilot` VALUES  (
  (4161043766, "taxi", "SOU"),
  (8826792810, "taxi", "ALA"),
  (7121089887, "taxi", "UTD"),
  (9818103795, "taxi","FEM"),
  (9310155798, "airbus","SAR"),
  (9631191108,"airbus","SAR"),
  (4528105774,"airbus","ALL"),
  (2437110466,"airbus","JBL"),
  (2281871029,"airbus","DEL"),
  (7910141314,"propeller","UTD"),
  (8310682310,"propeller","AME"),
  (5910899108,"propeller","SOU"),
  (6431095105,"propeller","ALA")
);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pilot` ENABLE KEYS */;


--
-- Definition of table `airplane`.`attendant`
--
DROP TABLE IF EXISTS `airplane`.`attendant`;
CREATE TABLE  `airplane`.`attendant` (
  `SSN` bigint(20) NOT NULL,
  `airline_ID` char(30) NOT NULL,
  PRIMARY KEY  (`SSN`),
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
LOCK TABLES `attendant` WRITE;
INSERT INTO `airplane`.`attendant` VALUES  (
  (8277391089, "SOU"),
  (2756182810, "ALA"),
  (5791881074, "FEM"),
  (1363410825, "SAR"),
  (7961085482, "FRO"),
  (4489624810, "ALL"),
  (1436103645, "JBL"),
  (2174531061, "FRO"),
  (7281110641, "DEL"),
  (6105559923, "UTD"),
  (6710841537, "AME"),
  (8838771010, "SOU"),
  (1039765109, "ALA")
);
UNLOCK TABLES;
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;
