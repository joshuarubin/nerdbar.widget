command: "echo $(vm_stat | egrep 'free|inactive' | awk '{s+=$3} END {print \"\" s}') $(sysctl hw.memsize | awk '{print $2}') | awk '{printf(\"%.1f%%\", (1-($1*4096)/$2) * 100)}'"

refreshFrequency: 5000 # ms

update: (output, el) ->
    $(el).text("#{output}")

style: """
  color: #d5c4a1
  font: 11px Input Mono
  right: 258px
  top: 6px
"""
