# 🪥 Nibbl Content Factory — Полный план реализации

> Документ собран по итогам обсуждения проекта. Используй как single source of truth для всей реализации.

**Дата создания:** 30 мая 2026
**Версия:** 1.0

---

## 📌 Краткая сводка проекта

**Что строим:** Контент-завод для соцсетей бренда **Nibbl** — AI-ассистента для стоматологий, который отвечает в мессенджерах (WhatsApp, Instagram DM, Facebook Messenger).

**Зачем:** Привлечь владельцев стоматологий в США (B2B) на услугу настройки AI-ассистентов.

**Как:** Полностью автоматизированная система на базе Claude Code с субагентами, без n8n, без VPS, всё на подписке Claude.

**Целевая аудитория:** Владельцы SMB-стоматологий в США (1-3 локации, $500K-2M revenue/год).

**Языки контента:** English + Spanish (Mexican Spanish primary для US Latino).

**Cadence:** 3 поста/неделю × 2 платформы (Instagram + Facebook) = 6 публикаций/неделю.

**Бюджет:** до $100/мес.

---

## 🎯 Позиционирование Nibbl

### УТП в одной строке
> "AI assistant that replies in WhatsApp, Instagram & Facebook DMs — bilingual EN/ES, HIPAA-ready, on your servers."

### 3 опоры позиционирования
1. **Messengers, not calls** — пока все конкуренты делают voice AI для звонков, 60%+ новых пациентов пишут в DM
2. **Bilingual из коробки** — критично для штатов TX, CA, FL, AZ, NY (25-40% Latino населения)
3. **Your data, your servers** — реальная HIPAA-compliance, не "trust us as a SaaS"

### Позиционирование (полное)

> **For** small-to-mid dental practices (1-3 locations) in the US
> **who lose $50K-150K/year** to missed messages and after-hours inquiries,
> **Nibbl** is the AI front desk for messengers
> **that** answers WhatsApp, Instagram, Facebook DMs in English and Spanish, 24/7, on your own servers.
> **Unlike** Arini, Zaha or TrueLark which focus on voice and require expensive enterprise setups,
> **Nibbl** lives where 60% of new patients actually message you — in DMs, with HIPAA compliance and a one-week setup.

### Taglines

- **Short:** Nibbl. Tiny bot. Big bookings.
- **Medium:** Your AI front desk for DMs. Always on. Bilingual. HIPAA-ready.
- **Long:** Nibbl is the AI assistant that answers your dental practice's WhatsApp, Instagram, Facebook DMs — in English and Spanish — books patients while you sleep, and keeps your data on your own servers.

---

## 🏢 Конкурентный анализ

| Конкурент | Фокус | Цена/мес | Слабость для нашей атаки |
|---|---|---|---|
| **Arini** (YC W24) | Voice AI для звонков | $200-600 | Только voice, дорого, нет messengers |
| **Zaha AI** | Комплексная платформа | $400+ | Сложный setup, enterprise-focus |
| **TrueLark** (Weave) | Voice AI | $249+ | Поглощены Weave, фокус размылся |
| **Annie** | Voice AI | ~$300 | Voice-only, no Spanish |
| **Newo.ai** | Multi-agent voice | $$$$ | Сложный для SMB |
| **Viva AI** | Dental voice | $300+ | Voice-only |
| **Savvy Agents** | Voice | $200+ | Voice-only |
| **DentalBase** | PMS integration | enterprise | Не для SMB |
| **Dentina AI** | Voice диктовка для записей | $$ | Другая ниша (записи приёмов) |

**Наш angle of attack:** все они в voice. Мы единственные с фокусом на мессенджеры + bilingual + on-premise данные.

---

## 🎨 Бренд Nibbl — полный Brand Book

### Имя и произношение
- **Имя:** Nibbl
- **Произношение:** /ˈnɪb.əl/ (Ни-бл)
- **Этимология:** "Nibble" (откусывать) + tech-shorthand (как byte/bit)

### Маскот — описание персонажа

**Кто это:** Маленький дружелюбный AI-робот, ресепшнист стоматологий нового поколения.

