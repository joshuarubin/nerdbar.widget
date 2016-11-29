command: "pmset -g batt | egrep '([0-9]+\%).*' -o | cut -d';' -f1"

refreshFrequency: 5000 # ms

update: (output, el) ->
  $(el).text("#{output}")

style: """
  font: 11px Input Mono
  top: 6px
  right: 205px
  color: #d5c4a1
"""
