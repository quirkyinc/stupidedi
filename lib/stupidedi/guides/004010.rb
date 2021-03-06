module Stupidedi
  module Guides

    #
    # @see Stupidedi::Versions::FunctionalGroups::FortyTen
    #
    module FortyTen

      autoload :SegmentReqs,  "stupidedi/guides/004010/segment_reqs"
      autoload :ElementReqs,  "stupidedi/guides/004010/element_reqs"
      autoload :GuideBuilder, "stupidedi/guides/004010/guide_builder"

      module X12
        autoload :P0850,  "stupidedi/guides/004010/X12-PO850"
        autoload :OW940,  "stupidedi/guides/004010/X12-OW940"
        autoload :AR943,  "stupidedi/guides/004010/X12-AR943"
        autoload :RE944,  "stupidedi/guides/004010/X12-RE944"
        autoload :SW945,  "stupidedi/guides/004010/X12-SW945"
        autoload :SM204,  "stupidedi/guides/004010/X12-SM204"
        autoload :QM214,  "stupidedi/guides/004010/X12-QM214"
        autoload :GF990,  "stupidedi/guides/004010/X12-GF990"
        #autoload :FA997,  "stupidedi/guides/004010/X12-FA997"
      end

    end
  end
end
