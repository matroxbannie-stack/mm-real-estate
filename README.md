# MM Real Estate: poora project (admin panel + login + photos)

Is folder ki saari files ek hi jagah hain (koi folder nahi). Files:
index.html, config.js, config.json, properties.json, supabase-setup.sql, logo-full.png, logo-mark.png

## STEP 1. Supabase account
supabase.com par sign up karein.

## STEP 2. Organization aur Project
1. Organization form: Name = MM Real Estate, Type = Personal, Plan = Free. "Create organization".
2. New project: Name = mm-real-estate, "Generate a password" dabayein, password COPY kar ke save karein.
3. Region = Auto, teeno tick (Data API, Automatically expose new tables, Enable automatic RLS) rehne dein.
4. "Create new project" dabayein, 1-2 minute rukein jab tak "Healthy" na likha aaye.

## STEP 3. Tables banayein
1. Left menu mein SQL Editor (>_ wala icon), phir New query.
2. supabase-setup.sql ka poora text copy karke paste karein.
3. Run dabayein. "Success. No rows returned" aana chahiye.

## STEP 4. Admin user
1. Left menu: Authentication, Users, Add user, Create new user.
2. Apna email aur password likhein. "Auto Confirm User" par tick lagayein. Create user.

## STEP 5. Naye logon ka sign up band
Authentication, Sign In / Providers: "Allow new users to sign up" ko OFF karein, Save.

## STEP 6. URL aur key copy karke config.js mein daalein
1. Project URL: Home icon (ghar), project ke naam ke neeche "https://....supabase.co", Copy dabayein.
2. Key: Project Settings (gear icon), API Keys, "Legacy API Keys" tab, "anon" key ke saamne Copy.
   (Agar Legacy tab na ho to "Publishable key" copy karein.)
   service_role / secret key kabhi nahi.
3. config.js ko Notepad mein kholein, YAHAN_PROJECT_URL aur YAHAN_ANON_KEY ki jagah paste karein. Quotes rehne dein. Ctrl+S.

## STEP 7. GitHub
1. github.com, "+" , New repository, naam mm-real-estate, Create.
2. "uploading an existing file". Is folder ki SAARI files (Ctrl+A) drag karein. Commit changes.
   (Purani repository ho to bhi isi tarah upload karein, nayi files purani ko badal dengi.)

## STEP 8. Vercel
1. vercel.com par GitHub se login, Add New, Project, mm-real-estate ko Import, Deploy.
2. Link milega: mm-real-estate.vercel.app

## STEP 9. Jaanch
1. Link kholein (Ctrl+Shift+R). Footer mein "Admin login" dabayein.
2. Step 4 wala email aur password dalein.
3. Website settings mein naam, phone, WhatsApp, email aur social links bharein, Save.
4. Property add karein (photo ke saath). Properties page par dekhein.

## Agar masla aaye
- Logo na dikhe: https://AAPKA-LINK.vercel.app/logo-full.png kholein. Khule to file theek hai.
- "Wrong email or password": Step 4 mein Auto Confirm tick tha? Password dobara likhein.
- "Database is not connected": config.js ki URL/key sahi paste nahi hui, GitHub par naya config.js dobara upload karein.
- Hero mein purani photo: Admin, Website settings, "Remove hero photo" tick, Save.
