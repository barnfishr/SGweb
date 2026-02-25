# Snelgrove Ice Cream Website — Design-First Project Brief

## 1) Project goals (design phase)
Create a joyful, conversion-focused website concept for Snelgrove Ice Cream built entirely on Shopify (theme or headless), with a strong visual identity and clear paths to key actions:
- Visit a location
- View flavors/menu
- Request catering/events
- Order shipped pints and gift packs nationwide (U.S.)
- Follow on social

### Success criteria for design phase
- Approved visual direction (moodboard + style tiles)
- Approved sitemap and page wireframes
- Approved high-fidelity homepage + one interior page
- Content plan ready for Shopify CMS/metaobject implementation

---

## 2) Audience and positioning
### Primary audiences
- Families and local residents looking for desserts
- Event planners and parents seeking catering
- Tourists/visitors searching "ice cream near me"

### Brand positioning
Friendly, nostalgic, local, and premium-quality ice cream made for everyday treats and celebrations.

---

## 3) Recommended sitemap (v1)
1. **Home**
   - Hero
   - Featured flavors
   - Location quick links
   - Catering CTA
   - Social proof/reviews
2. **Flavors / Menu**
   - Seasonal + signature flavors
   - Dietary tags (contains nuts, dairy-free, etc.)
3. **Locations**
   - Store cards with hours, address, map links
   - Individual location detail pages (CMS-powered)
4. **Catering & Events**
   - Packages/use-cases
   - Inquiry form
5. **Shop Nationwide (U.S. Shipping)**
   - Curated shippable products (pints, bundles, gift packs)
   - Shipping policy, zones, and fulfillment windows
   - FAQ for packaging, dry ice, and delivery expectations
6. **About Snelgrove**
   - Story, quality promise, team photos
7. **FAQ**
   - Allergens, catering minimums, hours, policies
8. **Contact**
   - General form + phone/email + socials
9. **(Optional) News/Seasonal Updates**
   - CMS blog/news for promotions and local SEO freshness

---

## 4) Design direction (to approve before build)
### Visual style concepts to explore
- **Concept A: Modern Nostalgia**
  - Retro cues, playful typography, pastel palette, updated layout system
- **Concept B: Premium Creamery**
  - Clean, editorial, high-contrast product imagery, minimal UI
- **Concept C: Family Fun**
  - Bright colors, rounded UI components, energetic iconography

### UI style guidance
- Generous whitespace and large product imagery
- Rounded cards/buttons to reinforce approachable tone
- Sticky mobile CTA for location or order actions
- Accessibility-first color contrast and type scale

### Content blocks to standardize
- Hero with primary CTA and secondary CTA
- Flavor cards
- Location cards
- Testimonial/review snippets
- FAQ accordion
- CTA bands (catering, visit today)

---

## 5) Shopify implementation plan (after design sign-off)
### Shopify content/data models to set up
- **Products** (SKU, size, price, shippable flag, fulfillment notes)
- **Collections** (signature flavors, seasonal packs, gifts)
- **Metaobjects** for non-product content:
  - **Locations** (city, address, map URL, hours, phone)
  - **Flavors/Menu** (name, image, description, dietary tags, seasonal flag)
  - **Testimonials** (quote, source, rating)
  - **Shipping FAQs** (question, answer, category)
  - **Updates** (title, date, body, category) — optional

### Key integrations
- Shopify storefront + checkout for U.S. shipping
- Fulfillment integration (ShipStation/Shippo/3PL)
- Form routing + email/CRM (e.g., Shopify Forms + Klaviyo/Zapier)
- GA4 + Meta pixel
- SEO basics: titles/meta/OG, local schema on location pages

### Shopify architecture options
- **Option A: Shopify theme-first (recommended start)**
  - Fastest launch, lower complexity, strong maintainability
  - Use sections/templates + metaobjects for marketing content
- **Option B: Shopify headless (Hydrogen/custom frontend)**
  - Maximum UX flexibility, but higher build/ops complexity
  - Best when advanced interactions/performance needs justify it

