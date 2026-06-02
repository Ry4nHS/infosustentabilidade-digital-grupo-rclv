CREATE TABLE pontos_coleta (
id_ponto SERIAL PRIMARY KEY,
nome_local VARCHAR(150) NOT NULL,
endereco VARCHAR(200) NOT NULL,
bairro VARCHAR(100),
cidade VARCHAR(100) NOT NULL,
contato VARCHAR(150),
link_maps TEXT,
observacao TEXT
);

CREATE TABLE materiais_aceitos (
id_material SERIAL PRIMARY KEY,
id_ponto INTEGER REFERENCES pontos_coleta(id_ponto),
tipo_material VARCHAR(100) NOT NULL,
aceita BOOLEAN DEFAULT TRUE,
observacao TEXT
);

CREATE TABLE procedimentos_descarte (
id_procedimento SERIAL PRIMARY KEY,
id_ponto INTEGER REFERENCES pontos_coleta(id_ponto),
horario_funcionamento VARCHAR(150),
precisa_agendamento BOOLEAN,
possui_custo BOOLEAN,
modalidade VARCHAR(50),
descricao_processo TEXT
);

CREATE TABLE evidencias (
id_evidencia SERIAL PRIMARY KEY,
id_ponto INTEGER REFERENCES pontos_coleta(id_ponto),
tipo_evidencia VARCHAR(50),
descricao TEXT,
arquivo_ou_link TEXT,
data_verificacao DATE
);

INSERT INTO pontos_coleta (nome_local, endereco, bairro, cidade, contato)
VALUES
('Secretaria de Agricultura e Meio Ambiente', 'Rua Expedicionário Rafael Busarello, 530', 'Padre Eduardo', 'Taió', '(47) 3562-8314'),
('Hztech Informática', 'Avenida Franz Xavier Mainhardt, 450', 'Padre Eduardo', 'Taió', '(47) 3562-2008');
('Secretaria Municipal de Meio Ambiente', 'Rua 11 de Março, 11', 'Centro', 'Ibirama', '(47) 3357-8500');
('Vivo', 'Rua Tiradentes, 324', 'Centro', 'Ibírama', '(47) 3300-2419');
('Ecoponto', 'Rua Dante Zonta, s/n', 'Estação', 'Ascurra', '(47) 3380-1345');
('Decosu Tecnológica', 'Rua Lúcio Marchi, 140', 'Saltinho', 'Ascurra', '(47) 9617-3036');
('Ecoponto', 'Rua 14 de Março, s/n', 'Centro', 'Rodeio', '(47) 3384-0161');








