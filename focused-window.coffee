command: "echo $(/usr/local/bin/kwmc query space active tag)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <div class="foc"
    <span class="fa fa-bars"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:last-child", el).text("  #{output}")

style: """
  color: #d5c4a1
  font: 11px Input Mono
  height: 16px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 6px
  width: auto
"""
