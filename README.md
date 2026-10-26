# Urna Fictícia

Site de eleições fictícias para brincadeira. Sem valor oficial.

## Arquivos
- `index.html`: o site inteiro (páginas, sons e lógica).
- `supabase.sql`: cria a tabela e as permissões no banco.

## Passo a passo

### 1. Banco (Supabase)
1. No painel do Supabase, abra o projeto e vá em **SQL Editor**.
2. Cole o conteúdo de `supabase.sql` e clique em **Run**.
3. Em **Project Settings → API**, copie a **Project URL** e a **anon public key**.

### 2. Configurar o site
Abra `index.html` e troque, no começo do script:

```js
const SUPABASE_URL = "https://SEU-PROJETO.supabase.co";
const SUPABASE_ANON_KEY = "SUA-ANON-KEY";
```

Não use a `service_role` key.

### 3. Subir no GitHub
1. Crie um repositório (ex.: `urnaeleitor`).
2. Envie os arquivos `index.html`, `supabase.sql` e `README.md`.

### 4. Publicar no Vercel
1. Em vercel.com, clique em **Add New → Project** e importe o repositório.
2. Framework: **Other**. Não precisa de build.
3. Clique em **Deploy**.

O endereço fica no formato `https://urnaeleitor.vercel.app` (o nome do projeto vira o subdomínio). Os links de votação e resultados usam esse endereço com `#código` no final.

## Observações
- As permissões do banco são abertas para quem tiver o site, o que é suficiente para uma brincadeira. Não use para dados sensíveis.
- Para atualizar o site, basta enviar um novo `index.html` ao repositório. O Vercel publica sozinho.
