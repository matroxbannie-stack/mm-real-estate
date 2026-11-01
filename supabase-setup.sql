-- Supabase > SQL Editor mein poora paste karke Run dabayein.

create table if not exists public.properties (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  title text not null,
  area text,
  kind text not null check (kind in ('sale','rent')),
  ptype text default 'House',
  beds int default 0,
  baths int default 0,
  size text,
  price text,
  image_url text,
  done boolean not null default false
);

create table if not exists public.settings (
  id int primary key check (id = 1),
  data jsonb not null default '{}'::jsonb
);

alter table public.properties enable row level security;
alter table public.settings   enable row level security;

-- Sab dekh sakte hain
create policy "public read properties" on public.properties for select using (true);
create policy "public read settings"   on public.settings   for select using (true);

-- Sirf login kiya hua admin badal sakta hai
create policy "admin insert properties" on public.properties for insert to authenticated with check (true);
create policy "admin update properties" on public.properties for update to authenticated using (true) with check (true);
create policy "admin delete properties" on public.properties for delete to authenticated using (true);
create policy "admin insert settings" on public.settings for insert to authenticated with check (true);
create policy "admin update settings" on public.settings for update to authenticated using (true) with check (true);

-- Photos ke liye folder (bucket)
insert into storage.buckets (id, name, public) values ('photos', 'photos', true)
  on conflict (id) do nothing;

create policy "photos public read"  on storage.objects for select using (bucket_id = 'photos');
create policy "photos admin upload" on storage.objects for insert to authenticated with check (bucket_id = 'photos');
create policy "photos admin update" on storage.objects for update to authenticated using (bucket_id = 'photos');
create policy "photos admin delete" on storage.objects for delete to authenticated using (bucket_id = 'photos');
