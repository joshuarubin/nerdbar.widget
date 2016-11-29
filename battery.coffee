command: "pmset -g batt | egrep '([0-9]+\%).*' -o | awk '{print $1,$2}' | sed 's|;||g'"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <div class="battery">
    <span class="icon"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
  output = output.trim().split(" ")
  bat = parseInt(output[0])

  $icon = $(".battery span.icon", el)
  $icon.removeClass().addClass("icon").addClass("fa #{@icon(bat, output[1])}")
  $(".battery span:last-child", el).text("  #{output[0]}")

icon: (output, status) ->
  return switch
    when status == "charging" then "fa-bolt"
    when status == "AC" then "fa-exclamation-triangle"
    when output > 92 then "fa-battery-full"
    when output > 69 then "fa-battery-three-quarters"
    when output > 46 then "fa-battery-half"
    when output > 23 then "fa-battery-quarter"
    else "fa-battery-empty"

style: """
  font: 11px Input Mono
  top: 6px
  right: 205px
  color: #d5c4a1
"""
