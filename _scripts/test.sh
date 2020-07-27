_scripts/set_webroot.sh template-README.md _README.md
chmod a+r _README.md
docker run  --rm  --workdir /github/workspace  -v "$(pwd)":"/github/workspace" pandoc/latex:2.9 _README.md --standalone -t html5 -f gfm                         -o templates/README.html --metadata pagetitle=README --lua-filter=_scripts/links-to-html.lua
env QT_STYLE_OVERRIDE=fusion wkhtmltopdf templates/README.html templates/README.pdf
docker run  --rm  --workdir /github/workspace  -v "$(pwd)":"/github/workspace" pandoc/latex:2.9 _README.md --standalone -t docx                           -o templates/README.docx --lua-filter=_scripts/links-to-html.lua
