

## --------------------------------------- colors & themes ----------------------------------------- ##

clr_0 = parse(RGBAf, "#00000000") # transparent

# dark theme
# clr_bg = parse(RGBAf, "#272822") # background
# clr_mg = parse(RGBAf, "#8E8A73") # mid-ground
# clr_fg = RGBAf(1,1,1)

# light theme
clr_bg = parse(RGBAf, "#ffffff") # background
clr_mg = parse(RGBAf, "#8E8A73") # mid-ground
clr_fg = parse(RGBAf, "#000000")

clr = [
    parse(RGBAf, "#D95319"), # orange/red
    parse(RGBAf, "#7E2F8E"), # purple
    parse(RGBAf, "#EDB120"), # yellow
    parse(RGBAf, "#3d8f57"), # green
    parse(RGBAf, "#0072BD"), # blue
    parse(RGBAf, "#000000"), # black/white
    parse(RGBAf, "#8E8A73") # gray
    # parse(RGBAf, "#009E73FF"), # teal
]

#FUTURE: use update_theme!(), separate for resolutions & colors
set_theme!(
    Theme(
        # resolution = (3000, 2000),
        # resolution = (2100, 1400),
        resolution = (1800, 1200),
        # resolution = (1200, 800),
        textcolor = clr_fg,
        linewidth = 3,
        markersize = 21,
        fontsize = 28,
        font = "Inter Light",
        color = clr_fg,
        # colormap = cmap,
        palette = (
            color = clr,
        ),
        markercolor = clr_fg,
        backgroundcolor = clr_bg,
        Axis = (
            titlesize = 35,
            backgroundcolor = :transparent,
            xgridvisible = false,
            ygridvisible = false,
            xgridcolor = clr_mg,
            ygridcolor = clr_mg, 
            topspinecolor = clr_mg, 
            rightspinecolor = clr_mg,
            leftspinecolor = clr_mg, 
            bottomspinecolor = clr_mg,
            xtickcolor = clr_mg,
            ytickcolor = clr_mg,
        ),
        Axis3 = (
            backgroundcolor = :transparent,
            xspinecolor_1 = clr_mg,
            xspinecolor_2 = clr_mg,
            xspinecolor_3 = clr_mg,
            xspinewidth = 2,

            xgridcolor = clr_mg,
            xtickcolor = clr_mg,
            xgridwidth = 1,
            xtickwidth = 1,

            yspinecolor_1 = clr_mg,
            yspinecolor_2 = clr_mg,
            yspinecolor_3 = clr_mg,
            yspinewidth = 2,

            ygridcolor = clr_mg,
            ytickcolor = clr_mg,
            ygridwidth = 1,
            ytickwidth = 1,

            zspinecolor_1 = clr_mg,
            zspinecolor_2 = clr_mg,
            zspinecolor_3 = clr_mg,
            zspinewidth = 2,

            zgridcolor = clr_mg,
            ztickcolor = clr_mg,
            zgridwidth = 1,
            ztickwidth = 1,
        ),
        Slider = (
            color_active = clr_fg,
            color_active_dimmed = clr_mg,
            color_inactive = (clr_mg + clr_bg)/2,
        ),
        Legend = (
            bgcolor = clr_bg,
            merge = true,
            framecolor = clr_mg,
            framewidth = 1.0,
        ),
        Arrows = (
            arrowsize = 21,
            linewidth = 1,
            lengthscale = 0.07,
            linecolor = clr_mg,
            arrowcolor = clr_mg,
            align = :center,
            arrowhead = '^',
        )
    )
)

blend(c1, c2) = [ (1-k)*c1 + k*c2 for k in 0:0.01:1 ]
cmap1 = [blend(clr[1], clr_mg); blend(clr_mg, clr[3])]
cmap2 = [blend(clr[1], clr[5]); blend(clr[5], clr[3])]

