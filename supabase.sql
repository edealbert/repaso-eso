-- Crea la tabla del progreso de la web "Repaso 2º ESO".
-- Supabase > SQL Editor > New query > pega esto > Run
create table if not exists public.eso_progreso (
  id text primary key,                 -- 'daniela', 'alba' o 'papa'
  datos jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.eso_progreso enable row level security;
drop policy if exists "eso leer" on public.eso_progreso;
drop policy if exists "eso escribir" on public.eso_progreso;
drop policy if exists "eso actualizar" on public.eso_progreso;
create policy "eso leer" on public.eso_progreso for select to anon using (id in ('daniela','alba','papa'));
create policy "eso escribir" on public.eso_progreso for insert to anon with check (id in ('daniela','alba','papa'));
create policy "eso actualizar" on public.eso_progreso for update to anon using (id in ('daniela','alba','papa')) with check (id in ('daniela','alba','papa'));
