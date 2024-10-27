-- rime.lua
function single_char_filter(input, env)
  on = env.engine.context:get_option("single_char")
  for cand in input:iter() do
    if not on or utf8.len(cand.text) == 1 then
      yield(cand)
    end
  end
end

function date_translator(input, seg)
  if (input == "orq") then
     --- Candidate(type, start, end, text, comment)
     yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), ""))
     yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), " "))
  end
end

function time_translator(input, seg)
  if (input == "ouj") then
     local cand = Candidate("time", seg.start, seg._end, os.date("%H:%M"), " ")
     cand.quality = 1
     yield(cand)
  end
end

calculator_translator = require("calculator_translator")
