command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

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
  right: 325px
  top: 6px
"""
