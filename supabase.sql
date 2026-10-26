-- Rode no SQL Editor do Supabase (uma vez)
create table if not exists public.documents (
  path text primary key,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.documents enable row level security;

create policy "leitura publica" on public.documents for select to anon using (true);
create policy "insercao publica" on public.documents for insert to anon with check (true);
create policy "atualizacao publica" on public.documents for update to anon using (true) with check (true);
create policy "exclusao publica" on public.documents for delete to anon using (true);
