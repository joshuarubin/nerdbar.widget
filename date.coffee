command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  """
  <div class="cal">
    <span class="fa fa-calendar"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".cal span:last-child", el).text("  #{output}")

style: """
  color: #d5c4a1
  font: 11px Input Mono
  right: 110px
  top: 6px
"""
