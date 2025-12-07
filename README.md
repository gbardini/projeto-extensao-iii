
---

# 🔵 **README — eyebrow-designer-app**

```markdown
# 🌟 Eyebrow Designer — Sistema de Agendamento e Controle de Materiais

Sistema focado em profissionais de **design de sobrancelhas**, com funções de **agendamento**, **controle de materiais** e **registro de serviços** aplicados.

---

## 🎯 Objetivo
Proporcionar um sistema simples e eficiente para:
- Cadastrar clientes
- Agendar serviços
- Controlar materiais (pigmentos, pinças, fios, etc.)
- Registrar consumo de materiais
- Visualizar histórico de atendimento

---

## 🗄️ Modelagem do Banco

O modelo de dados está disponível em:
`database.sql`

Tabelas:
- **clientes**
- **servicos_sobrancelha**
- **agendamentos**
- **materiais**
- **materiais_usados**

---

## 🏗️ Estrutura de Relacionamentos
- Cliente pode ter vários agendamentos
- Serviço pode estar em vários agendamentos
- Cada agendamento pode consumir diversos materiais

---

## 🚀 Requisitos Recomendados
- Banco: PostgreSQL
- Backend: Node.js, Python ou Java
- Mobile: Flutter ou React Native
- ORM: Prisma, Sequelize, TypeORM

---

## 📦 Importar o banco

```bash
psql -U usuario -d banco < database.sql
