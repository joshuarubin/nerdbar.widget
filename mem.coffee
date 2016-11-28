command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <div class="mem">
    <span class="fa fa-hdd-o"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".mem span:last-child", el).text("  #{output}")

style: """
  color: #d5c4a1
  font: 11px Input Mono
  right: 265px
  top: 6px
"""