### Why full Shopify works here
- One platform for content + commerce reduces overhead and context-switching
- Native cart/checkout/shipping/tax stack simplifies operations
- Theme-first approach can still deliver strong brand storytelling pages

### Nationwide shipping requirements (U.S.)
- Define what is shippable vs in-store only (clear product-level flags)
- Select cold-chain fulfillment approach (insulated packaging, refrigerant, carrier speed)
- Restrict delivery window logic to avoid weekend/holiday spoilage risk
- Publish transparent shipping and replacement/refund policy

---

## 6) Content checklist needed from stakeholder
### Brand assets
- Logo files (SVG/PNG)
- Color and typography preferences
- Photo/video library

### Business inputs
- Current and planned locations
- Catering offerings and lead intake process
- Priority conversion actions (top 2)
- Shipping operational rules (cutoff times, excluded dates, carrier preferences)

### Shopify business/commerce inputs
- Product catalog for shipping (SKUs, prices, pack sizes)
- Packaging and cold-chain constraints (dry ice/gel packs, max transit duration)
- States or regions with restrictions (if any)
- Returns/replacements policy for melted or delayed shipments

### Messaging inputs
- Brand story paragraph
- Tone keywords (e.g., nostalgic, handcrafted, playful)
- Any required legal/allergen disclaimers

---

## 7) Design deliverables (phase 1)
1. Moodboard (1–2 directions)
2. Style tile (color, type, buttons, cards, imagery treatment)
3. Low-fidelity wireframes:
   - Home
   - Flavors/Menu
   - Location detail
   - Catering
   - Shopify collection page + PDP flow
4. High-fidelity mockups:
   - Home
   - Two interior pages (recommended: Catering + Shop Nationwide)
5. Mobile-responsive variants for key pages
6. Shopify section/template inventory

---

## 8) Timeline proposal (design-first)
- **Week 1:** Discovery + moodboard + sitemap
- **Week 2:** Wireframes + content mapping
- **Week 3:** High-fidelity UI + revisions
- **Week 4:** Final design sign-off and Shopify build handoff

---

## 9) Launch checklist (prepared early, executed post-build)
### Pre-build
- [ ] Finalize sitemap and page priorities
- [ ] Confirm CMS collections and field schema
- [ ] Confirm domain and analytics ownership

### Build QA
- [ ] Mobile/tablet/desktop responsive checks
- [ ] Form submission tests
- [ ] CMS dynamic page checks
- [ ] Shopify checkout + shipping-rate tests
- [ ] Delivery date/cutoff logic tests
- [ ] Basic accessibility pass (contrast, alt text, heading order)
- [ ] Performance and image optimization pass

### SEO and analytics
- [ ] Unique metadata per page
- [ ] Open Graph image defaults
- [ ] XML sitemap + robots checks
- [ ] GA4 events for primary CTAs
- [ ] Local business schema on location pages

### Launch readiness
- [ ] DNS and SSL verified
- [ ] 301 redirects mapped (if redesign)
- [ ] Fulfillment and cold-chain runbook approved
- [ ] Customer support macros for shipping incidents prepared
- [ ] Final stakeholder walkthrough
- [ ] Editor training and quick SOP documented

---

## 10) Immediate next steps
1. Pick one preferred design concept (A/B/C), or combine elements.
2. Share available assets and preferred tone.
3. Confirm top two conversion goals.
4. Approve sitemap v1 or request edits.
5. Choose Shopify implementation path (theme-first vs headless).
6. Confirm Shopify store setup (theme baseline, shipping profiles, payment providers).
7. Complete the PDF asset export package in Section 11A.
8. Start wireframes before any code/build work.


## 11) If your assets are mostly in PDF: exact next steps
You can absolutely start from a PDF brand/style guide. The key is converting it into production-ready files and a structured asset library.

