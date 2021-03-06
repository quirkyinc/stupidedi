module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          MAN = s::SegmentDef.build(:MAN, "Marks and Numbers",
            "To indicate identifying marks and numbers for shipping containers",
            e::E88.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E87.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E87.simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E88.simple_use(r::Relational, s::RepeatCount.bounded(1)),
            e::E97.simple_use(r::Relational, s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
