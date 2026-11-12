# anniewalsh.com

My personal site: a landing page that splits into **Code** (freelance web development) and **Dance** (performance and teaching), plus a **Now** page.

It's a plain static site: HTML, one stylesheet and a tiny bit of JavaScript. No build step, no server, no database. It's hosted on Cloudflare Pages.

## What's where

```
site/
  index.html        Landing page (pick a side)
  code.html         /code  – services, work, about, contact
  dance.html        /dance – performances and teaching
  now.html          /now   – what I'm working on now
  404.html          Page-not-found
  assets/
    two_worlds.css  All the styles (colours are at the top)
    site.js         Fills in the year and weekday
    images/         Photos and logos
  _redirects        Old URLs (/about, /projects, /contact, /garden) → new pages
  _headers          Security and caching headers
  robots.txt, favicon.ico, apple-touch-icon.png
```

To change copy, edit the HTML file for that page. To change colours, edit the variables at the top of `site/assets/two_worlds.css`.

## Preview locally

```bash
npx serve site
```

Then open http://localhost:3000. (`/code`, `/dance` and `/now` work without `.html`, like on Cloudflare.)

To test the redirects and headers exactly as Cloudflare runs them:

```bash
npx wrangler pages dev site
```

## Deploying (Cloudflare Pages)

One-time setup in the Cloudflare dashboard:

1. **Workers & Pages → Create → Pages → Connect to Git**, and pick this repository.
2. Build settings:
   - **Framework preset:** None
   - **Build command:** *(leave empty)*
   - **Build output directory:** `site`
3. **Save and Deploy.** You get a `*.pages.dev` address to check everything.
4. **Custom domains → Set up a custom domain**, and add the site's domain. If the domain's DNS is already on Cloudflare this is one click; otherwise Cloudflare shows the DNS record to add at your registrar.

After that, every push to `main` deploys automatically, and other branches get their own preview URL.

## History

Until November 2026 this was a Ruby on Rails app hosted on Render. The Rails version is still in git history if it's ever needed.
