# MM Real Estate: admin panel aur login wali website

Frontend Vercel par chalta hai. Properties, photos aur login Supabase (free) mein rehte hain.

## Setup (sirf ek baar)

**Step 1. Supabase account**
supabase.com par sign up karein, "New project" banayein (naam: mm-real-estate, ek database password rakhein aur save kar lein).

**Step 2. Database banana**
Supabase mein left menu se **SQL Editor** kholein. `supabase-setup.sql` file ka poora text paste karein aur **Run** dabayein. "Success" aana chahiye.

**Step 3. Admin user banana (bohot zaroori)**
1. **Authentication, phir Users, phir Add user, phir Create new user**. Apna email aur password daalein, "Auto Confirm User" ON rakhein.
2. **Authentication, phir Sign In / Providers** (ya Settings) mein **"Allow new users to sign up" ko OFF** kar dein. Warna koi bhi apna account bana kar admin ban sakta hai.

**Step 4. Keys copy karna**
**Project Settings, phir API** mein se **Project URL** aur **anon public key** copy karein aur `config.js` mein paste karein.
(service_role key kabhi website mein na daalein.)

**Step 5. GitHub aur Vercel**
1. GitHub par naya repository banayein aur is folder ki saari files (images folder samait) upload karein.
2. vercel.com par GitHub se login karein, **Add New, phir Project**, repo **Import** karein, **Deploy** dabayein.

## Roz ka istemal
Website ke footer mein **Admin login** par jayein, Step 3 wala email aur password dalein.
- **Add a new property:** title, area, beds, size aur photo daal kar Add dabayein. Photo khud chhoti ho kar upload hoti hai.
- **Mark sold / Mark rented:** property website se hat jati hai. Relist se wapas aa jati hai.
- **Website settings:** naam, phone, WhatsApp, email, address, social media links, hero photo aur hero video.

## Dhyan rahe
- "Price" khana admin ke record ke liye hai, website par nahi dikhta. Lekin database public hai, is liye koi technical banda isay API se parh sakta hai. Agar price bilkul chhupana hai to us khane ko khali chorein.
- Password bhool jayein to Supabase mein Authentication, phir Users se reset kar sakte hain.
