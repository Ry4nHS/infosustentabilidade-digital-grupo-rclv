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
('Hztech Informática', 'Avenida Franz Xavier Mainhardt, 450', 'Padre Eduardo', 'Taió', '(47) 3562-2008'),
('Secretaria Municipal de Meio Ambiente', 'Rua 11 de Março, 11', 'Centro', 'Ibirama', '(47) 3357-8500'),
('Vivo', 'Rua Tiradentes, 324', 'Centro', 'Ibírama', '(47) 3300-2419'),
('Ecoponto', 'Rua Dante Zonta, s/n', 'Estação', 'Ascurra', '(47) 3380-1345'),
('Decosu Tecnológica', 'Rua Lúcio Marchi, 140', 'Saltinho', 'Ascurra', '(47) 9617-3036'),
('Ecoponto', 'Rua 14 de Março, s/n', 'Centro', 'Rodeio', '(47) 3384-0161');

INSERT INTO materiais_aceitos (id_ponto, tipo_material, aceita)
VALUES 
(1, 'Computadores, notebooks, celulares, impressoras, pilhas, baterias,
cabos, eletrodomésticos e eletroportáteis.', TRUE), 
(2, 'Computadores, notebooks, celulares, impressoras, televisões, monitores, pilhas, baterias, cabos, fontes, eletrodomésticos e eletroportáteis.', TRUE), 
(3, '"equipamentos de informática, celulares, carregadores, cabos, televisores, pilhas, baterias, eletroportáteis e outros resíduos eletrônicos."', TRUE),
(4, '"aparelhos celulares de qualquer marca, carregadores, cabos USB, baterias, fones de ouvido, acessórios eletrônicos, modems e pequenos equipamentos eletrônicos."', TRUE),
(5, 'Eletrônicos, pilhas e baterias.', TRUE),
(6, 'placas de circuito integrado e materiais eletrônicos.', TRUE),
(7, '"Resíduos recicláveis (metal, papel, plástico e vidro), óleo de cozinha, utilizado, móveis, eletrodomésticos, eletrônicos, lâmpadas, pilhas e baterias."', TRUE);

INSERT INTO procedimentos_descarte (id_ponto, horario_funcionamento, precisa_agendamento, possui_custo, modalidade, descricao_processo)
VALUES
(1, "Horário do Evento", FALSE, FALSE, "entregas", ""),
(2, "08:30 - 18:00", FALSE, FALSE, "entregas", ""),
(3, "07:00 - 16:00", FALSE, FALSE, "entregas", ""),
(4, "09:00 - 18:00", FALSE, FALSE, "entregas", ""),
(5, "07:30 - 17:00", FALSE, FALSE, "entregas", ""),
(6, "07:30 - 17:00", TRUE, TRUE, "ambos", ""),
(7, "08:00 - 12:00", FALSE, FALSE, "entregas", "");

INSERT INTO evidencias (id_ponto, tipo_evidencia, descricao, arquivo_ou_link, data_verificacao)
VALUES
(1, "Foto", "imagem do evento", "https://www.instagram.com/p/DSLJlrekbOc/?img_index=4", "2025-12-15"),
(2, "Foto", "imagem do local", "https://www.google.com/maps/dir//HZtech,+Av.+Franz+Xavier+Mainhardt,+450+-+Sala+C+-+Padre+Eduardo,+Tai%C3%B3+-+SC,+89190-000/@-27.2097801,-49.6402432,15z/data=!4m8!4m7!1m0!1m5!1m1!1s0x94de2aeda750a883:0xbe87dfee96ed6798!2m2!1d-49.9974557!2d-27.1187551?entry=ttu&g_ep=EgoyMDI2MDUyMC4wIKXMDSoASAFQAw%3D%3D", "2026-05-25"),
(3, "Foto", "imagem do local", "https://www.google.com/local/place/fid/0x94e01fa8d496cb33:0xff59d75584ffd000/photosphere?iu=https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid%3DxFad56kaxtFuo8UBZmqSqQ%26cb_client%3Dsearch.gws-prod.gps%26yaw%3D337.4035%26pitch%3D0%26thumbfov%3D100%26w%3D0%26h%3D0&ik=CAISFnhGYWQ1NmtheHRGdW84VUJabXFTcVE%3D&sa=X&ved=2ahUKEwjG3aegitiUAxVFrpUCHWvYFaEQpx96BAhDEBI", "2026-05-22"),
(4, "Foto", "imagem do local", "https://www.google.com/local/place/fid/0x94e01fa8d496cb33:0xff59d75584ffd000/photosphere?iu=https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid%3DxFad56kaxtFuo8UBZmqSqQ%26cb_client%3Dsearch.gws-prod.gps%26yaw%3D337.4035%26pitch%3D0%26thumbfov%3D100%26w%3D0%26h%3D0&ik=CAISFnhGYWQ1NmtheHRGdW84VUJabXFTcVE%3D&sa=X&ved=2ahUKEwjG3aegitiUAxVFrpUCHWvYFaEQpx96BAhDEBI", "20256-05-22"),
(5, "Foto", "imagem do local", "https://maps.app.goo.gl/Yg8TPHaaE6Rh4BiY7", "2026-05-13"),
(6, "Foto", "imagem do local", "https://maps.app.goo.gl/Fj5uTEwwVeLdfbJn7", "2026-05-13"),
(7, "Foto", "imagem do local", "https://maps.app.goo.gl/tNmZ4qKK6eNAmECa6", "2026-05-26");


