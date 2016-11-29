command: "date +\"%I:%M:%S %p\""

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <div class="time">
    <span class="fa fa-clock-o"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".time span:last-child", el).text("  #{output}")

style: """
  color: #d5c4a1
  font: 11px Input Mono
  right: 10px
  top: 6px
"""
