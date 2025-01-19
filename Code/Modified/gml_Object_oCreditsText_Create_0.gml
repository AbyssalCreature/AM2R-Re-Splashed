if global.saxmode
{
    mus_stop_all()
    mus_play_once(musSAXEnvironmentalAmbience)
    room_goto(rm_score)
}
text = "Another " + global.monsterStr + " 2 Remake# # # # # # # # # # # #Producer#Milton 'DoctorM64' Guasti# #Graphic Design#Ramiro Negri#Steve 'Sabre230' Rothlisberger#Jack Witty#Kirill '1Eni1' Fevralev#Jasper#MichaelGabrielR# #Promo Art#Azima 'Zim' Khan# #Writing#James 'Ridley' Hobbs#Paulo 'Latinlingo' Villalobos# #Platform Engine Code#Martin Piecyk# #Music Composition#Milton 'DoctorM64' Guasti#Darren Kerwin#Torbjørn 'Falcool' Brandrud# #Debug#Hemse#Dragondarch#Esteban 'DruidVorse' Criado#Verneri 'Naatiska' Viljanen# #Playtest#Jennifer Potter#Mario Crestanello#Live4Truths#Torbjørn 'Falcool' Brandrud#Lise Trehjørningen#Nommiin#Gabriel Kaplan#Nicolas 'Skol' Del Negro#Darren Kerwin#Robert Sephazon# #Community Management#Dragonheart91#Ammypendent#Karrde# #Special Thanks#Nommiin#Nathan 'wickedclown' Hess#Tyler Rogers#Kousoru#Infinity's End#CapCom#Isabelle Amponin#The " + global.monsterStr + " Community# # # # # #Source Code Reconstruction#YellowAfterlife# # #Continued Revisions# #Lead - Former#Gatordile#Alex 'Wanderer' Mack# #Lead#Lojemiru# #Development#Craig Kostelecky#" + global.monsterStr + "3D# #Art Lead#Dannon 'Shmegleskimo' Yates# #Art#ShirtyScarab#Cooper Garvin#Chris 'Messianic' Oliveira#ChloePlz# #Special Thanks#Banjo, Grom PE,#King Bore, Jean-Samuel Pelletier,#Reaku The Crate, Scooterboot, #Sylandro, TheKhaosDemon, #Unknown, Iwantdevil, #PixHammer, CaptGlitch,#Nokbient, EODTex,#Electrix, gponys,#Japanese Community# # # # # #Original " + global.monsterStr + " II Staff# #Producer#Gunpei Yokoi# #Director#Hiroji Kiyotake, Hiroyuki Kimura# #Main Programmer#Takahiro Harada# #Programmer#Masaru Yamanaka, Masao Yamamoto,#Isao Hirano# #Graphic Designer#Hiroji Kiyotake, Hiroyuki Kimura# #Program Assistant#Yuzuru Ogawa, Nobuhiro Ozaki# #Sound Programmer#Ryohji Yoshitomi# #Designer#Makoto Kanoh, Masafumi Sakashita,#Tomoyoshi Yamane, Takehiko Hosokawa,#Yasuo Inoue# #Debug#Masaru Okadaga, Kenji Nishizawa,#Hirofumi Matsuoka, Tohru Ohsawa,#Kohta Fukui, Keisuke Terasaki,#Kenichi Sugino, Hitoshi Yamagami,#Katsuya Yamaoe, Yuji Hori# #Multitroid Mod#milesthenerd, xzackly7#Jes Right, DodoBirb#Mimolette# #Re-Splashed Mod# #Lead#AbyssalCreature, Mystical# #Programming#TheyCallMeXander, DodoBirb#Princess Lucina, ssanoo#rm_steele, Mimolette_Mae# #Music#Kassil, seregauss#Pete Lepley# #Play-Testing#ANXVariable, Ehseezed#Kragondor, Bastion B-56#DruidVorse, aalex87#ShirtyScarab, LightSnake# #Clowns#Lojemiru, His Mods# # # # # # # #In Memory of Satoru Iwata"
yoffset = 0
fadeout = 0
canfadeout = 0
alarm[0] = 1
image_alpha = 0
if (global.creditsmenuopt == 1)
{
    alarm[2] = 300
    statetime = 500
    alarm[1] = 6600
}
else
{
    statetime = 0
    alarm[1] = 6850
}
if (os_type == os_android)
    os_powersave_enable(0)
widespace = oControl.widescreen * 53
if audio_is_playing(oMusicV2.currentbgm)
    audio_stop_sound(oMusicV2.currentbgm)