### A. Export package to create from the PDF (first task)
- **Logos:** SVG (preferred), PNG (transparent), and monochrome variants
- **Typography:** font family names, weights, licenses, and fallback stack
- **Color tokens:** HEX values for primary/secondary/neutral/status colors
- **Photography:** original JPG/PNG files (not embedded low-res PDF previews)
- **Icons/graphics:** SVG exports where possible

### B. Organize assets for implementation
Create one shared folder structure:
- `/brand/logos`
- `/brand/colors-and-type`
- `/photos/products`
- `/photos/lifestyle`
- `/graphics/icons`
- `/copy`

### C. Convert brand guide into build-ready tokens
- Define a typography scale (H1–H6, body, caption)
- Define spacing/radius/shadow tokens
- Map brand colors to accessible UI roles (text, background, CTA, states)
- Approve button styles and card variants

### D. Content handoff sheets (minimum)
- **Page copy sheet:** headline, subhead, CTA text per section
- **Product sheet:** SKU, price, size, description, shipping eligibility
- **Location sheet:** address, hours, map URL, phone
- **Policy sheet:** shipping windows, cutoff times, replacement/refund terms
- **Ready-to-use templates in repo:** `templates/products_template.csv`, `templates/locations_template.csv`, `templates/content_brief_template.md`

### E. 5-day execution plan
- **Day 1:** Asset extraction from PDF + folder setup
- **Day 2:** Style tile from extracted assets + token decisions
- **Day 3:** Wireframes (Home, Shop, Locations, Catering)
- **Day 4:** High-fidelity Home + Shop Nationwide mockups
- **Day 5:** Final revisions + Shopify section/template mapping

## 12) How to send the PDF brand guide (fastest path)
Use this exact handoff process so I can start design immediately:

1. **Upload the PDF** to a share link (Google Drive, Dropbox, OneDrive, or WeTransfer).
2. Set permissions to **Anyone with the link can view/download**.
3. Include these notes in the same message:
   - Preferred concept direction (A/B/C)
   - Top 2 conversion goals
   - Hard constraints (must-use fonts/colors, legal language)
4. If possible, also upload source files alongside the PDF:
   - Logos (`.svg`, `.ai`, `.eps`, transparent `.png`)
   - Fonts (or exact font family names + license status)
   - Original photos (not only images embedded in the PDF)
5. I will then convert assets into the repo templates:
   - `templates/content_brief_template.md`
   - `templates/products_template.csv`
   - `templates/locations_template.csv`

### If you only have the PDF (no source files yet)
That still works. I can begin from the PDF and mark any assets that need higher-quality originals before final production export.

### Minimum “send this now” checklist
- [ ] Shareable PDF link
- [ ] Approval for one design direction (A/B/C)
- [ ] List of must-keep brand elements
- [ ] Any launch deadline or campaign date

## 13) Confirmed stakeholder references (received)
### Brand guide
- Snelgrove Brand Guide (Google Drive): https://drive.google.com/file/d/1pBWyXcijO_8EDGK-c6A0syxEUHLaTp7j/view?usp=sharing

### Preferred inspiration set
- **A (overall direction):** https://www.graeters.com/
- **B (store experience only):** https://jenis.com/collections/all-flavors
- **C (campaign/energy cues):** https://www.snickers.com/

### Working translation into design system
- Use **A** for overall brand tone and layout hierarchy (premium nostalgia).
- Use **B** for Shopify collection/PDP patterns (product grid clarity, filter behavior, purchase flow).
- Use **C** for bold campaign moments (seasonal promotions, punchy CTA bands), without overusing heavy motion.

### Immediate production actions based on these references
1. Build a style tile that blends A-tone + C-energy using Snelgrove colors and typography from the brand guide.
2. Build Shopify wireframes for Home, Collection, PDP, Cart with B-style commerce UX.
3. Draft two homepage hero options and one seasonal campaign module.
4. Validate mobile-first nav, collection filtering, and shipping CTA prominence.
5. Present v1 mocks for approval before theme implementation.
- **Execution artifact:** `DESIGN_V1_STYLE_TILE_AND_WIREFRAMES.md`

