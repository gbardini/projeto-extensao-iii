CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    telefone VARCHAR(20),
    observacoes TEXT
);

CREATE TABLE servicos_sobrancelha (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    duracao_min INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE agendamentos (
    id SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id),
    id_servico INT REFERENCES servicos_sobrancelha(id),
    data_hora TIMESTAMP NOT NULL,
    status VARCHAR(20) DEFAULT 'pendente',
    observacoes TEXT
);

CREATE TABLE materiais (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    quantidade DECIMAL(10,2),
    unidade VARCHAR(20)
);

CREATE TABLE materiais_usados (
    id SERIAL PRIMARY KEY,
    id_agendamento INT REFERENCES agendamentos(id),
    id_material INT REFERENCES materiais(id),
    quantidade_usada DECIMAL(10,2)
);
