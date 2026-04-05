-- Запустить в Supabase SQL Editor: https://supabase.com/dashboard

-- Сессии чата
create table if not exists dental_sessions (
  session_id   text primary key,
  page_lang    text default 'ru',
  created_at   timestamptz default now(),
  last_message_at timestamptz default now()
);

-- Сообщения чата
create table if not exists dental_messages (
  id           uuid default gen_random_uuid() primary key,
  session_id   text not null references dental_sessions(session_id) on delete cascade,
  role         text not null check (role in ('user', 'assistant', 'admin')),
  content      text not null,
  created_at   timestamptz default now()
);

create index if not exists dental_messages_session_idx on dental_messages(session_id, created_at);
create index if not exists dental_sessions_last_msg_idx on dental_sessions(last_message_at desc);

-- RLS: разрешить чтение и запись через anon ключ
alter table dental_sessions enable row level security;
alter table dental_messages enable row level security;

create policy "allow_anon_all" on dental_sessions for all to anon using (true) with check (true);
create policy "allow_anon_all" on dental_messages for all to anon using (true) with check (true);
