-- https://stackoverflow.com/questions/2353211/hsl-to-rgb-color-conversion + Aikoyori (Aikoshen), rainbow function.
function FelisAG.hsl2rgb(h,s,l,al) 
    local a=s*math.min(l,1-l);
    local f = function(n, k) k = math.fmod((n+h/30),12); return l - a*math.max(math.min(k-3,9-k,1),-1) end
    return {f(0),f(8),f(4),al};
end

if SMODS.DynaTextEffect then
	SMODS.DynaTextEffect {
			key = "pink",
			func = function (dynatext, index, letter)
				letter.colour = HEX 'F400F0'
			end
		}
end


loc_colour()
G.ARGS.LOC_COLOURS.feli_fag_pink = HEX('F400F0')
G.ARGS.LOC_COLOURS.feli_fag_rit = HEX('4B5A47')
G.ARGS.LOC_COLOURS.feli_fag_ins = HEX('7f1232')
G.ARGS.LOC_COLOURS.feli_fag_trb = HEX('D58F27')
G.ARGS.LOC_COLOURS.feli_fag_sgl = HEX('00DB8A')
G.ARGS.LOC_COLOURS.feli_fag_ttm = HEX('7E5C2F')
G.ARGS.LOC_COLOURS.feli_fag_ins_gld = HEX('F8A84F')
G.ARGS.LOC_COLOURS.feli_fag_goobert = HEX('218812')
G.ARGS.LOC_COLOURS.feli_fag_garf_bg = HEX('FFAE52')
G.ARGS.LOC_COLOURS.feli_fag_balatro_black = HEX('4F6367')
G.ARGS.LOC_COLOURS.feli_fag_institutional_black = HEX('000000')
G.ARGS.LOC_COLOURS.feli_fag_tiered = HEX('8E3600')
G.ARGS.LOC_COLOURS.feli_fag_inactive = HEX("B7B7B7")

SMODS.Gradient({
    key = "t2_mp",
    colours = {
        HEX("97626B"),
        HEX("ED9AA8"),
    },
    cycle = 2,
})
SMODS.Gradient({
    key = "rit_mp",
    colours ={
        HEX('8FAA86'),
        HEX('BACAB4'),

    },
    cycle = 2,
})

SMODS.Gradient({
    key = "chipsmult",
    colours = {
        G.C.CHIPS,
        G.C.MULT,
    },
    cycle = 2,
})

SMODS.Gradient({
    key = "cl_poly",
    colours = {
        HEX("B13321"),
        HEX("9E5E22"),
        HEX("AD9F2A"),
        HEX("39A826"),
        HEX("3EA77D"),
        HEX("3C5880"),
        HEX("6E3F86"),
        HEX("AA3786"),
        HEX("D33A5E"),
    },
    cycle = 3,
})

SMODS.Gradient({
    key = "cl_foil",
    colours = {
        HEX("97D8FF"),
        HEX("A7E6FF"),
        HEX("66B1FF"),
        HEX("1C71CC"),
    },
    cycle = 3,
})

SMODS.Gradient({
    key = "cl_holo",
    colours = {
        HEX("CAEFD4"),
        HEX("C5C2CA"),
        HEX("C18AC0"),
        HEX("C5C2CA"),
    },
    cycle = 3,
})
SMODS.Gradient({
    key = "cl_negative",
    colours = {
        HEX("191829"),
        HEX("2B2B40"),
    },
    cycle = 3,
})
SMODS.Gradient({
    key = "cl_gold",
    colours = {
        HEX("C9A442"),
        HEX("ECC952"),
    },
    cycle = 3,
})
SMODS.Gradient({
    key = "cl_steel",
    colours = {
        HEX("88A3BC"),
        HEX("A8BACE"),
    },
    cycle = 3,
})

SMODS.Gradient({
    key = "cl_glass",
    colours = {
        HEX("9EABE3"),
        HEX("4AD4D9"),
    },
    cycle = 3,
})




SMODS.Gradient({
    key = "t3_mp",
    colours = {
        HEX("4D5A7E"),
        HEX("8096D2"),
    },
    cycle = 2,
})



SMODS.Gradient({
    key = "t4_mp",
    colours = {
        HEX("A8926D"),
		HEX("F0CF99"),
    },
    cycle = 2,
})