local scriptVersion = "1.2.1"
local scriptAuthor = "Ygor Is"

local atvScript = 1
local ativacao = 1
local database = require "TowshipDB"


function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

local skinsResult = {}

for numeror=1, tablelength(skinsdb), 1 do
    skinsResult[numeror] = skinsdb[numeror].name
end

local itensResult = {}

for numeror=1, tablelength(itensdb), 1 do
    itensResult[numeror] = itensdb[numeror].name
end

function mainMenu()
    local mainM =
        gg.choice(
        {
            "➲ Opções",
            "➲ Opções De Tempo",
            "➲ Tools",
            "➲ Skins Rewards",
            "➲ Itens Rewards",
            "➲ Sair"
        },
        nil
    )
    gg.processResume()
    if mainM == 1 then
        gameOpitions()
    end
    if mainM == 2 then
        timeOptions()
    end
    if mainM == 3 then
        toolsGame()
    end
    if mainM == 4 then
        menuBase = 1
        baseConfigRewards()
    end
    if mainM == 5 then
        menuBase = 2
        baseConfigRewards()
    end
    if mainM == 6 then
        exitScript()
    end
    if mainM == nil then
    else
    end
    gg.processResume()
    atvScript = -1
end

function bdvipR()
    bdvipRM =
        gg.multiChoice(
        {
            "Premio 01 Celeiro +10%",
            "Premio 02 Esmeralda x1",
            "Premio 03 Oficina do Papai Noel",
            "Premio 04 Cupom de carga",
            "Premio 05 Balão mágico",
            "Premio 06 Tinta vermelha",
            "Premio 07 Vagões espaçosos 2",
            "Premio 08 Trem de Natal Skin",
            "Premio 09 Cupom de Fornecedore",
            "Premio 10 Mercado Generoso",
            "Premio 11 Notas x5",
            "Premio 12 Construção Rapida -30%",
            "Premio 13 Machado",
            "Premio 14 Celeiro +15%",
            "Premio 15 Estação de Natal",
            "Premio 16 Baralho Épico",
            "Premio 17 Negocio Atarefado",
            "Premio 18 Vagões espaçosos 2",
            "Premio 19 Rubi x2",
            "Premio 20 Galinha Patinadora Sticker",
            "Premio 21 Notas x10",
            "Premio 22 Cupom de Recarga x3",
            "Premio 23 Construção Rápida -60%",
            "Premio 24 Martelo x2",
            "Premio 25 Fontes Termais",
            "Premio 26 Atalho",
            "Premio 27 Celeiro Espaçoso +20%",
            "Premio 28 Baralho Épico x50",
            "Premio 29 Notas x15",
            "Premio 30 Castelo de Gelo",
            "Premio 31 Melhoria para trem",
            "Premio 32 Vagões espaçosos 3",
            "Premio 33 Abelha Elfica Sticker",
            "Premio 34 Cupom melhoria Celeiro",
            "Premio 35 Notas x50",
            "Voltar"
        },
        nil,
        "Selecione Os premios Que deseja pegar Novamente."
    )
    if bdvipRM == nil then
    else
        if bdvipRM[01] == true then
            bdvipRMs("1;25;49;0;23::25")
        end
        if bdvipRM[02] == true then
            bdvipRMs("1;50;1835362056;50;0::25")
        end
        if bdvipRM[03] == true then
            bdvipRMs("1;75;1987003156;1197437541;7628393::25")
        end
        if bdvipRM[04] == true then
            bdvipRMs("1;100;1970225964;1282305904;1415864687::25")
        end
        if bdvipRM[05] == true then
            bdvipRMs("1;125;1768649514;1633836910;1852796780::25")
        end
        if bdvipRM[06] == true then
            bdvipRMs("1;185;1767993366;1699902574;1952533860:25")
        end
        if bdvipRM[07] == true then
            bdvipRMs("1;245;1599099682;1936682818;1634882676:25")
        end
        if bdvipRM[08] == true then
            bdvipRMs("1;305;1768641320;1918132078;1601071457::25")
        end
        if bdvipRM[09] == true then
            bdvipRMs("1;365;1970225952;1215197040;1147499113::25")
        end
        if bdvipRM[10] == true then
            bdvipRMs("1;425;1599099680;1802658125;1917875301::25")
        end
        if bdvipRM[11] == true then
            bdvipRMs("1;545;1935762184;104;0::25")
        end
        if bdvipRM[12] == true then
            bdvipRMs("1;665;49;0;24::25")
        end
        if bdvipRM[13] == true then
            bdvipRMs("1;785;1702387974;0;0::25")
        end
        if bdvipRM[14] == true then
            bdvipRMs("1;905;49;0;23::25")
        end
        if bdvipRM[15] == true then
            bdvipRMs("1;1025;49;0;27::25")
        end
        if bdvipRM[16] == true then
            bdvipRMs("1;1145;1667589162;876236395;977480752::25")
        end
        if bdvipRM[17] == true then
            bdvipRMs("1;1265;1869562404;1884517491;1432642917::25")
        end
        if bdvipRM[18] == true then
            bdvipRMs("1;1385;1599099682;1936682818;1634882676::25")
        end
        if bdvipRM[19] == true then
            bdvipRMs("1;1505;1835362056;51;0::25")
        end
        if bdvipRM[20] == true then
            bdvipRMs("1;1625;1869440276;1935632746;3682676::25")
        end
        if bdvipRM[21] == true then
            bdvipRMs("1;1815;1935762184;104;0::25")
        end
        if bdvipRM[22] == true then
            bdvipRMs("1;2.005;33;22;-1.477.243.168::25")
        end
        if bdvipRM[23] == true then
            bdvipRMs("1;2195;49;0;24::25")
        end
        if bdvipRM[24] == true then
            bdvipRMs("1;2385;1835100178;1299342701;29793::25")
        end
        if bdvipRM[25] == true then
            bdvipRMs("1;2575;1953450008;1970226783;1767994478::25")
        end
        if bdvipRM[26] == true then
            bdvipRMs("1;2765;1869562404;1884517491;1432642917::25")
        end
        if bdvipRM[27] == true then
            bdvipRMs("1;2955;49;0;23::25")
        end
        if bdvipRM[28] == true then
            bdvipRMs("1;3145;1667589160;893013611;977480752::25")
        end
        if bdvipRM[29] == true then
            bdvipRMs("1;3335;1935762184;104;0::25")
        end
        if bdvipRM[30] == true then
            bdvipRMs("1;3525;49;0;23::25")
        end
        if bdvipRM[31] == true then
            bdvipRMs("1;3780;1970225956;1433300848;1634887536::25")
        end
        if bdvipRM[32] == true then
            bdvipRMs("1;4035;1599099682;1936682818;1634882676::25")
        end
        if bdvipRM[33] == true then
            bdvipRMs("1;4290;1869440276;1935632746;3551604::25")
        end
        if bdvipRM[34] == true then
            bdvipRMs("1;4545;1701996056;1651327333;1850307169::25")
        end
        if bdvipRM[35] == true then
            bdvipRMs("1;4800;1935762184;104;0::25")
        end
        if bdvipRM[36] == true then
            mainMenu()
        end
    end
