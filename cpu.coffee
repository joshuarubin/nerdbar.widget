command: "echo $(ps -A -o %cpu | awk '{s+=$1} END {print s}') $(hostinfo | grep logically | cut -d' ' -f1) | awk '{printf(\"%.1f%%\", $1/$2)}'"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <div class="cpu">
    <span class="fa fa-bar-chart"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".cpu span:last-child", el).text("  #{output}")

style: """
  color: #d5c4a1
  font: 11px Input Mono
  right: 330px
  top: 6px
"""
