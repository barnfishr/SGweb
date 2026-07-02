#!/usr/bin/env python3
"""Stamp the canonical nav (partials/nav.html) and footer (partials/footer.html)
into every page. Single source of truth for site chrome — edit the partial,
run this, commit.

Usage: python3 scripts/sync-chrome.py
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

PAGES = [
    'index.html', 'flavors.html', 'pints.html', 'menu.html', 'story.html',
    'values.html', 'careers.html', 'franchise.html', 'catering.html',
    'locations.html', 'contact.html', 'privacy.html', 'terms.html',
    'accessibility.html', '404.html',
]
# shop.html intentionally excluded (orphaned/noindexed)

# page -> nav hrefs that get the active class (child page also lights parent)
ACTIVE = {
    'index.html': [],
    'flavors.html': ['flavors.html'],
    'pints.html': ['flavors.html', 'pints.html'],
    'menu.html': ['menu.html'],
    'story.html': ['story.html'],
    'values.html': ['story.html', 'values.html'],
    'careers.html': ['story.html', 'careers.html'],
    'franchise.html': ['story.html', 'franchise.html'],
    'catering.html': ['catering.html'],
    'locations.html': ['locations.html'],
    'contact.html': ['contact.html'],
}

NAV_RE = re.compile(r'<div class="topbar">.*?(?=<main id="main-content">)', re.S)
FOOTER_RE = re.compile(r'<footer class="footer".*?</footer>', re.S)


def mark_active(nav: str, hrefs: list[str]) -> str:
    # nav attributes are column-aligned, so whitespace between href and class varies
    for href in hrefs:
        nav = re.sub(
            rf'(href="{re.escape(href)}"\s+class="nav__(?:link|dropdown-link|mobile-link))"',
            r'\1 active"',
            nav,
        )
    return nav


def main() -> int:
    nav = (ROOT / 'partials/nav.html').read_text()
    footer = (ROOT / 'partials/footer.html').read_text().rstrip() + '\n'
    changed = 0
    for page in PAGES:
        path = ROOT / page
        if not path.exists():
            print(f'  skip (missing): {page}')
            continue
        html = path.read_text()
        orig = html
        if NAV_RE.search(html):
            html = NAV_RE.sub(mark_active(nav, ACTIVE.get(page, [])).rstrip() + '\n\n  ',
                              html, count=1)
        else:
            print(f'  ! no nav match: {page}')
        if FOOTER_RE.search(html):
            html = FOOTER_RE.sub(lambda _: footer.rstrip(), html, count=1)
        else:
            print(f'  ! no footer match: {page}')
        if html != orig:
            path.write_text(html)
            changed += 1
            print(f'  synced: {page}')
    print(f'{changed} pages updated')
    return 0


if __name__ == '__main__':
    sys.exit(main())
