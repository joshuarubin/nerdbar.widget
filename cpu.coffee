command: "echo $(ps -A -o %cpu | awk '{s+=$1} END {print s}') $(hostinfo | grep logically | cut -d' ' -f1) | awk '{printf(\"%.1f%%\", $1/$2)}'"

refreshFrequency: 1000 # ms

update: (output, el) ->
  $(el).text("#{output}")

style: """
  color: #d5c4a1
  font: 11px Input Mono
  right: 319px
  top: 6px
"""