end

function bdlowR()
    bdvipRM =
        gg.multiChoice(
        {
            "Premio 01 Cupom Do Fornecedor",
            "Premio 02 Lingote De Bronze",
            "Premio 03 Tijolos",
            "Premio 04 Picareta ",
            "Premio 05 Machado ",
            "Premio 06 Dinamite x1",
            "Premio 07 Cupom de produtos x1",
            "Premio 08 Topazio",
            "Premio 09 Baralho comum",
            "Premio 10 Ovelha Feliz Sticker",
            "Premio 11 Picareta",
            "Premio 12 Moedas",
            "Premio 13 Cupom Do Fornecedor",
            "Premio 14 Pá Construção",
            "Premio 15 Super Colheita",
            "Premio 16 Lingote De Prata",
            "Premio 17 Laje Construção",
            "Premio 18 Ouro x16.000",
            "Premio 19 Baralho Raro x20",
            "Premio 20 Casa De Biscoitos Decoração",
            "Premio 21 Dinamite x2",
            "Premio 22 Cupom Esmeralda x2",
            "Premio 23 Balde De Tinta",
            "Premio 24 Cupom De Produtos",
            "Premio 25 Ouro x28.000",
            "Premio 26 Vidro x3 Construção",
            "Premio 27 Tnt Mina x3",
            "Premio 28 Lingote De Ouro",
            "Premio 29 Baralho Raro x30",
            "Premio 30 Iluminação Mina",
            "Premio 31 Rubi x3",
            "Premio 32 Cupom De Expansão",
            "Premio 33 Lingote De Platina",
            "Premio 34 Notas x20",
            "Premio 35 Foto De Natal",
            "Voltar "
        },
        nil,
        "Selecione Os premios Que deseja pegar Novamente."
    )
    if bdvipRM == nil then
    else
        if bdvipRM[1] == true then
            bdComunRMs("1;25;1970225952;1215197040;1147499113::25")
        end
        if bdvipRM[2] == true then
            bdComunRMs("1;50;1869759016;1113946734;1768713333::25")
        end
        if bdvipRM[3] == true then
            bdComunRMs("1;75;1769095690;27491;0::25")
        end
        if bdvipRM[4] == true then
            bdComunRMs("1;100;3304708;0;0::25")
        end
        if bdvipRM[5] == true then
            bdComunRMs("1;125;1702387974;0;0::25")
        end
        if bdvipRM[6] == true then
            bdComunRMs("1;185;3370244;0;0::25")
        end
        if bdvipRM[7] == true then
            bdComunRMs("1;245;1970225964;1282305904;1415864687::25")
        end
        if bdvipRM[8] == true then
            bdComunRMs("1;305;1835362056;49;0::25")
        end
        if bdvipRM[9] == true then
            bdComunRMs("1;365;1667589162;825904747;977480752::25")
        end
        if bdvipRM[10] == true then
            bdComunRMs("1;425;1869440276;1935632746;3617140::25")
        end
        if bdvipRM[11] == true then
            bdComunRMs("1;545;3304708;0;0::25")
        end
        if bdvipRM[12] == true then
            bdComunRMs("1;1;665;1768907530;29550;0::25")
        end
        if bdvipRM[13] == true then
            bdComunRMs("1;785;1970225952;1215197040;1147499113::25")
        end
        if bdvipRM[14] == true then
            bdComunRMs("1;905;1667854344;107;0::25")
        end
        if bdvipRM[15] == true then
            bdComunRMs("1;1025;1869562406;1917875315;1668637807::25")
        end
        if bdvipRM[16] == true then
            bdComunRMs("1;1145;1818841896;1114793334;1768713333::25")
        end
        if bdvipRM[17] == true then
            bdComunRMs("1;1265;1768706058;24948;0:25")
        end
        if bdvipRM[18] == true then
            bdComunRMs("1;1385;1768907530;29550;0::25")
        end
        if bdvipRM[19] == true then
            bdComunRMs("1;1505;1667589162;842681963;977480752::25")
        end
        if bdvipRM[20] == true then
            bdComunRMs("1;1625;1852393240;1601332583;1937076040::25")
        end
        if bdvipRM[21] == true then
            bdComunRMs("1;1815;3370244;0;0::25")
        end
        if bdvipRM[22] == true then
            bdComunRMs("1;2005;1835362056;50;0::25")
        end
        if bdvipRM[23] == true then
            bdComunRMs("1;2195;1767993366;1699902574;1952533860::25")
        end
        if bdvipRM[24] == true then
            bdComunRMs("1;2385;1970225964;1282305904;1415864687::25")
        end
        if bdvipRM[25] == true then
            bdComunRMs("1;2575;1768907530;29550;0::25")
        end
        if bdvipRM[26] == true then
            bdComunRMs("1;2765;1634486026;29555;0::25")
        end
        if bdvipRM[27] == true then
            bdComunRMs("1;2955;3239172;0;0::25")
        end
        if bdvipRM[28] == true then
            bdComunRMs("1;3145;1819232036;1819624036;1852795244::25")
        end
        if bdvipRM[29] == true then
            bdComunRMs("1;3335;1667589160;859459179;977480752::25")
        end
        if bdvipRM[30] == true then
            bdComunRMs("1;3525;1869562400;1632400499;1919251566::25")
        end
        if bdvipRM[31] == true then
            bdComunRMs("1;3780;1835362056;51;0::25")
        end
        if bdvipRM[32] == true then
            bdComunRMs("1;4035;1701996058;1886930277;1769172577::25")
        end
        if bdvipRM[33] == true then
            bdComunRMs("1;4290;1634488364;1970170228;1819624045::25")
        end
        if bdvipRM[34] == true then
            bdComunRMs("1;1935762184;104;0::25")
        end
        if bdvipRM[35] == true then
            bdComunRMs("1;4800;1635148044;3355698;0::25")
        end
        if bdvipRM[36] == true then
            mainMenu()
        end
    end
