module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          W10 = s::SegmentDef.build(:W10, "Warehouse Additional Carrier Information",
            "Warehouse Additional Carrier Information",
            e::E406.simple_use(r::Optional, s::RepeatCount.bounded(1)),
            e::E406.simple_use(r::Optional, s::RepeatCount.bounded(1)),
            e::E399.simple_use(r::Optional, s::RepeatCount.bounded(1)),
            e::E225.simple_use(r::Mandatory, s::RepeatCount.bounded(1)),
          )
        end
      end
    end
  end
end
