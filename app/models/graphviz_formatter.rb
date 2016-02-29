class GraphvizFormatter
  HEADER = "digraph G {"
  FOOTER = "}"

  def format(transition_table)
    @a = []
    edges = transition_table.each do |current_state, input, next_state, output|
      @a.push %{  "#{escape(current_state)}" -> "#{escape(next_state)}" [ label=" #{escape(input)}/#{escape(output)}" ]}
    end
    [HEADER, *@a, FOOTER].join("\n")
  end

# private

  def escape(string)
    string.to_s.gsub('"', '\\"')
  end
end