end



function gameOpitions()
    local toolsM =
        gg.choice(
        {
            "➲ Free Up Celeiro ",
            "➲ Voltar"
        },
        nil
    )
    if toolsM == 1 then
        armazemUp()
    end
    if toolsM == 2 then
        mainMenu()
    end
end

function timeOptions()
    local timeOptionsM =
        gg.multiChoice(
        {
            " Zerar Plantações",
            " Nivel 1 trens ",
            " fundição De Lingotes",
            " Fabrica de doces",
            " Confeitaria",
            " Restaurante mexicano",
            " Fábrica De Salgados",
            " Fábrica De Bebidas",
            " Fábrica De Sorvete",
            " Fábrica De Geleia",
            " Voltar"
        },
        nil
    )
    if timeOptionsM[01] == true then
        plantacoesZero()
    end
    if timeOptionsM[02] == true then
        ferroviaTime()
    end
    if timeOptionsM[03] == true then
        fundicaoZero()
    end
    if timeOptionsM[04] == true then
        docesZero()
    end
    if timeOptionsM[05] == true then
        confeitariaZero()
    end
    if timeOptionsM[06] == true then
        restauranteMexZero()
    end
    if timeOptionsM[07] == true then
        fabricaSalgadosTime()
    end
    if timeOptionsM[08] == true then
        fabricaDeBebidasTime()
    end
    if timeOptionsM[09] == true then
        fabricaDeSorveteTime()
    end
    if timeOptionsM[10] == true then
        fabricaDeGeleiaTime()
    end
    if timeOptionsM[11] == true then
        mainMenu()
    end
