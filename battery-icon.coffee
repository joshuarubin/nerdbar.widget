command: "pmset -g batt | egrep '([0-9]+\%).*' -o | awk '{print $1,$2}' | sed 's|;||g'"

refreshFrequency: 5000 # ms

render: (output) ->
  """
  <span class="icon"></span>
  """

update: (output, el) ->
  $(".icon", el).removeClass().addClass("icon").addClass("fa #{@icon(output)}")

icon: (output) ->
  output = output.trim().split(" ")
  batt = parseInt(output[0])
  status = output[1]

  return switch
    when status == "charging" then "fa-bolt"
    when status == "AC" then "fa-exclamation-triangle"
    when batt > 92 then "fa-battery-full"
    when batt > 69 then "fa-battery-three-quarters"
    when batt > 46 then "fa-battery-half"
    when batt > 23 then "fa-battery-quarter"
    else "fa-battery-empty"

style: """
  font: 11px Input Mono
  top: 6px
  right: 235px
  color: #d5c4a1
"""
