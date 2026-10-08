-- Run once in Supabase > SQL Editor
create table apps (
  id uuid primary key default gen_random_uuid(),
  name text not null, version text, platform text, description text,
  size bigint, file_url text not null, file_path text not null, icon_url text,
  created_at timestamptz default now()
);
alter table apps enable row level security;
create policy "public read" on apps for select using (true);
create policy "admin write" on apps for all to authenticated using (true) with check (true);

insert into storage.buckets (id, name, public) values ('apps','apps',true);
create policy "admin upload" on storage.objects for insert to authenticated with check (bucket_id='apps');
create policy "admin delete" on storage.objects for delete to authenticated using (bucket_id='apps');
