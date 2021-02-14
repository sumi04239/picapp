RakutenWebService.configure do |c|
  c.application_id = RWS_APPLICATION_ID
  c.affiliate_id = RWS_AFFILIATION_ID
  c.max_retries = 3
  c.debug = true
end