# Snelgrove Ice Cream — Asset Manifest

## How to add images

1. Drop flavor photos into `images/flavors/`
2. Run `./scripts/rename-images.sh` to auto-rename them
3. Drop logo/brand files directly into `images/`

---

## Flavor Photos — Expected filenames

| Flavor | Expected file | Status |
|--------|--------------|--------|
| Burnt Almond Fudge | `images/flavors/burnt-almond-fudge.jpg` | ⏳ |
| Canadian Vanilla | `images/flavors/canadian-vanilla.jpg` | ⏳ |
| Rocky Road | `images/flavors/rocky-road.jpg` | ⏳ |
| Caramel Cashew | `images/flavors/caramel-cashew.jpg` | ⏳ |
| Raspberry Cookie Swirl | `images/flavors/raspberry-cookie-swirl.jpg` | ⏳ |
| Mint Brownie | `images/flavors/mint-brownie.jpg` | ⏳ |
| Chocolate Thunder | `images/flavors/chocolate-thunder.jpg` | ⏳ |
| Biscoff Dream | `images/flavors/biscoff.jpg` | ⏳ |
| PB Cookies & Cream | `images/flavors/pb-cookies.jpg` | ⏳ |
| M&M Cookie Dough | `images/flavors/cookie-dough.jpg` | ⏳ |
| Cotton Candy | `images/flavors/cotton-candy.jpg` | ⏳ |
| Strawberry Cheesecake | `images/flavors/strawberry-cheesecake.jpg` | ⏳ |
| Birthday Cake | `images/flavors/birthday-cake.jpg` | ⏳ |
| Peppermint Choc Spray | `images/flavors/peppermint-choc-spray.jpg` | ⏳ |

---

## Brand Assets — Expected filenames

| Asset | Expected file | Notes |
|-------|--------------|-------|
| Primary Logo (color) | `images/logo.svg` | SVG preferred; PNG ok |
| Logo (white/reversed) | `images/logo-white.svg` | For dark navy footer |
| Favicon | `images/favicon.png` | 32×32 or 64×64 px |
| OG image (social share) | `images/og-home.jpg` | 1200×630 px |
| Hero background photo | `images/hero-bg.jpg` | High-res, landscape |
| Heritage / archival photo | `images/heritage-photo.jpg` | Old store or sign photo |
| Story hero photo | `images/story-hero.jpg` | Old storefront |
| Lyndsay Snelgrove portrait | `images/lyndsay-snelgrove.jpg` | Portrait orientation |
| Catering event photo | `images/catering.jpg` | Event/scoop shop photo |

---

## Typography — Still needed

Update `css/tokens.css` lines 40–43 once confirmed:

```css
--font-display: 'Playfair Display', 'Georgia', serif;   /* REPLACE */
--font-script:  'Dancing Script', cursive;               /* REPLACE */
--font-body:    'Lato', 'Helvetica Neue', sans-serif;    /* REPLACE */
```

Also update the Google Fonts `@import` in `css/global.css` line 1.
