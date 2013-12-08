module Scenery
  class FlexsliderCell < Cell::Rails

    def show args = {}
      @flexslider = Scenery::Flexslider.with_translations(I18n.locale).arrangement
      args[:view] ? render(view: args[:view]) : render unless @flexslider.empty?
    end
  end
end