**Personality:** Любопытный, услужливый, чуть гиковатый, с лёгким юмором. Никогда не бывает грубым, всегда спокойный. Когда не знает ответа — честно говорит и зовёт человека.

**Backstory:**
> "Привет, я Nibbl. Я родился в 2026 году, чтобы решить простую проблему: 60% людей пишут стоматологам в DM, а отвечают им только в 8 утра следующего дня. Я не сплю, не пью кофе, не беру выходных. Я просто отвечаю. На английском, на испанском. В WhatsApp, в Instagram, в Facebook."

**Физическое описание:**
- Маленький круглый робот, форма мягкого скруглённого куба
- Размер и пропорции "home tech device" (что-то между Apple HomePod и designer toy)
- Тело: matte coral (#FF7A6B), soft-touch finish
- Mint-акценты (#7FD9C9) на чашках-ушах, нижней панели, ручках
- Лицо — большой экран с двумя круглыми глазами-точками и улыбкой
- Антенна с mint-шариком на верхушке
- Парит на mint-свечении (no legs)

**Master reference image:** сгенерирован в Nano Banana (Gemini 2.5 Flash Image), сохранён локально.

### Цветовая палитра

| Role | Name | HEX | Использование |
|---|---|---|---|
| Primary | Coral Warmth | `#FF7A6B` | Тело Nibbl, CTA, акценты |
| Secondary | Mint Fresh | `#7FD9C9` | Аксессуары, success states |
| Background | Cream Calm | `#FAF4EC` | Фоны постов |
| Text Dark | Charcoal Soft | `#3A3A3A` | Основной текст, лицо Nibbl |
| Accent Warm | Sunbeam | `#FFD3A8` | Highlights |
| Alert | Brick Soft | `#D9543E` | Ошибки (редко) |

**Почему именно это:** конкуренты сидят в холодных синих/фиолетовых. Тёплая палитра выделяет в IG-ленте и создаёт ощущение тепла/заботы (коралл) + свежести/чистоты (мята).

### Типографика

- **Заголовки:** Bricolage Grotesque (Bold 700, Black 900)
- **Основной текст:** Inter (Regular 400, Medium 500, SemiBold 600)
- **Акцентный (цитаты Nibbl):** DM Mono (Regular 400)

Все шрифты бесплатные на Google Fonts.

### Brand Voice — как пишет Nibbl

**Tone sliders:**
- Casual: 75%
- Funny (but never silly): 70%
- Irreverent: 30%
- Enthusiastic: 60%

**✅ Yes-фразы:**
- "Your front desk just got 4 hours of free time. You're welcome."
- "60% of patients message you after hours. Are you replying?"
- "AI that books patients while you sleep. Yes, really."
- "Spanish-speaking patients? Nibbl's got them too."

**❌ No-фразы:**
- "Leverage cutting-edge AI to transform your dental ecosystem" (corporate slop)
- "Revolutionary solution" (overclaim)
- "Our advanced neural networks..." (tech-heavy)
- "Simply unmatched in the industry" (vague boast)

### Banned words (AI-slop blocklist)

`delve`, `navigate`, `foster`, `tapestry`, `leverage`, `unleash`, `elevate`, `journey`, `ecosystem`, `robust`, `seamless`, `cutting-edge`, `revolutionary`, `groundbreaking`, `game-changing`, `paradigm shift`, `synergy`, `streamline`, `harness`, `empower`, `unlock potential`

### Naming для аккаунтов

| Где | Варианты |
|---|---|
| Домен | `nibbl.ai` / `getnibbl.com` / `nibblhq.com` / `meetnibbl.com` |
| Instagram | `@nibbl.ai` / `@meet.nibbl` / `@nibblhq` |
| Facebook Page | `Nibbl` или `Nibbl AI` |
| WhatsApp Business | `Nibbl` |
| LinkedIn | `Nibbl` (Company Page) |
| Email | `hi@nibbl.ai`, `support@nibbl.ai` |
| Подпись | `— Nibbl 🪥` или `— Nibbl 💬` |

**Перед запуском проверить:**
1. Домены через Namecheap/Porkbun
2. Handles в IG/FB/LinkedIn/TikTok/X
3. USPTO trademark в классах 9 (software) и 42 (SaaS)

---

## 🎨 Промпты для Nano Banana (генерация маскота)

### Стратегия

1. **Шаг 1** — генерируем главный портрет (Prompt #1) на чистой сессии
2. **Шаг 2** — после хорошего результата загружаем эту картинку как референс и делаем все остальные ракурсы через "keep the character details the same"
3. **Шаг 3** — собираем character sheet

### PROMPT #1 — Hero Portrait

```
Create a 3D character portrait of a friendly AI mascot robot named "Nibbl".

CHARACTER DESIGN:
- Small rounded robot body, like a soft-edged cube with smooth bevels, about the size and proportions of a friendly home tech product (think Apple HomePod meets a designer toy)
- Body color: warm coral (#FF7A6B), matte soft-touch finish, slightly rubbery, no metallic shine
- Accent panels: fresh mint green (#7FD9C9) on chest and small circular speakers on the sides of the head
- Face: a single large rectangular smooth display screen taking up 60% of the front, with cream white (#FAF4EC) background
- Eyes on the screen: two perfectly round dots in soft charcoal (#3A3A3A), wide-set, friendly, slightly happy expression
- Mouth on the screen: a simple curved line forming a small warm smile, slightly upturned at the corners
- Top of head: one short rounded antenna with a small mint-colored sphere at the tip
- Arms: two short stubby coral-colored arms with simple mint three-finger mitten hands, in a relaxed pose at the sides
- Base: no legs, floating on a small soft glowing mint disc beneath, suggesting gentle hover

STYLE:
- 3D character design in the style of modern Pixar shorts crossed with Apple product illustrations
- NOT anime, NOT 2D cartoon, NOT chibi
- Sophisticated kawaii influence, designed to feel premium and friendly
- Clean, polished surfaces with subtle subsurface scattering

COMPOSITION:
- Front-facing portrait, slightly above eye level (subtle hero angle)
- Subject centered, occupying 60% of frame height
- Full body visible from head to floating base

LIGHTING:
- Soft three-point studio lighting
- Warm key light from upper left
- Cool mint rim light from upper right (adds the brand accent)
- Subtle ambient fill for clean shadows beneath

BACKGROUND:
- Seamless solid cream white background (#FAF4EC)
- Soft contact shadow beneath the floating base

RESOLUTION: 4K, square aspect ratio 1:1
```

### PROMPT #2 — Side Profile

```
[Reference Image: Nibbl master portrait]

Using the uploaded image as the character reference, generate a side profile view of Nibbl.

INSTRUCTIONS:
- Keep ALL character details exactly the same: same body shape, same coral color (#FF7A6B), same mint accents (#7FD9C9), same face screen with the same two round eyes and curved smile, same antenna, same arms, same floating base
- Only change the viewing angle to a clean 90-degree side profile (left side facing camera)
- The face screen should be visible on the side (showing one eye and partial smile)
- Same lighting setup, same cream background

Maintain 100% character consistency with the reference image. Do not redesign any element.
```

### PROMPT #3 — Expressions Sheet

```
[Reference Image: Nibbl master portrait]

Using the uploaded character as reference, generate a 2x2 grid of Nibbl with four different facial expressions on the screen:

TOP LEFT: Happy/excited — two round eyes slightly wider, big curved smile, antenna sphere glowing brighter
TOP RIGHT: Curious/thinking — one eye slightly larger than the other, small "o" shaped mouth, tilted head 15 degrees right
BOTTOM LEFT: Sleeping/idle — eyes as horizontal lines (closed), small "Zz" symbol floating from antenna, neutral mouth
BOTTOM RIGHT: Talking — both eyes round, mouth as a small open oval shape, slight forward lean

INSTRUCTIONS:
- Keep ALL character details exactly the same in all four versions: same body color (#FF7A6B), same mint accents (#7FD9C9), same body shape, same antenna, same floating base
- Only the facial expressions on the screen and slight head/body micro-poses change between variants
- Same lighting, same cream background (#FAF4EC) in all four
- Clean 2x2 grid layout with subtle dividers

Maintain 100% character consistency across all four poses.
```

### PROMPT #4 — Reception Desk Scene

```
[Reference Image: Nibbl master portrait]

Using the uploaded character as reference, place Nibbl in a scene:

SCENE: Nibbl floating behind a clean, modern dental reception desk. The reception desk is in a bright, minimalist dental clinic interior with cream walls, light wood accents, and a small potted plant on the counter. Nibbl is positioned where a human receptionist would stand, looking towards the camera with a welcoming expression.

CHARACTER POSE: Slight forward tilt, antenna pointing slightly up, one mitten hand raised in a small friendly wave gesture.

LIGHTING: Bright, soft daylight from windows on the left, warm and welcoming clinic atmosphere.

INSTRUCTIONS:
- Keep ALL Nibbl character details exactly the same as the reference: same coral body (#FF7A6B), mint accents (#7FD9C9), face screen with two round eyes and a curved smile, antenna, floating base
- The clinic interior should feel premium but not sterile — warm cream tones, not cold white
- Subtle Nibbl-brand mint accents in the scene (a mint-colored plant pot, a mint folder on the desk)

Format: 16:9 aspect ratio for landscape use, OR 9:16 for Reels/Stories — generate both versions.

Maintain 100% Nibbl character consistency with the reference image.
```

### PROMPT #5 — Brand Hero Image для лендинга

```
[Reference Image: Nibbl master portrait]

Create a hero brand image featuring Nibbl for a website landing page.

COMPOSITION:
- Nibbl on the right third of the frame, floating, looking slightly toward camera-left with a friendly expression
- Left two-thirds: clean cream-colored space (#FAF4EC) reserved for headline text overlay
- Subtle floating UI elements around Nibbl suggesting messaging apps: a small WhatsApp green chat bubble icon, an Instagram DM icon, a Facebook Messenger icon — all softly floating around Nibbl like small satellites, in a stylized 3D design matching Nibbl's aesthetic
- Each chat icon should be designed to feel like an extension of Nibbl's world — soft-touch, matte, with subtle mint or coral accents

INSTRUCTIONS:
- Keep ALL Nibbl character details exactly the same as the reference
- The floating chat icons should NOT be photo-realistic logos, but stylized 3D interpretations matching Nibbl's character design style
- Soft warm lighting from upper-left
- Subtle floor shadow beneath Nibbl

Format: 16:9 aspect ratio, hero size, leave clean negative space on the left for text.

Maintain 100% Nibbl character consistency with the reference image.
```

### Tips для Nano Banana

1. Всегда напоминай "keep the character details the same"
2. Делай один edit за раз
3. Сохрани master reference как источник правды
4. Если плохой результат — переформулируй или добавь variables
5. Для текста на картинках сначала через диалог сгенерируй текст-концепт, потом картинку

---

## 🏗 Архитектура контент-завода

### Общая схема

```
┌──────────────────────────────────────────────────────────────┐
│              ТВОЯ ЛОКАЛЬНАЯ МАШИНА (24/7 включена)            │
│                                                              │
│  Claude Desktop App (залогинен в подписку)                   │
│  ├─ Cowork scheduled tasks → производство контента           │
│  └─ Claude Code на проекте → работа с файлами                │
│                                                              │
│  /opt/nibbl-content/                                         │
│  ├─ CLAUDE.md, .claude/agents/, commands/, skills/           │
│  ├─ context/ (база знаний)                                   │
│  └─ outputs/ready/ → Google Drive sync                       │
└──────────────────────────────────┬───────────────────────────┘
                                   │
                                   ▼
┌──────────────────────────────────────────────────────────────┐
│  claude.ai/code/scheduled  (CLOUD — независимо от компа)     │
│                                                              │
│  Task "Publish to Instagram" (Mon/Wed/Fri 9:00 ET)           │
│  Task "Publish to Facebook"  (Mon/Wed/Fri 14:00 ET)          │
│                                                              │
│  Через коннекторы: Google Drive + HTTP → Meta Graph API      │
└──────────────────────────────────────────────────────────────┘
```

### Принципы архитектуры

- **Всё на подписке Claude.** Никакого Anthropic API ключа (риск $1800+ счетов через headless)
- **Никакого VPS, никакого n8n, никакого cron на сервере**
- **Производство контента** — локально через Cowork (терпит "отложенный запуск")
- **Публикация** — Cloud tasks (не зависит от состояния локальной машины)

---

## 🤖 6 субагентов

| Агент | Триггер | Вход | Выход |
|---|---|---|---|
| **Scout** | Ежедневно 6:00 ET | r/Dentistry, конкуренты, news | `state/trends-feed.json` |
| **Strategist** | Вс 10:00 ET | trends + metrics + published | `state/content-calendar.json` |
| **Writer** | Пн/Ср/Пт 8:00 ET | calendar slot + context | `outputs/drafts/<slug>.md` |
| **Visualizer** | После Writer | draft + visual brief | `outputs/visuals/<slug>/` |
| **Humanizer** | После Visualizer | draft + visuals | `outputs/ready/<slug>/` |
| **Publisher** | Cloud task | `outputs/ready/` через Drive | Пост опубликован + лог |

### Scout — разведка
- Парсит r/Dentistry, r/DentistryPro за 24ч
- Проверяет посты конкурентов в IG/LinkedIn
- Ищет упоминания "AI receptionist", "dental chatbot" в новостях
- Записывает в `state/trends-feed.json`

### Strategist — планировщик
- Читает trends-feed, metrics, published за неделю
- Решает темы на 7 дней (3 поста: Reel/Carousel/Demo)
- Балансирует углы: Problem / Solution / Comparison / Proof / Curiosity
- Обновляет `state/content-calendar.json`

### Writer — копирайтер
- Берёт следующий слот из календаря
- Прогоняет через скиллы: `customer-research` → `copywriting` → формат
- Создаёт draft с hook, script, caption EN, caption ES, hashtags, CTA, visual brief

### Visualizer — визуал
- HeyGen аватар / Remotion видео / Canva карусель
- HeyGen API через bash для аватара Nibbl
- Remotion для статистических видео и инфографики
- Playwright MCP для скриншотов каруселей из HTML

### Humanizer — финальная редактура
- 8-проходный humanize-writing
- Проверка banned-words
- HIPAA-content-check (нет ли PHI на скринах)
- Если ок — перенос из drafts/ в ready/

### Publisher — постинг
- Cloud task на claude.ai/code/scheduled
- Через Google Drive забирает готовые посты
- Через Meta Graph API публикует в IG/FB
- Логирует в `state/published.json`

---

## 📅 Расписание (US Eastern Time)

| Время (ET) | День | Задача | Где работает |
|---|---|---|---|
| 06:00 | Каждый день | Daily Research (Scout) | Cowork локально |
| 08:00 | Пн/Ср/Пт | Post Production (Writer→Visualizer→Humanizer) | Cowork локально |
| 09:00 | Пн/Ср/Пт | Publish to Instagram | Cloud task |
| 11:00 | Пн | Weekly Analysis | Cowork локально |
| 14:00 | Пн/Ср/Пт | Publish to Facebook | Cloud task |
| 10:00 | Вс | Weekly Planning (Strategist) | Cowork локально |

**Cadence:** 3 поста/неделю × 2 платформы = 6 публикаций/неделю.

---

## 🗂 Структура проекта

```
nibbl-content/
├── CLAUDE.md                          # Главный context для Claude Code
├── README.md                          # Инструкция установки
├── .claude/
│   ├── settings.json                  # MCP-серверы
│   ├── agents/
│   │   ├── scout.md
│   │   ├── strategist.md
│   │   ├── writer.md
│   │   ├── visualizer.md
│   │   ├── humanizer.md
│   │   └── publisher.md
│   ├── commands/
│   │   ├── daily-research.md
│   │   ├── weekly-plan.md
│   │   ├── produce-post.md
│   │   ├── publish-queue.md
│   │   └── weekly-report.md
│   └── skills/
│       ├── marketingskills/           # Corey Haines (npx install)
│       ├── ai-marketing-skills/       # superamped (plugin)
│       ├── humanize-writing/          # jpeggdev (git clone)
│       ├── remotion-skill/            # daymade (git clone)
│       └── custom/
│           ├── dental-pain-points/
│           ├── dental-content-formats/
│           ├── spanish-localization-us/
│           ├── nibbl-voice/
│           └── hipaa-content-check/
├── context/
│   ├── product-marketing-context.md   # Главный (читают все агенты)
│   ├── nibbl-brand.md                 # Brand book
│   ├── icp-dental-owners.md           # Портрет ЦА
│   ├── competitors.md                 # Конкуренты
│   ├── brand-voice.md                 # Tone of voice
│   ├── banned-words-en.md
│   ├── banned-words-es.md
│   └── glossary-en-es.md
├── state/
│   ├── content-calendar.json
│   ├── ideas-backlog.json
│   ├── publish-queue.json
│   ├── published.json
│   ├── metrics.json
│   ├── trends-feed.json
│   └── errors.json
├── outputs/
│   ├── drafts/
│   ├── visuals/
│   ├── ready/                         # ← синк с Google Drive
│   └── archive/
├── assets/
│   ├── nibbl-master.png               # Master reference
│   ├── nibbl-expressions/
│   ├── nibbl-scenes/
│   └── brand-kit/
└── logs/
```

---

## 🛠 Стек скиллов

### Готовые скиллы (ставим обязательно)

**1. Corey Haines `marketingskills`** — фундамент
```bash
npx skills add coreyhaines31/marketingskills
```
Из 20+ скиллов используем:
- `product-marketing-context` — главный, читают все остальные
- `customer-research`
- `copywriting`
- `copy-edit`
- `mktg-psych`
- `cold-email` (для outbound в US клиники)

**2. `superamped/ai-marketing-skills`** — контент-конвейер
```bash
/plugin marketplace add superamped/ai-marketing-skills
/plugin install ai-marketing-skills
```
Из 18 скиллов используем:
- `competitor-discovery`
- `ad-concepts` (5 углов сообщения)
- `seo-audit`

**3. `jpeggdev/humanize-writing`** — анти-AI-slop (обязателен!)
```bash
git clone https://github.com/jpeggdev/humanize-writing
```
8-проходная редактура. Запускается последним проходом перед публикацией.

**4. `daymade/claude-code-skills` — Remotion**
```bash
git clone https://github.com/daymade/claude-code-skills
cp -r claude-code-skills/remotion-skill .claude/skills/
```
Программное видео на React для статистики и инфографики.

### Кастомные скиллы (пишем сами)

- `dental-pain-points` — БД болей владельцев (no-shows, missed calls, insurance, Spanish-speaking patients)
- `dental-content-formats` — конкретные форматы постов под dental B2B
- `spanish-localization-us` — Mexican Spanish primary, neutral LATAM acceptable
- `nibbl-voice` — голос маскота, его tone и manners
- `hipaa-content-check` — проверка на PHI в визуалах

### MCP-серверы

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/path/to/nibbl-content"]
    },
    "fetch": {
      "command": "uvx",
      "args": ["mcp-server-fetch"]
    },
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp@latest"]
    },
    "context7": {
      "command": "npx",
      "args": ["-y", "@upstash/context7-mcp@latest"]
    }
  }
}
```

---

## 💰 Финальный бюджет

| Категория | Что | $/мес |
|---|---|---|
| Claude | Pro подписка | $20 |
| Видео | HeyGen Creator (annual) | $24 |
| Дизайн | Canva Pro | $13 |
| Парсинг | Apify (точечно) | $10 |
| Голос | ElevenLabs Starter (опц.) | $5 |
| Домен | nibbl.ai или .com | $1-15 |
| **ИТОГО** | | **~$73-87** |

Никакого VPS ($0), никакого API биллинга ($0), никакого n8n ($0).

---

## 🔌 API-доступы — что регистрировать

### 1. Meta Graph API (для IG + FB) — самое долгое!

**Запускать СРАЗУ, Business Verification занимает 5-14 дней:**

1. business.facebook.com → Meta Business Account
2. Создать Facebook Page для Nibbl
3. Создать Instagram Business Account, привязать к Page
4. developers.facebook.com → My Apps → Create App (Business type)
5. Add Products: Instagram Graph API, Facebook Login for Business
6. Запросить permissions:
   - `instagram_basic`
   - `instagram_content_publish`
   - `pages_show_list`
   - `pages_read_engagement`
   - `pages_manage_posts`
7. Запустить Business Verification (документы компании)
8. Получить long-lived Page Access Token (60 дней + refresh)

**В `.env`:**
```bash
META_APP_ID=
META_APP_SECRET=
META_PAGE_ACCESS_TOKEN=
META_PAGE_ID=
META_INSTAGRAM_BUSINESS_ID=
```

### 2. HeyGen API

1. heygen.com → Creator $24/mo (annual)
2. Settings → API → Generate Key
3. Загрузить master image Nibbl как Photo Avatar
4. Создать EN и ES голоса

```bash
HEYGEN_API_KEY=
HEYGEN_AVATAR_ID=  # ID Nibbl
HEYGEN_VOICE_ID_EN=
HEYGEN_VOICE_ID_ES=
```

### 3. Reddit API (для Scout)

1. reddit.com/prefs/apps → create app → script type
2. Получить client_id и client_secret

```bash
REDDIT_CLIENT_ID=
REDDIT_CLIENT_SECRET=
REDDIT_USER_AGENT=NibblBot/1.0
```

### 4. Telegram Bot (для уведомлений о статусе)

1. @BotFather → /newbot → TOKEN
2. Найти chat_id через getUpdates

```bash
TG_BOT_TOKEN=
TG_CHAT_ID=
```

---

## 📋 Roadmap — что делаем по неделям

### Неделя 1 — Параллельная подготовка

**Трек A: Бренд и инфраструктура**
- [ ] Купить домен (nibbl.ai / getnibbl.com / nibblhq.com)
- [ ] USPTO trademark search "Nibbl" (классы 9 и 42)
- [ ] Создать Instagram + Facebook Page под Nibbl
- [ ] Подключить WhatsApp Business
- [ ] **Запустить Meta Business Verification (5-14 дней!)**
- [ ] Сгенерировать остальные ракурсы Nibbl (Prompts #2-5)
- [ ] HeyGen — загрузить Nibbl как Photo Avatar, настроить EN/ES голоса

**Трек B: Технический фундамент**
- [ ] Создать структуру проекта на локальной машине
- [ ] Установить Claude Code и обновить Claude Desktop
- [ ] Активировать Cowork
- [ ] Установить готовые скиллы (Corey Haines + superamped + humanize-writing + Remotion)
- [ ] Настроить MCP-серверы
- [ ] Создать Google Drive папку "Nibbl Ready"

### Неделя 2 — База знаний

**Самая важная неделя.** От качества `context/*` зависит весь дальнейший контент.

- [ ] Шаблоны всех context-файлов
- [ ] Наполнение `product-marketing-context.md` под Nibbl
- [ ] `icp-dental-owners.md`, `competitors.md`
- [ ] 5 кастомных скиллов (`dental-*`)
- [ ] Прогон тестового поста вручную через все скиллы

### Неделя 3 — Субагенты и автоматизация

- [ ] 6 субагентов + 5 slash-команд
- [ ] Настройка Cowork scheduled tasks
- [ ] End-to-end прогон одного поста (без публикации)
- [ ] Если Meta Verification прошла — настройка Cloud tasks
- [ ] Если нет — Publisher складывает в Drive, ты публикуешь руками

### Неделя 4 — Запуск

- [ ] Первый автоматический пост → Instagram
- [ ] Мониторинг логов
- [ ] Корректировка `context/`
- [ ] Первый Weekly Report

### Неделя 5+ — Скейл

- [ ] LinkedIn в пайплайн
- [ ] A/B тесты hook-углов
- [ ] Outbound через cold-email
- [ ] Постепенное добавление RU/UA/DE версий

---

## 📝 Контент-стратегия

### Платформы (приоритет)
1. **Instagram** — основная, Reels + карусели + Stories
2. **Facebook** — 95%+ стоматологий там, аудитория 35+
3. **LinkedIn** — позже, для B2B decision makers
4. **TikTok** — потом, когда поймём что работает

### Форматы для dental B2B

- **"Сколько денег теряет клиника"** — конкретные цифры ($50K-150K/год потери)
- **Демо-разговоры Nibbl с пациентом** — на разных языках, реальные сценарии
- **До/после** — "front desk без AI vs с AI"
- **Myth vs Fact** про AI в медицине (HIPAA, "роботы пугают пациентов")
- **ROI-калькуляторы** — карусели "сколько окупится за месяц"
- **Behind the scenes** — как настраивается ассистент (для tech-savvy владельцев)

### Структура одной недели

- **Понедельник** — Education Reel 30-45 сек (хук в первые 3 сек, Nibbl говорит, B-roll из Veo 3)
- **Среда** — Carousel 7-10 слайдов (ROI / advice / myth-bust)
- **Пятница** — Demo Reel 60 сек (живой диалог Nibbl с "пациентом" в IG DM на испанском, субтитры на английском)

### Пайплайн одного поста

```
1. Strategist выбирает слот из календаря
2. Writer пишет hook → script → caption EN → caption ES → hashtags → CTA
3. Visualizer создаёт визуал (HeyGen / Remotion / Canva)
4. Humanizer: humanize-writing → banned-words check → HIPAA check
5. Перенос в outputs/ready/
6. Publisher (Cloud) забирает из Drive → постит в IG/FB
```

---

## ⚠️ Важные нюансы

### Про подписку Claude vs API
**КРИТИЧНО:** не использовать `claude --headless -p "..."` с `ANTHROPIC_API_KEY` в env — это переключается на API биллинг ($1800+ счета за 2 дня по реальному кейсу). Только Cowork scheduled tasks и Cloud tasks под подпиской.

### Про лендинг
- Статистика появляется при скролле (counter animation) — это норма
- CTA в Telegram нужно поменять на WhatsApp Business для US аудитории
- Аватарка АСЯ → заменить на Nibbl на всех 5 языковых версиях

### Про память Claude
Память:
- Не моментальная (обновляется в фоне к следующему дню)
- Изолирована между проектами (внутри проекта своя, обычные чаты — отдельно)
- Можно в любой момент посмотреть, удалить, обновить

### Про Nano Banana
- Если генерация даёт одинаковые результаты с микро-вариациями — это хорошо, значит промпт чёткий
- Всегда напоминать "keep the character details the same"
- Делать один edit за раз
- Master reference — единственный источник правды

---

## ✅ Что готово на момент создания плана

- ✅ Имя бренда: **Nibbl**
- ✅ Цвета, типографика, brand voice
- ✅ Master reference Nibbl (Nano Banana)
- ✅ Архитектура (Cowork + Cloud Tasks)
- ✅ Список скиллов и инструментов
- ✅ Расписание 6 субагентов
- ✅ Бюджет в рамках $100/мес
- ✅ Стратегия позиционирования и конкурентного отстройки

## 🚀 Что делать дальше

**Перед началом кодинга нужно:**
1. Выбрать домен (nibbl.ai / getnibbl.com / nibblhq.com / meetnibbl.com)
2. Подтвердить OS машины (macOS / Windows / Linux)
3. Решить, нужны ли Telegram-уведомления о статусе пайплайна

**Затем Claude напишет:**
- Фаза 1 — Фундамент: CLAUDE.md, context-файлы, README
- Фаза 2 — Агенты: 6 субагентов, 5 команд, кастомные скиллы
- Фаза 3 — Запуск: промпты для Cowork tasks, Cloud tasks, Meta Graph API setup

---

*Документ обновляется по мере прогресса проекта. Single source of truth — этот файл.*
