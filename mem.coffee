command: "echo $(vm_stat | egrep 'free|inactive' | awk '{s+=$3} END {print \"\" s}') $(sysctl hw.memsize | awk '{print $2}') | awk '{printf(\"%.2f%%\", (1-($1*4096)/$2) * 100)}'"

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
