local active_border_color = { colors = { "#0a64f5", "#3b83bd" }, angle = 45 }
local inactive_border_color = "rgba(5983bd33)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
    gaps_in = 5,
    gaps_out = 10,
    border_size = 2,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})
