module Scenery
  class FlexsliderCell < Cell::Rails

    cache :show, expires_in: 2.hours
    def show args = {}
      @flexslider = Scenery::Flexslider.active.with_translations(I18n.locale).arrangement
      args[:view] ? render(view: args[:view]) : render unless @flexslider.empty?
    end
  end
end