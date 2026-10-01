-- Run once in Supabase → SQL editor. Creates the two tables the prototype uses.
create table if not exists hm_event (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz default now()
);
create table if not exists hm_tickets (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz default now()
);
alter table hm_event enable row level security;
alter table hm_tickets enable row level security;
-- Prototype-only policies: anyone with the anon key can read and write.
-- The production build replaces these with per-role rules.
create policy "proto read event" on hm_event for select using (true);
create policy "proto write event" on hm_event for all using (true) with check (true);
create policy "proto read tickets" on hm_tickets for select using (true);
create policy "proto write tickets" on hm_tickets for all using (true) with check (true);
-- Realtime
alter publication supabase_realtime add table hm_event;
alter publication supabase_realtime add table hm_tickets;
