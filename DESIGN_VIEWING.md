# How to view the design

## Option 1 (most reliable): open the SVG artifact
1. Open `DESIGN_PREVIEW.svg` directly in your browser.
2. This is a static visual artifact of the approved v1 direction.

## Option 2: open the HTML preview
1. Open `DESIGN_PREVIEW.html` in any browser.
2. Review the visual style tile and wireframe snapshot.

## Option 3: serve locally if file-open is blocked
```bash
python -m http.server 4173
```
Then open:
- `http://localhost:4173/DESIGN_PREVIEW.svg`
- `http://localhost:4173/DESIGN_PREVIEW.html`

## Source-of-truth docs
- `DESIGN_V1_STYLE_TILE_AND_WIREFRAMES.md` (full spec)
- `DESIGN_BRIEF_AND_SITEMAP.md` (project brief + priorities)
