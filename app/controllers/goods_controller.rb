class GoodsController < ApplicationController
  def search
      @goods = RakutenWebService::Ichiba::Item.search(keyword:  'ベビー服')
  end
end
