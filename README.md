# Setup (about 15 minutes, all free)

## 1. Backend (Supabase)
1. Sign up at supabase.com, create a project.
2. SQL Editor: paste everything from setup.sql and run it.
3. Authentication > Users > Add user: your email + password (this is your admin login).
4. Authentication > Sign In / Providers: turn OFF "Allow new users to sign up" so only you can log in.
5. Project Settings > API: copy the Project URL and the anon public key into config.js.
Free plan: 50 MB per file, 1 GB total storage.

## 2. Put the site online (Cloudflare Pages / Netlify / GitHub Pages)
Upload all files in this folder. Example with Netlify: app.netlify.com/drop, drag the folder in.
You get a public https address. A custom domain (e.g. myapps.com) helps Google ranking.

## 3. Upload apps
Go to YOUR-SITE/admin.html, log in, fill in the form, upload. The app appears on the public site immediately.

## 4. Get found on Google
- Replace YOUR-SITE-URL in robots.txt and sitemap.xml with your real address.
- search.google.com/search-console > Add property > verify (HTML tag goes in <head> of index.html) > Request indexing > submit sitemap.xml.
