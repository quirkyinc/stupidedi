module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          W19 = s::SegmentDef.build(:W19, "Total Receipt Information",
            "To indicate total received quantity",
            e::E181.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E477.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E355.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E235.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E235.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E234.simple_use(r::Mandatory,  s::RepeatCount.bounded(1))
          )
        end
      end
    end
  end
end

