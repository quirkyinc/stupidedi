module Stupidedi
  module Versions
    module FunctionalGroups
      module FortyTen
        module TransactionSetDefs
          d = Schema
          r = SegmentReqs
          s = SegmentDefs

          AW947 = d::TransactionSetDef.build("AW", "947", "Warehouse Inventory Adjustment Advice",

            d::TableDef.header("Table 1 - Header",
              s::ST.use( 10, r::Mandatory, d::RepeatCount.bounded(1)),
              s::W15.use( 20, r::Mandatory, d::RepeatCount.bounded(1)),
              s::N1.use( 40, r::Mandatory, d::RepeatCount.bounded(1)),
              s::G62.use( 110, r::Mandatory, d::RepeatCount.bounded(1)),
            ),

            d::TableDef.header("Table 2 - Detail",
              d::LoopDef.build("W19", d::RepeatCount.bounded(9999),
                s::W19.use( 20, r::Mandatory,  d::RepeatCount.bounded(1)),
                s::N9.use( 40, r::Optional, d::RepeatCount.bounded(10)),
              )
            ),

            d::TableDef.header("Table 3 - Summary",
              s::SE.use( 20, r::Mandatory, d::RepeatCount.bounded(1))
            )

          )
        end
      end
    end
  end
end
