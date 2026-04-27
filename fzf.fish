# fzf color opts — Carbonized / Oxocarbon
# Role map: bg=#161616, selected-bg=#262626, text=#f2f4f8,
#           match=#78a9ff, match+=#33b1ff, info=#525252,
#           prompt=#78a9ff, pointer=#3ddbd9, marker=#42be65

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#161616,bg+:#262626,fg:#f2f4f8,fg+:#f2f4f8"\
" --color=hl:#78a9ff,hl+:#33b1ff,info:#525252,border:#525252"\
" --color=prompt:#78a9ff,pointer:#3ddbd9,marker:#42be65,spinner:#3ddbd9"\
" --color=header:#dde1e6"
