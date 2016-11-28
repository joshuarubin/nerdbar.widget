command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 15000 # ms

render: (output) ->
  """
  <div class="battery">
    <span class="icon"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    bat = parseInt(output)
    $icon = $(".battery span.icon", el)
    $icon.removeClass().addClass("icon").addClass("fa #{@icon(bat)}")
    $(".battery span:last-child", el).text("  #{output}")

icon: (output) =>
  return if output > 90
    "fa-battery-full"
  else if output > 70
    "fa-battery-three-quarters"
  else if output > 40
    "fa-battery-half"
  else if output > 20
    "fa-battery-quarter"
  else
    "fa-battery-empty"

style: """
  font: 11px Input Mono
  top: 6px
  right: 205px
  color: #d5c4a1
"""
