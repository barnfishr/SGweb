# Snelgrove v1 Style Tile + Wireframe Spec (A/B/C Blend)

This document executes the approved direction blend:
- **A (Graeter's):** premium nostalgic brand tone
- **B (Jeni's store UX):** clear Shopify collection and PDP structure
- **C (Snickers):** bold campaign accents for seasonal moments

---

## 1) Style tile v1 (design system draft)

### 1.1 Brand personality keywords
- Nostalgic
- Handcrafted
- Friendly premium
- Playful confidence

### 1.2 Color system (token draft)
> Replace with exact hex values from brand guide extraction.

- `--color-cream-050` (primary background)
- `--color-chocolate-900` (primary text)
- `--color-strawberry-500` (accent CTA)
- `--color-mint-400` (support accent)
- `--color-waffle-700` (secondary text)
- `--color-success-600`, `--color-warning-600`, `--color-error-600`

Usage rules:
- Max two accent colors per page section.
- Body copy always on high-contrast neutral surfaces.
- Campaign accents (C direction) limited to promo strips/cards.

### 1.3 Typography scale (token draft)
- `Display XL` — homepage hero headline
- `H1` — page title
- `H2` — section title
- `H3` — card title
- `Body L` — intro text
- `Body M` — standard paragraph
- `Label S` — badges, filters, metadata

Type usage rules:
- One expressive display face + one highly-legible body face.
- Preserve generous line-height in long-form sections.
- Keep product cards compact and scannable.

### 1.4 Component language
- Rounded corners for cards/buttons (nostalgic-friendly)
- Thin, warm-neutral borders on product cards
- High-quality product image-first layouts
- Badge chips for dietary/shipping tags

### 1.5 Buttons and CTAs
- Primary: “Shop Nationwide”
- Secondary: “Find a Location”
- Tertiary text-link: “View all flavors”

States:
- Hover: subtle lift + color deepen
- Focus: high-contrast ring (accessibility)
- Disabled: neutralized tone with 4.5:1 text contrast where applicable

### 1.6 Imagery direction
- Product photography: clean background + true-to-color scoops/pints
- Lifestyle photos: families/friends, warm lighting, authentic moments
- Campaign art moments: bold stripe/block accents (C direction), used sparingly

---

## 2) Wireframe blueprint v1

## 2.1 Home page (desktop + mobile)
1. **Top utility strip**
   - Shipping notice (“Nationwide shipping available”)
   - Seasonal promo teaser
2. **Header/nav**
   - Logo, primary nav, cart icon, mobile menu
3. **Hero section**
   - Strong seasonal headline
   - Primary CTA: Shop Nationwide
   - Secondary CTA: Find a Location
4. **Featured flavors rail**
   - 4–8 cards, quick-add or “view product”
5. **Shipping confidence block**
   - Insulated packaging
   - Delivery windows
   - Replacement policy summary
6. **Locations preview**
   - Top location cards + hours + map link
7. **Catering teaser**
   - Event use-cases + inquiry CTA
8. **Social proof/reviews**
9. **Footer**
   - Policies, socials, contact, newsletter

Mobile priorities:
- Sticky bottom CTA (“Shop Nationwide”)
- Simplified nav and condensed hero copy
- Horizontal card rails with snap scrolling

## 2.2 Shopify collection page (B-inspired store UX)
1. **Collection header**
   - Name + short intro
2. **Filter/sort row**
   - Dietary, seasonal, pack size, price
3. **Product grid**
   - Image, title, price, tag chips, quick action
4. **Shipping messaging inline**
   - Per-item ship eligibility and transit note
5. **Pagination / load more**

Mobile priorities:
- Filter drawer
- Sticky sort/filter trigger
- Two-column grid with optimized image ratio

## 2.3 Product detail page (PDP)
1. **Gallery**
2. **Core info** (title, price, SKU/pack)
3. **Variant/quantity + add to cart**
4. **Shipping expectations module**
5. **Allergen/dietary block**
6. **Pair-with recommendations**
7. **FAQ accordion**

## 2.4 Cart + checkout readiness
- Cart drawer with shipping estimator hint
- Policy microcopy before checkout
- Preserve trust signals (delivery windows, quality guarantee)

---

## 3) Section-to-Shopify mapping

### Shopify templates/sections to build first
- `index` (home)
- `collection` (shop grid)
- `product` (PDP)
- `page.locations`
- `page.catering`

### Metaobjects (non-product content)
- `location`
- `flavor`
- `testimonial`
- `shipping_faq`
- `campaign_banner`

### Critical metafields
- Product: `ship_nationwide`, `shipping_profile`, `allergens`, `dietary_tags`
- Collection: `seasonal_flag`, `campaign_note`
- Location: `hours`, `map_url`, `services`

---

## 4) v1 acceptance criteria
- Style tile approved with no unresolved brand-token blockers
- Wireframes approved for Home + Collection + PDP
- Mobile behavior approved for nav/filter/CTA patterns
- Shipping confidence messaging approved by operations
- Ready for Shopify theme section implementation

---

## 5) Next execution steps (immediate)
1. Extract exact color/type tokens from brand guide PDF
2. Produce hi-fi v1 for Home + Collection + PDP
3. Validate against accessibility contrast and mobile spacing
4. Map approved modules into Shopify theme section backlog
