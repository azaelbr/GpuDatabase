--tabela das placas de video

CREATE TABLE Placas_de_video (
	GpuID numeric PRIMARY KEY not null,
	Modelo nvarchar(255) not null,
	Fabricante nvarchar(255) not null,
	Datalancamento date not null,
	PrecoLancamento numeric(10,2),
	PrecoAtual numeric(10,2),
	DataPrecoAtualizado date
);

--tabela de especificacoes 

CREATE TABLE  Especificacoes (
	EspecificacaoID numeric PRIMARY KEY not null,
	GpuID numeric not null,
	ClockBoost numeric(8,2),
	ClockGPU numeric(8,2),
	ClockMemoria numeric(8,2),
	Memoria numeric(8,2),
	LarguraBandaMemoria numeric(8,2),
	Nucleos numeric(8)
);

--Tabela de potencia

CREATE TABLE  PotenciaGpu (
	PotenciaID numeric PRIMARY KEY not null,
	GpuID numeric not null,
	ConsumoStock numeric(8,2),
	ConsumoAVG numeric(8,2),
	PotMedia1080p numeric(8,2),
	PotMedia1440p numeric(8,2),
	PotMedia2160p numeric(8,2)
);

--Tabela de testes

CREATE TABLE DesempenhoGpu (
    TesteID numeric PRIMARY KEY NOT NULL,
    GpuID numeric NOT NULL,
    Jogo nvarchar(255), 
    Resolucao nvarchar(20), 
    DataTeste date, 
    FPSMedio numeric(8, 2), 
    FPSMinimo numeric(8, 2), 
    OutrasInformacoes nvarchar(max) 
);

--tabela de custo por frame

CREATE TABLE CustoPorFrame (
    CustoPorFrameID numeric PRIMARY KEY NOT NULL,
    GpuID numeric NOT NULL,
    Jogo nvarchar(255),
    Resolucao nvarchar(20),
    CustoPorFrame numeric(10, 2), --
    OutrasInformacoes nvarchar(max)
);