end


function toolsGame()
    local toolsGameM =
        gg.choice(
        {
            "➲ Bilhete Vip ",
            "➲ Parte de Cima Do Bilhete ",
            "➲ Parte de Baixo Do Bilhete ",
            "➲ Voltar"
        },
        nil
    )
    if toolsGameM == 01 then
        bilheteVip()
    end
    if toolsGameM == 02 then
        bdvipR()
    end
    if toolsGameM == 03 then
        bdlowR()
    end
    if toolsGameM == 04 then
        mainMenu()
    end
end


-------------------

--// Game Options

-------------------

function armazemUp()
    gg.clearResults()
    gg.alert("Este processo leva em torno de 1 a 5 minutos dependendo do dispositivo.\n\nClick Ok para continuar..")
    gg.setRanges(MemoriRegion)
    gg.searchNumber(
        "1;1;1;2;2;2;3;3;3;4;4;4;5;5;5;6;6;6;7;7;7;8;8;8;9;9;9;10;10;10;11;11;11;12;12;12;13;13;13;14;14;14;15;15;15;16;16;16;17;17;17;18;18;18;19;19;19;20;20;20;21;21;21::649",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(
        "22;22;22;23;23;23;24;24;24;25;25;25;26;26;26;27;27;27;28;28;28;29;29;29;30;30;30;31;31;31;32;32;32;33;33;33;34;34;34;35;35;35;36;36;36;37;37;37;38;38;38;39;39;39;40;40;40;41;41;41;42;42;42::649",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.searchNumber(
        "43;43;43;44;44;44;45;45;45;46;46;46;47;47;47;48;48;48;49;49;49;50;50;50;51;51;51;52;52;52;53;53;53;54;54;54;55;55;55;56;56;56;57;57::453",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(
        "57;58;58;58;59;59;59;60;60;60;61;61;61;62;62;62;63;63;63;64;64;64;65;65;65;66;66;66;67;67;67;68;68;68;69;69;69;70;70;70;71;71;71;72;72;72;73;73;73;74;74;74;75;75;75;76;76;76;77;77;77;78;78;78::673",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(
        "79;79;79;80;80;80;81;81;81;82;82;82;83;83;83;84;84;84;85;85;85;86;86;86;87;87;87;88;88;88;89;89;89;90;90;90;91;91;91;92;92;92;93;93;93;94;94;94;95;95;95;96;96;96;97;97;97;98;98;98;99;99;99::649",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.alert("Up free level 99 Max.")
    gg.clearResults()
end
-------------------

--// Time

-------------------
function ZeroTwh()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALOC)
    gg.searchNumber("", gg.TYPE_DWORD)
end

function productionZero()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(
        "1187307520;1185464320;1183621120;1133903872;1147207680;1155596288;1161527296;1159069696;1159069696;1159069696;1161527296;1172373504;1163984896;1168687104;1175232512;1166843904;1155596288;1175232512;1168687104;1163984896;1159069696;1172373504;1147207680;1167458304;1160298496::2785",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function fundicaoZero()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("1163984896;1172373504;1177075712;1180762112::289", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function docesZero()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("1172373504;1170530304;1177075712;1180762112;1175232512;1183621120;1182605312::865", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function confeitariaZero()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(
        "1155596288;1159069696;1163984896;1163984896;1168687104;1177075712;1163984896;1168687104::1153",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function restauranteMexZero()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("1172373504;1163984896;1177075712;1168687104;1172373504;1175232512;1170530304::577", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function plantacoesZero()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(
        "1123024896;1133903872;1142292480;1153138688;1153138688;1153138688;1150681088;1155596288;1163984896;1172373504;1177075712;1180762112;1189150720;1193852928;1196617728;1183621120;1167458304;1175232512::4897",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function fabricaSalgadosTime()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(
        "1155596288;1163984896;1159069696;1172373504;1147207680;1167458304;1160298496;1170530304;1168687104::1345",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function fabricaDeBebidasTime()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("1155596288;1163984896;1168687.104::193", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function fabricaDeGeleiaTime()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("1168687104;1175232512;1177075712;1180762112;1178918912;1172373504;1170530304:577", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function fabricaDeSorveteTime()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(
        "1155596288;1168687104;1177075712;1180762112;1163984896;1175232512;1172373504;1178918912::961",
        gg.TYPE_DWORD
    )
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function restauranteMexZero()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("1175232512;1177075712;1180762112;1178918912;1172373504;1170530304::481", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.searchNumber("1175232512;1168687104;1172373504;1170530304;1168687104:385", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function ferroviaTime()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("1183006720;1970090260::9", gg.TYPE_DWORD)
    gg.refineNumber("1183006720", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("1182298112;1970090260::9", gg.TYPE_DWORD)
    gg.refineNumber("1182298112", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("1183467520;1970090260::9", gg.TYPE_DWORD)
    gg.refineNumber("1183467520", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.alert("Zerar")
end
-------------------

--// TooLs

-------------------
function bilheteVip()
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber("0;1768641320::5", gg.TYPE_DWORD)
    gg.refineNumber("0", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("1", gg.TYPE_DWORD)
    gg.alert("Bilhete Vip Ativo!")
    gg.clearResults()
end

function bdvipRMs(valor)
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(valor, gg.TYPE_DWORD)
    gg.refineNumber("1", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function bdComunRMs(valor)
    gg.clearResults()
    gg.setRanges(MemoriRegion)
    gg.searchNumber(valor, gg.TYPE_DWORD)
    gg.refineNumber("1", gg.TYPE_DWORD)
    gg.getResults(gg.getResultsCount())
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
end

function exitScript()
    gg["skipRestoreState"]()
    gg["setVisible"](true)
    gg.clearResults()
    gg.clearList()
    os["exit"]()
end

-------------------

--// SKINS

-------------------

function baseConfigRewards()
    local baseMenu =
        gg.choice(
        {
            "➲ Notas Da parte de cima do Bilhete.",
            "➲ Foto De natal Parte de Baixo do Bilhete."
        },
        nil,
       "Selecione Um Item Para Usar Como Base."
    )
    if baseMenu == 01 then
        defineFlags(0,1)
    end
    if baseMenu == 02 then
        defineFlags(0,2)
    end
end


function defineFlags(opem,SearchT)
   local flagsOn = 0
   if opem == 1 then
    if SearchTag == 1 then
        valorFlag("1935762184", "104", "0", "0", "0", "0","50", flagsOn)
    else
        valorFlag("1635148044","3355698","0","0","0","0","1", flagsOn)
    end
   else
    if SearchT == 1 then
        skinRewardSearch("1;4800;1935762184;104;0;0;0;0::37")
        SearchTag = 1
    end
    if SearchT == 2 then
        skinRewardSearch("1;4800;1635148044;3355698;0;0;0;0::37")
        SearchTag = 2
    end
  end
end


function skinRewardSearch(Search)
    gg.clearResults()
    gg.searchNumber(Search, gg.TYPE_DWORD)
    gg.refineNumber("4800")
    result = gg.getResults(gg.getResultsCount())
    if menuBase == 1 then
    skinsMenu()
    end
    if menuBase == 2 then
    itensMenu()
    end
    -- if result[1].value != 4800 then gg.toast("Resultado Inválido!!")
end


function valorFlag(valor01, valor02, valor03, valor04, valor05, valor06,valor08, flagsOn)
    local valor_01 = {}
    valor_01[1] = {}
    valor_01[1].address = result[1].address + 0x4
    valor_01[1].flags = gg.TYPE_DWORD
    valor_01[1].value = valor01
    valor_01[1].freeze = false
    gg.setValues(valor_01)

    local valor_02 = {}
    valor_02[1] = {}
    valor_02[1].address = result[1].address + 0x8
    valor_02[1].flags = gg.TYPE_DWORD
    valor_02[1].value = valor02
    valor_02[1].freeze = false
    gg.setValues(valor_02)

    local valor_03 = {}
    valor_03[1] = {}
    valor_03[1].address = result[1].address + 0xC
    valor_03[1].flags = gg.TYPE_DWORD
    valor_03[1].value = valor03
    valor_03[1].freeze = false
    gg.setValues(valor_03)

    local valor_04 = {}
    valor_04[1] = {}
    valor_04[1].address = result[1].address + 0x10
    valor_04[1].flags = gg.TYPE_DWORD
    valor_04[1].value = valor04
    valor_04[1].freeze = false
    gg.setValues(valor_04)

    local valor_05 = {}
    valor_05[1] = {}
    valor_05[1].address = result[1].address + 0x14
    valor_05[1].flags = gg.TYPE_DWORD
    valor_05[1].value = valor05
    valor_05[1].freeze = false
    gg.setValues(valor_05)

    local valor_06 = {}
    valor_06[1] = {}
    valor_06[1].address = result[1].address + 0x18
    valor_06[1].flags = gg.TYPE_DWORD
    valor_06[1].value = valor06
    valor_06[1].freeze = false
    gg.setValues(valor_06)

    local valor_07 = {}
    valor_07[1] = {}
    valor_07[1].address = result[1].address - 0xc
    valor_07[1].flags = gg.TYPE_DWORD
    valor_07[1].value = 0
    valor_07[1].freeze = true
    gg.setValues(valor_07)
    
    local valor_08 = {}
    valor_08[1] = {}
    valor_08[1].address = result[1].address + 0x1C
    valor_08[1].flags = gg.TYPE_DWORD
    valor_08[1].value = 0
    valor_08[1].freeze = false
    gg.setValues(valor_08)

    local valor_09 = {}
    valor_09[1] = {}
    valor_09[1].address = result[1].address + 0x20
    valor_09[1].flags = gg.TYPE_DWORD
    valor_09[1].value = valor08
    valor_09[1].freeze = true
    gg.setValues(valor_09)
    if flagsOn == 1 then
        reflashFlags(1,SearchTag)
    else
        ativacao = 1
    end
end



function skinsMenu()
   local MenuSkins =
       gg.choice(
        skinsResult,
        nil,
      "ϟSelecione uma skin!ϟ"
    )
  if MenuSkins == nil then
   else
    if MenuSkins == tablelength(skinsdb) then
       reflashFlags(SearchTag)
    else
      valorFlag(skinsdb[MenuSkins].value1,skinsdb[MenuSkins].value2,skinsdb[MenuSkins].value3,skinsdb[MenuSkins].value4,skinsdb[MenuSkins].value5,skinsdb[MenuSkins].value6,skinsdb[MenuSkins].value7,skinsdb[MenuSkins].flagsOn)
      reflashFlags(SearchTag)
    end
  end
end

function itensMenu()
   local MenuItens =
       gg.choice(
        skinsResult,
        nil,
      "ϟSelecione um Item!ϟ"
    )
  if MenuItens == nil then
   else
    if MenuItens == tablelength(itensdb) then
       reflashFlags(SearchTag)
    else
      valorFlag(itensdb[MenuSkins].value1,itensdb[MenuSkins].value2,itensdb[MenuSkins].value3,itensdb[MenuSkins].value4,itensdb[MenuSkins].value5,itensdb[MenuSkins].value6,itensdb[MenuSkins].value7,itensdb[MenuSkins].flagsOn)
      reflashFlags(SearchTag)
    end
  end
end

-- function skinsMenu()
   -- local skinsM =
       -- gg.choice(
        -- {
            -- "➲ Estação Discoteca ", -- 1
            -- "➲ skin ", --2
            -- "➲ skin ", --3
            -- "➲ skin ", --4
            -- "➲ Voltar" 
        -- },
        -- nil,
      -- "ϟSelecione uma skin!ϟ"
    -- )
  -- local flagsOn = 1
  -- if skinsM == nil then
   -- else
    -- if skinsM == 01 then
        -- valorFlag("1768641322", "1918132078", "1399744865", "1769234804", "1398763119", "14416","1", flagsOn)
    -- end
    -- if skinsM == 02 then
        -- valorFlag("1768641316", "1651327333", "1919905906", "1769234804", "1886609268", "6644577","1", flagsOn)
    -- end
    -- if skinsM == 03 then
        -- valorFlag("1701996056", "1765891950", "1850307169", "99", "0", "0","1", flagsOn)
    -- end
    -- if skinsM == 04 then
        -- valorFlag("1701996056", "1765891950", "1850307169", "99", "0", "0","1", flagsOn)
    -- end
    -- if skinsM == 05 then
        -- reflashFlags(SearchTag)
    -- end
  -- end
-- end




-- function itensMenu()
   -- local skinsM =
       -- gg.choice(
        -- {
            -- "➲ Notas 1000x ",
            -- "➲ Ouro  300000x ",
            -- "➲ Cartão Melhoria Celeiro 500x",
            -- "➲ Cartão De Carga 500x",
            -- "➲ Cartão De Expansão 500x",
            -- "➲ Cartão Do Fornecedor 500x",
            -- "➲ Cartão Melhoria de fabrica 500x (perigo)",
            -- "➲ Cartão Melhoria de Ilha 500x (perigo)",
            -- "➲ Cartão Melhoria de Tren 500x (perigo)",
            -- "➲ Construção Rápida -100%",
            -- "➲ Voutar"
        -- },
        -- nil,
      -- "ϟSelecione um item!ϟ"
    -- )
  -- local flagsOn = 1
  -- if skinsM == nil then
   -- else
    -- if skinsM == 01 then
        -- valorFlag("1935762184", "104", "0", "0", "0", "0","1000", flagsOn)
    -- end
    -- if skinsM == 02 then
        -- valorFlag("1768907530", "29550", "0", "0","0", "0","300000", flagsOn)
    -- end
    -- if skinsM == 03 then
        -- valorFlag("1701996056", "1651327333", "1850307169", "99", "0", "0","500", flagsOn)
    -- end
    -- if skinsM == 04 then
        -- valorFlag("1970225964", "1282305904", "1415864687", "1852399986", "1886546241", "7631471","500", flagsOn)
    -- end
    -- if skinsM == 05 then
        -- valorFlag("1701996058", "1886930277", "1769172577", "28271", "0", "0","500", flagsOn)
    -- end
    -- if skinsM == 06 then
        -- valorFlag("1970225952", "1215197040", "1147499113", "1701601637", "114", "0","500", flagsOn)
    -- end
    -- if skinsM == 07 then
        -- valorFlag("1970225960", "1433300848", "1634887536", "1632003428", "1919906915", "21","500", flagsOn)
    -- end
    -- if skinsM == 08 then
        -- valorFlag("197022595", "1433300848", "1634887536", "1918133604", "7235937", "0","500", flagsOn)
    -- end
    
    -- if skinsM == 09 then
        -- valorFlag("1970225956", "1433300848", "1634887536", "1934189924", "1684955500", "0","500", flagsOn)
    -- end
    -- if skinsM == 10 then
        -- valorFlag("49", "24", "0", "1531928864", "0", "126","100", flagsOn)
    -- end
    -- if skinsM == 11 then
        -- reflashFlags(SearchTag)
    -- end
  -- end
-- end


function reflashFlags(SearchTag)
    local reflashFlagsM =
        gg.choice(
        {
            "➲ Reset Flags",
            "➲ Selecionar ",
            "➲ Resgatar"
        },
        nil
    )
    gg.processResume()
    local flagsOn = 0
    if reflashFlagsM == 1 then
        defineFlags(1,SearchTag)
        print(SearchTag)
    end
    if reflashFlagsM == 2 then
       if menuBase == 1 then
        skinsMenu()
       end
       if menuBase == 2 then
        itensMenu()
       end
        ativacao = 2
    end
    if reflashFlagsM == 3 then
        ativacao = 2
    end
    gg.processResume()
    atvScript = -1
end



while true do
    if gg.isVisible(true) then
        atvScript = ativacao
        gg.setVisible(false)
    end

    if atvScript == 01 then
        mainMenu()
    end
    if atvScript == 02 then
        reflashFlags()
    end
end
