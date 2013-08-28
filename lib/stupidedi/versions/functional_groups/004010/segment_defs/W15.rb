module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          W15 = s::SegmentDef.build(:W15, "Warehouse Adjustment Identification",
            "To indicate adjustment and time",
            e::E373.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E31.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E31.simple_use(r::Mandatory,  s::RepeatCount.bounded(1))
          )
        end
      end
    end
  end
end

