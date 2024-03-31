var arrayIndex, subStr, line, i, j, strLength, nextChar;
text = (((((((("*Another " + global.monsterStr) + " 2 Remake;;;;;;;;;;;;*Producer;/Milton 'DoctorM64' Guasti;;*Graphic Design;Ramiro Negri=MichaelGabrielR;Jasper=Jack Witty;/Steve 'Sabre230' Rothlisberger;/Kirill '1Eni1' Fevralev;;*Promo Art;/Azima 'Zim' Khan;;*Writing;/James 'Ridley' Hobbs;/Paulo 'Latinlingo' Villalobos;;*Platform Engine Code;/Martin Piecyk;;*Music Composition;/Milton 'DoctorM64' Guasti;/Darren Kerwin;/Torbjørn 'Falcool' Brandrud;;*Debug;Dragondarch=Hemse;/Esteban 'DruidVorse' Criado;/Verneri 'Naatiska' Viljanen;;*Playtesting;Jennifer Potter=Mario Crestanello;Live4Truths=Nommiin;/Torbjørn 'Falcool' Brandrud;/Nicolas 'Skol' Del Negro;Lise Trehjørningen=Gabriel Kaplan;Darren Kerwin=Robert Sephazon;;*Community Management;Dragonheart91=Ammypendent;/Karrde;;*Special Thanks;Nommiin=Tyler Rogers;Kousoru=Infinity's End;Isabelle Amponin=CapCom;/Nathan 'wickedclown' Hess;/The ") + global.monsterStr) + " Community;;;;*Source Code Reconstruction;/YellowAfterlife;;;;*Continued Revisions;;*Development;Gatordile=Lojemiru;/Alex 'Wanderer' Mack;;*Programming;") + global.monsterStr) + "3D=Scooterboot;/Craig Kostelecky;/milesthenerd;;*Art Lead;/Dannon 'Shmegleskimo' Yates;;*Art;ShirtyScarab=Cooper Garvin;/Chris 'Messianic' Oliveira;/ChloePlz;;*Debug;Miepee=EODTex;/Esteban 'DruidVorse' Criado;/Verneri 'Naatiska' Viljanen;/Electrix;;*Localization;Imsu=Diegomg;m3Zz=LPCaiser;Miepee=unknown;fedprod=ReNext;LetsPlayNintendoITA=SadNES cITy e Vecna;Atver=Gponys;DarkEspeon=Vectrex28;R3VOWOOD=Ritinha;LiveLM=pMega0n;peachflavored=Katherine_S2003;PanHooHa=realgard;Mister Bond=joe_urahara;RippeR1692=LudvigNG;/Andréas;;*Special Thanks;Banjo=King Bore;Reaku the Crate=Grom PE;Sylandro=TheKhaosDemon;Iwantdevil=PixHammer;GaptGlitch=Nokbient;Nanassshy=kitronmacaron;/Jean-Samuel Pelletier;/Japanese Community;;;;*Original ") + global.monsterStr) + " II Staff;;*Producer;/Gunpei Yokoi;;*Director;Hiroji Kiyotake=Hiroyuki Kimura;;*Main Programmer;/Takahiro Harada;;*Programmer;Masaru Yamanaka=Masao Yamamoto;/Isao Hirano;;*Graphic Designer;Hiroji Kiyotake=Hiroyuki Kimura;;*Program Assistant;Yuzuru Ogawa=Nobuhiro Ozaki;;*Sound Programmer;/Ryohji Yoshitomi;;*Designer;Makoto Kanoh=Masafumi Sakashita;Tomoyoshi Yamane=Takehiko Hosokawa;/Yasuo Inoue;;*Debug;Masaru Okadaga=Kenji Nishizawa;Hirofumi Matsuoka=Tohru Ohsawa;Kohta Fukui=Keisuke Terasaki;Kenichi Sugino=Hitoshi Yamagami;Katsuya Yamaoe=Yuji Hori;;;;;;;;;;/In Memory of Satoru Iwata;")
TEXT_ROWS = string_count(";", text)
X_POS = (room_width / 2)
WIDE_SPACE = (oControl.widescreen_space / 2)
SCROLL_SPEED = ((TEXT_ROWS * -0.27) / 120)
arrayIndex = 0
subStr = ""
line = 0
for (i = 0; i < TEXT_ROWS; i++)
{
    for (j = 0; j < 4; j++)
        textArray[i, j] = ""
}
strLength = string_length(text)
for (i = 1; i <= strLength; i++)
{
    nextChar = string_char_at(text, i)
    if (nextChar == "=")
    {
        textArray[line, arrayIndex] = subStr
        subStr = ""
        arrayIndex = 1
    }
    else if (nextChar == ";")
    {
        textArray[line, arrayIndex] = subStr
        subStr = ""
        arrayIndex = 0
        line++
    }
    else if (nextChar == "/")
        arrayIndex = 2
    else if (nextChar == "*")
        arrayIndex = 3
    else
        subStr += nextChar
}
textLeft = ""
textRight = ""
textCenter = ""
textHeader = ""
for (i = 0; i < TEXT_ROWS; i++)
{
    textLeft += (textArray[i, 0] + "#")
    textRight += (textArray[i, 1] + "#")
    textCenter += (textArray[i, 2] + "#")
    textHeader += (textArray[i, 3] + "#")
}
yoffset = 0
fadeout = 0
canfadeout = 0
alarm[0] = 1
image_alpha = 0
if (global.creditsmenuopt == 1)
{
    alarm[2] = 300
    statetime = 500
    alarm[1] = 5500
}
else
{
    statetime = 0
    alarm[1] = 6000
}
if (os_type == os_android)
    os_powersave_enable(0)
