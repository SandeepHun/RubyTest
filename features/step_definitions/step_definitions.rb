Then(/^the user cannot see "(.*)" field on "(.*)" page$/) do |field_name, page_name|
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(field_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css

  e = @browser.select selector, element_path
  if e.exists?
  else
    fail('fail')
  end
end

# Then(/^the user see "(.*)" field is "(.*)" on "(.*)" page$/) do |field, attribute, page|
#   e = get_element page, field
#   xpath = @session.page_objects.web_element_xpath page, field
#   e = @session.browser.element :xpath, xpath
#   if e.wait_until_present.exists?
#     field_attr = e.enabled?
#     if attribute.downcase.eql? 'enabled'
#       checkpoint((field_attr.eql? true), "Failed: #{field} is not Enabled on #{page} page")
#     else
#       if attribute.downcase.eql? 'disabled'
#         checkpoint((field_attr.eql? false), "Failed: #{field} is not Disabled on #{page} page")
#       end
#     end
#   else
#     fail("Failed: #{field} is not present on #{page} page")
#   end
# end

# Then(/^the user adds a new poultry record for subclass-"([^"]*)";lotnumnber-"([^"]*)";headcount-"([^"]*)";liveweight-"([^"]*)";certifiedChilledWeight-"([^"]*)";certifiedFrozenWeight-"([^"]*)";deadOnArrivalHeadCount-"([^"]*)";deadOnArrivalWeight-"([^"]*)";aMCNIDOAsHeadCount-"([^"]*)";aMCNIDOAsWeight-"([^"]*)";pMCCNYDWeight-"([^"]*)";pMCPartsWeights-"([^"]*)" page$/) do |subclass,lotnumnber,headcount,liveweight,certifiedChilledWeight,certifiedFrozenWeight,deadOnArrivalHeadCount,deadOnArrivalWeight,aMCNIDOAsHeadCount,aMCNIDOAsWeight,pMCCNYDWeight,pMCPartsWeights|
# # |subclass, lotnumnber, headcount, liveweight, certifiedCchilledweight, certifiedfrozenweight, deadOnarrivalheadCount, deadOnarrivalweight, amcnidoAsHeadCount, aMCNIDOAsWeight, pMCCNYDWeight, pMCPartsWeights |
#
#   # #Locate the Sub Class drop-down and select a sub-class.
#   step "the user selects \"subclass\" from \"sub class drop down for poultry\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Locate the Lot Number Text box and enter data.
#   step "the user types \"lotnumnber\" into \"lot number text box for poultry\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Head Count.
#   step "the user types \"headcount\" into \"head count text box for poultry\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Live Weight.
#   step "the user types \"liveweight\" into \"live weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter CC Weight.
#   step "the user types \"certifiedChilledWeight\" into \"certified chiled weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter CF Weight.
#   step "the user types \"certifiedFrozenWeight\" into \"certified frozen weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter DOA head count.
#   step "the user types \"deadOnArrivalHeadCount\" into \"dead on arrival head count text box\ on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter DOA Weight.
#   step "the user types \"deadOnArrivalWeight\" into \"dead on arrival weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Ante-mortem condemned not including DOAs (Head Count).
#   step "the user types \"aMCNIDOAsHeadCount\" into \"ante-mortem condemned not including doas head count text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Ante-mortem condemned not including DOAs (Weight).
#   step "the user types \"aMCNIDOAsWeight\" into \"ante-mortem condemned not including doas weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Post-mortem Condemned Carcass NYD (Weight).
#   step "the user types \"pMCCNYDWeight\" into \"post-mortem condemned carcass nyd weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Post-mortem Condemned Parts (Weight).
#   step "the user types \"pMCPartsWeights\" into \"post-mortem condemned parts weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#
# end


And(/^the user deletes existing poultry records if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      element_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/button"
      click_web_element element_obj
      ok_btn_obj = 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_btn_obj
      sleep 3
    end
  end
end

And(/^the user delete existing meat record if any exist$/) do
  if step "the user clicks on \"delete icon for meat\" element on \"DispositionReporting/EstablishmentReporting\" page"
    # And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    step 'the user dismisses browser pop-ups'
  else
    puts 'there are no record/s to delete.'
  end
end

And(/^the user delete Slaughter Record with if present$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00']"
  # Delete all slaughter record with given sub class in table
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      # sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      # if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/input"
      click_web_element del_obj
      step 'the user dismisses browser pop-ups'
      sleep 2
      # end
    end
  end
end


And(/^the user delete Slaughter Record with "(.*)" sub-class if present$/) do |sub_class|
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00']"
  # Delete all slaughter record with given sub class in table
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      if sub_class_value.downcase.eql? sub_class.downcase
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/input"
        click_web_element del_obj
        step 'the user dismisses browser pop-ups'
        sleep 2
      end
    end
  end
end

And(/^user dismisses questionnaire pop\-ups$/) do
  (1..10).each do
    begin
      if @browser.alert.exists?
        @browser.alert.accept
      end
      break
    rescue
      sleep 1
      nil
      next
    end
  end
end

And(/^the user deletes existing record if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/table/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow']//button"
      click_web_element del_obj
      ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_conf_obj
      sleep 4
    end
  end
end


And(/^user accept browser pop\-ups$/) do
  if @browser.alert.exists?
    @browser.alert.ok
  else
    puts 'No pop up to close or accept, all good'
  end
end

And(/^the user delete existing ratite record if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/table/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow'][#{rows}]/td[10]/button"
      click_web_element del_obj
      ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_conf_obj
      sleep 7
    end
  end
end

And(/^the user deletes existing poultry record if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/table/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/table/tbody/tr"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/table/tbody/tr//button"
      click_web_element del_obj
      ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_conf_obj
      sleep 4
    end
  end
end


And(/^the user print condemnation certificate for meat$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link'
  element1 = 'un select all link'
  element2 = 'cancel button iframe'
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector1 = (selector1.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector2 = (selector2.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector3 = (selector3.downcase.include? 'xpath') ? :xpath : :css

  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path1).click
  # step "the user waits \"3\" seconds"
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path3).click
end

And(/^the user switch to main tab$/) do
  # @session.browser.switch_to
  @browser.driver.switch_to
end

And(/^the user print disposition records for meat$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link for disposition record'
  element1 = 'un select all link for disposition record'
  element2 = 'sort column iframe for disposition record'
  element3 = 'cancel button iframe'
  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # xpath_element3 = @session.page_objects.web_element_xpath page, element3
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element3).click

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector1 = (selector1.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector2 = (selector2.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element3, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  selector3 = (selector3.downcase.include? 'xpath') ? :xpath : :css

  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path1).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path3).click

end

And(/^the user print condemnation certificate for ratite$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link for ratite record'
  element1 = 'un select all link for ratite record'
  element2 = 'cancel button iframe for ratite record'
  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector1 = (selector1.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector2 = (selector2.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector3 = (selector3.downcase.include? 'xpath') ? :xpath : :css

  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path1).click
  # step "the user waits \"3\" seconds"
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path3).click

end

And(/^the user print disposition records for raite$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link for disposition record for ratite'
  element1 = 'un select all link for disposition record for ratite'
  element2 = 'sort column iframe for disposition record for ratite'
  element3 = 'cancel button iframe for ratite record'
  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # xpath_element3 = @session.page_objects.web_element_xpath page, element3
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element3).click
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector1 = (selector1.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector2 = (selector2.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element3, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  selector3 = (selector3.downcase.include? 'xpath') ? :xpath : :css

  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path1).click
  # step "the user waits \"3\" seconds"
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path2).click
  @browser.iframe(:xpath, ".//*[@name='CondemnParamPage']").element(:xpath, element_path3).click

end

# And (/^the user types in to an empty text box or upload "([^"]*)" into "([^"]*)" on "([^"]*)" page$/) do |value, element, page|
#   types_into_element page, element, value
# end


And(/^the user deletes any existing added documents for a country$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocuments_rgUploadDocuments_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
      new_document = "Automation_Test_Doc.pdf"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        # sleep 4r7y,o
      end
    end
    checkpoint (record_found.eql? true), "No document found in table that matches the document to be deleted"
  end
end

And(/^the user delete all existing collection$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radRuleCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_collection = "Automation_Test_Date112"
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[7]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the added rule collection to be edited$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radRuleCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_collection = "Automation_Test_Date112"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the added validator record to be edited$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radValidatorCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Date112 Automation Test Description data."
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[8]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete validator records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radValidatorCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Date112 Automation Test Description data."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^user refresh the browser$/) do
  @browser.refresh
end

And(/^the user perform the enter key command$/) do
  @browser.send_keys :enter
end

And(/^the user click on the added instruction to be edited$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      puts 'the newly added instruction is ' + sub_class_value
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[8]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete the added instruction records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the approve icon for the submitted validator to be approve$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radApproval_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "Automation_Test_Date112"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the reject icon for the submitted validator to be rejected/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radApproval_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "Automation_Test_Date112"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[7]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end


And(/^the user click on the approve icon for the submitted instruction to be approved/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radApproval_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "Automation_Test_Instruction101"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete approved instruction records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the reject icon for the submitted instruction record to be rejected/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radApproval_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "Automation_Test_Instruction101"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[7]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete rejected instruction records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the edit icon for the country assign$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rdgReferenceTableDetails_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      new_collection = "ANDORRA"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the home icon for the Hillside Turkey Farm$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_MyEstablishments_gridUserEstablishments_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_collection = "Hillside Turkey Farm"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the edit icon for the application started$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Hillside Turkey Farm"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[10]/a[1]/img"
        #Wait for element to be exist, visible,present and enabled
        wait_for_element(del_obj)
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the delete icon for the application started$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Hillside Turkey Farm"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[12]/a/img"
        #Wait for element to be exist, visible,present and enabled
        wait_for_element(del_obj)
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user clicks on the open icon for validator records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radValidatorCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Date112 Automation Test Description data."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[9]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the delete link for the added product$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgForm9060_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]"
      new_collection = "Delete"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/a"
        #Wait for element to be exist, visible,present and enabled
        wait_for_element(del_obj)
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end


And(/^the user deletes existing instruction record if any$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgForm9060_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]"
      new_collection = "Delete"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/a"
        #Wait for element to be exist, visible,present and enabled
        wait_for_element(del_obj)
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the user to manage his or her role$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgUsers_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
      user_role = "Abdeen, Felicitas\ntest@test.com"
      if delete_icons_row.downcase.eql? user_role.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]//*[contains(@class, 'edit')]"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be managed"
  end
end

And(/^the user deletes any existing saa role added by the test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProfileRoles1_rgRoles_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      puts delete_icons_row
      new_document = "Service Account Administrator\n[MISC] No work areas were assigned."
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/input[2]"
        click_web_element del_obj
        step "user accept browser pop-ups"
        # sleep 4r7y,o
      end
    end
    checkpoint (record_found.eql? true), "No document found in table that matches the document to be deleted"
  end
end

And(/^the user deletes any existing export viewer role added by the test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProfileRoles1_rgRoles_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      puts delete_icons_row
      new_document = "Export Viewer\n[MISC] No work areas were assigned."
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/input[2]"
        click_web_element del_obj
        step "user accept browser pop-ups"
        # sleep 4r7y,o
      end
    end
    checkpoint (record_found.eql? true), "No document found in table that matches the document to be deleted"
  end
end

Then(/^the user click on accept on the warning message if applicable/) do
  record_found = false
  del_obj = get_element_text 'xpath', "//h2"
  puts del_obj
  new_collection = "Conditions of Use and Code of Conduct"
  if del_obj.eql? new_collection.downcase
    record_found = true
    #@browser.refresh
    accept_button = get_element_obj 'xpath', ".//*[contains(@data-test, 'accept-conditions-of-use-button')]"
    wait_for_element(accept_button)
    focus_on_element(accept_button)
    accept_button.click
    step "user accept browser pop-ups"
  end
  checkpoint (record_found.eql? true), "the Conditions of Use and Code of Conduct section is either disabled or close"
end

Then(/^the user logged out of the system/) do
  if ENV['TEST_ENV'].downcase.eql? 'test_mobile'
    puts ("Executing Environment is : #{ENV['TEST_ENV']}")
    step "the user clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    #step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"btris: logout\" element on \"Btris/Portal\" page"
  else
    if ENV['TEST_ENV'].downcase.eql? 'prod_mobile'
      puts ("Executing Environment is : #{ENV['TEST_ENV']}")
      step "the user focus and clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
      step "the user focus and clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
      #step "the user focus and clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
      step "the user focus and clicks on \"btris: logout\" element on \"Btris/Portal\" page"
    else
      puts ("Test is not running in mobile emulator, Executing Environment is : #{ENV['TEST_ENV']}")
      sleep 2
      step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
      step "the user clicks on \"btris: logout\" element on \"Btris/Portal\" page"
    end
  end
end

And(/^the user click on the radiology record to verify the image$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]/a"
        puts 'Note! these are test data not actual data, the pulmonary Results are ' + del_obj
        step "user accept browser pop-ups"
        # sleep 4r7y,o
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the report to be open"
  end
end

And(/^the user enters "([^"]*)" and "([^"]*)" to login to btris$/) do |value1, value2,|
  step "the user clicks on \"btris home: login button\" element on \"Btris/Portal\" page"
  step "the user enters \"#{value1}\" into \"btris: user name\" on \"Btris/Portal\" page"
  step "the user enters \"#{value2}\" into \"btris: password\" on \"Btris/Portal\" page"
  step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
end

And(/^the user verify the NIAAA report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ADEBISI, BALARAMA OLUFEMI"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'Note! These are test data and not actual data, the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the NIAAA prod protocol report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ALLEN, JACKIE TYRONE"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'Note! These are test data and not actual data, the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the laboratory report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! These are test data and not actual data, the Laboratory Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the pagination on the report table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[@data-test='records-top-pagination']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//*[contains(@data-test, 'button')]"
  if check_record_present > 1
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}//*[contains(@data-test, 'button')]"
    puts table_rows
    (1..table_rows).each do |rows|
      #delete_icons_row = get_element_text 'xpath', "#{table_path}//*[contains(@data-test, 'button')]"
      #puts 'the row number is ' +delete_icons_row
      # new_document = "1"
      # if delete_icons_row.downcase.eql? new_document.downcase
      #record_found = true
      del_obj = get_element_text 'xpath', "#{table_path}//*[contains(@data-test, 'next-button')]"
      puts 'Note! These are test data and not actual data, the Laboratory Results are ' + del_obj
      click_web_element (del_obj)
    end
  end
  checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
end


And(/^the user verify the laboratory prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ANDERSON, STEPHEN FOSTER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! These are test data and not actual data, the Laboratory Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the new laboratory report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! These are test data and not actual data, the the Laboratory Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end


And(/^the user verify the diagnosis and procedure report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the diagnosis Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Diagnosis and Procedure search"
  end
end

And(/^the user verify the diagnosis and procedure prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ADETOLA, OLUKEMI OLUKEYE"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the diagnosis Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Diagnosis and Procedure search"
  end
end

And(/^the user verify the diagnosis and procedure report on the table 2$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the Demographics Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Demographics search"
  end
end

And(/^the user test the pagination of the report$/) do
  sleep 3
  if pagination_path = ".//*[@data-test='records-top-pagination']"
    check_record_present = get_elements_size 'xpath', "#{pagination_path}//li"
    if check_record_present > 2
      table_rows = get_elements_size 'xpath', "#{pagination_path}//li"
      puts "total pegination is" + check_record_present
      (1..table_rows).each do |rows|
        del_obj = get_element_obj 'xpath', "#{pagination_path}//li"
        click_web_element del_obj

        # ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
        # click_web_element ok_conf_obj
        sleep 5
      end
    else
      puts 'No pagination available for this report, report loads on a single page'
    end
  end
end



And(/^the user click to open the pagination of the report$/) do
  record_found = false
  table_path = ".//*[@data-test='records-top-pagination']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//li"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}//li[contains(@class, 'page-item')]"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}//*[contains(@class, 'page-link')]"
      puts 'the row number is ' +delete_icons_row
      if table_rows > 2
        record_found = true
        del_obj = get_element_obj 'xpath', ".//*[contains(@data-test, 'next-button')]//*[contains(@class, 'page-link')]"
        click_web_element del_obj
        step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
        sleep 1
      end
    end
    checkpoint (record_found.eql? true), "No pagination found"
  end
end





And(/^the user verify the demographics report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the Demographics Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Demographics search"
  end
end

And(/^the user verify the demographics prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BEATON, BRADFORD TAYLOR"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! this is a test data and not actual data, the Demographics Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Demographics search"
  end
end


And(/^the user verify the assessment report report on the table$/) do
  record_found = false
  table_path = ".//*/div[1]/div/div/div/table"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ADEBISI, BALARAMA OLUFEMI"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the MRN for the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the search"
  end
end

And(/^the user click on the accept button if present$/) do
  record_found = false
  table_path = ".//*[@id='app']/div/div[1]/section[1]/div/div/div[1]/div/div/div[3]/div/button"
  check_record_present = get_elements_size 'xpath', "#{table_path}"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}"
    #puts 'the button is ' +table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}"
      #puts 'the button text is is ' +delete_icons_row
      new_document = "Accept"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}"
        click_web_element del_obj
        # sleep 4
      end
    end
    checkpoint (record_found.eql? true), "The Accept button or condition section is not enabled, all good"
  end
end

And(/^the user verify the clinical documents discrete values report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT EIGHT INPAT"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data not actual data, the validated diagnosis Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in report table that matches the search criteria"
  end
end

And(/^the user verify the clinical documents discrete values "(.*)" actual report on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} ,for the search query"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        #puts 'the row number is ' +delete_icons_row
        new_document = "BOWEN, JEANNE DOLORES"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
          puts 'Note! these are test data not actual data, the validated diagnosis Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
    end
  end
end

Then(/^the user login to the btris application/) do
  step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
  step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
  step "the user remembers the value of \"user name attribute\" field into \"UserName\" on \"Btris/Portal\" page"
  step "the user enters \"btris_test2\" into \"btris: user name\" on \"Btris/Portal\" page"
  step "the user enters \"Nomorecognos11:\" into \"btris: password\" on \"Btris/Portal\" page"
  step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
end

Then(/^the user login with "(.*)" to the btris application/) do |value|
  if ENV['TEST_ENV'].downcase.eql? 'dev'
    puts 'The logged-in user name is ' + value
    step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"smart cart login page\" field into \"Smart Cart Login\" on \"Btris/Portal\" page"
    step "the user clicks on \"alternative login link\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"user name attribute sc\" field into \"UserName\" on \"Btris/Portal\" page"
    step "the user enters \"#{value}\" into \"btris: user name\" on \"Btris/Portal\" page"
    step "the user enters \"Nomorecognos11?\" into \"btris: password\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: smart card login to dashboard button\" element on \"Btris/Portal\" page"
  else
    if value.downcase.eql?("btris_test2")
      puts 'The logged-in user name is ' + value
      step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
      step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
      step "the user remembers the value of \"user name attribute\" field into \"UserName\" on \"Btris/Portal\" page"
      step "the user enters \"#{value}\" into \"btris: user name\" on \"Btris/Portal\" page"
      step "the user enters \"Nomorecognos11?\" into \"btris: password\" on \"Btris/Portal\" page"
      step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
    else
      if value.downcase.eql?("btris_test4")
        puts 'The logged-in user name is ' + value
        step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
        step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
        step "the user remembers the value of \"user name attribute\" field into \"UserName\" on \"Btris/Portal\" page"
        step "the user enters \"#{value}\" into \"btris: user name\" on \"Btris/Portal\" page"
        step "the user enters \"Nomorecognos11?\" into \"btris: password\" on \"Btris/Portal\" page"
        step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
      end
    end
  end
end


Then(/^the user login with "(.*)" to the btris application dev piv/) do |value|
  if value.downcase.eql?("btris_test2")
    puts 'The logged-in user name is ' + value
    step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"smart cart login page\" field into \"Smart Cart Login\" on \"Btris/Portal\" page"
    step "the user clicks on \"alternative login link\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"user name attribute\" field into \"UserName\" on \"Btris/Portal\" page"
    step "the user enters \"#{value}\" into \"btris: user name\" on \"Btris/Portal\" page"
    step "the user enters \"Nomorecognos11?\" into \"btris: password\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
  else
    if value.downcase.eql?("btris_test4")
      puts 'The logged-in user name is ' + value
      step "the user remembers the value of \"btris login page\" field into \"Login Page\" on \"Btris/Portal\" page"
      step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
      step "the user remembers the value of \"smart cart login page\" field into \"Smart Cart Login\" on \"Btris/Portal\" page"
      step "the user clicks on \"alternative login link\" element on \"Btris/Portal\" page"
      step "the user remembers the value of \"user name attribute\" field into \"UserName\" on \"Btris/Portal\" page"
      step "the user enters \"#{value}\" into \"btris: user name\" on \"Btris/Portal\" page"
      step "the user enters \"Nomorecognos11?\" into \"btris: password\" on \"Btris/Portal\" page"
      step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
    end
  end
end


And(/^the user verify the nichd ctdb forms report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ACHUKO, MAUREEN NGOZI"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the MRN for the diagnosis Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the nichd ctdb forms prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ACHUKO, MAUREEN NGOZI"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the MRN for the diagnosis Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the nichd ctdb forms report on the table with all protocol$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "02-CH-0287"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the MRN for the diagnosis Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the pdf documents report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT EIGHT INPAT"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        puts 'The PDF Documents report test subject record is available'
        # del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the MRN for the diagnosis Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the vital signs report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, ACUITYPLUS ONLY"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the vital signs Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the vital signs prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ANDERSON, STEPHEN FOSTER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the vital signs Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end


Then(/^the user fines the page HTML/) do
  puts("inspect: #{@browser.inspect}")
  puts("status : #{@browser.status}")
  puts("text   : #{@browser.text}")
  puts("html   : #{@browser.html}")
  @browser = get_browser
  puts @browser.html
  puts @browser
end


And(/^the user verify the medication report on the table with date range filter$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BOWEN, JEANNE DOLORES"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        puts 'Note! these are test data and not actual data, the test Results validated are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the medication search record"
  end
end


And(/^the user verify the medication report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENTG NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        puts 'Note! these are test data and not actual data, the test Results validated are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the medication search record"
  end
end

And(/^the user verify the medication prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BOWEN, JEANNE DOLORES"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        puts 'Note! these are test data and not actual data, the test Results validated are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the medication search record"
  end
end


And(/^the user verify the pulmonary report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    # puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PHARMD ADULT"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! these are test data not actual data, the pulmonary Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the pulmonary search record"
  end
end

And(/^the user verify the pulmonary prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    # puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BUEL, MEREDITH SHOWERS"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        puts 'Note! these are test data not actual data, the pulmonary Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the pulmonary search record"
  end
end

And(/^the user verify the PFT Tests on "(.*)" data on "(.*)" page$/) do |field_name, page_name|
  # get the XPATH or CSS from page object file , Raises Error if not found
  begin
    selector, element_path = get_element_target(field_name, page_name).split('^^')
  rescue
    fail("The PFT Tests data is not found for #{field_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("The PFT Tests data is not found for #{field_name} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css
  # Create the Element object
  element_obj = @browser.element(selector, element_path)

  # Wait for element to be present
  wait_for_element(element_obj)
  # Focus on element to make it visible
  focus_on_element(element_obj)
  puts 'The The PFT Tests data is successfully display'

end

And(/^the user verify the clinical documents full text "(.*)" report on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} ,for the search query"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        #puts 'the row number is ' +delete_icons_row
        new_document = "ANDERSON, STEPHEN FOSTER"
        if delete_icons_row.downcase.include? new_document.downcase
          record_found = true
          #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
          # puts 'the MRN for the diagnosis Results are ' +del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
    end
  end
end

And(/^the user verify the pathology report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    # puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT LAB INPATIENT 1"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        # puts 'the MRN for the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Pathology search subject"
  end
end

And(/^the user verify the pathology prod data report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    # puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ALDERMAN, LEWIS NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        # puts 'the MRN for the Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Pathology search subject"
  end
end


And(/^the user verify the ekg report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, INNA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Results table data are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the EKG search"
  end
end

And(/^the user verify the ekg report on the table with prod data$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ANDERSON, STEPHEN FOSTER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Results table data are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the EKG search"
  end
end


And(/^the user verify the ekg prod data report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ANDERSON, STEPHEN FOSTER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Results table data are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the EKG search"
  end
end

And(/^the user verify the microbiology report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT LAB INPATIENT 1"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Microbiology Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the microbiology prod protocol report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "BENASSI, ANGELA NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'The report result(s) is or are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the echocardiogram report on the table$/) do
  sleep 3
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NIHCCTEST, PATIENT LAB INPAT DLM USE ONLY"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Echocardiogram  Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Echocardiogram search"
  end
end

And(/^the user verify the echocardiogram prod report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "ARNETT, LINDA MAE"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Note! these are test data and not actual data, the Echocardiogram  Results are ' + del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Echocardiogram search"
  end
end

And(/^the user verify if existing "(.*)" exist and remove it$/) do |value|
  sleep 2
  page_text = @browser.html
  if page_text.include? value
    step "the user clicks on \"custom search term check box\" element on \"Btris/Portal\" page"
    sleep 1
    #Click on the remove button.Scenario:
    step "the user clicks the link with text \"Remove\""
    #step "the user clicks on \"custom search term list remove button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"custom search term list confirm remove\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"list remove confirmation\" field into \"List Remove Confirmation\" on \"Btris/Portal\" page"
    sleep 1
  else
    puts "No existing search term data name #{value} added by the test exist"
  end
end

And(/^the user verify if existing "(.*)" data exist and remove it$/) do |value|
  sleep 2
  page_text = @browser.html
  if page_text.include? value
    sleep 2
    step "the user clicks on \"reference list: search list check box\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks the link with text \"Remove\""
    #step "the user clicks on \"custom search term list remove button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"custom search term list confirm remove\" element on \"Btris/Portal\" page"
    sleep 3
  else
    puts "No existing #{value} added by the test exist which matches"
  end
end

And(/^the user verify if "(.*)" document already exist and if not user uploads new "(.*)" and continue$/) do |value1, attached_file_location|
  page_text = @browser.html
  if page_text.include? value1
    puts "Document with name #{value1} already exist in the system and will be use to complete the test"
  else
    sleep 2
    puts "Document with name #{value1} does not exist in the system a new document will be uploaded to complete the test"
    step "user attached \"#{attached_file_location}\" file into \"custom search term list: brows upload\" on \"Btris/Portal\" page"
    sleep 6
  end
end

And(/^the user verify the reference list "(.*)" radiology report on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} , no record for the search filter"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, INNA NMN"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          #puts 'the Subject for the Reference Laboratory Results are ' +del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the radiology search"
    end
  end
end

And(/^the user verify the reference list "(.*)" laboratory report on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} , no record for the search filter"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, PATIENT LAB OUTPAT DLM USE ONLY"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          #puts 'the Subject for the Reference Laboratory Results are ' +del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
    end
  end
end

And(/^the user verify radiology admin report "(.*)" on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} ,for the search query"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "AARON, EVAN CHRISTOPHER"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          puts 'the Subject for the Reference Laboratory Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the pathology search"
    end
  end
end


And(/^the user verify the reference list pathology report and "(.*)" on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} ,for the search query"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, PATIENT LAB INPAT DLM USE ONLY"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          puts 'the Subject for the Reference Laboratory Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the pathology search"
    end
  end
end

And(/^the user verify the reference list vital sign report and "(.*)" on the table$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} , no record for the search filter"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, INNA NMN"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          puts 'the Subject for the Reference Laboratory Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the vital sign search"
    end
  end
end

And(/^the user verify the reference list pathology report and "(.*)" on the table 2$/) do |value|
  sleep 5
  page_text = @browser.html
  if page_text.include? value
    puts "Search criteria return message #{value} , no record for the search filter"
  else
    record_found = false
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
    check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
    if check_record_present > 2
      #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      #puts table_rows
      (1..table_rows).each do |rows|
        delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the row number is ' +delete_icons_row
        new_document = "NIHCCTEST, PATIENT LAB INPAT DLM USE ONLY"
        if delete_icons_row.downcase.eql? new_document.downcase
          record_found = true
          del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
          puts 'the Subject for the Reference list Pathology Results are ' + del_obj
        end
      end
      checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
    end
  end
end

And(/^the user verify if MRN "(.*)" has already been added and "(.*)" is display$/) do |value, message|
  sleep 3
  page_text = @browser.html
  if page_text.include? message
    step "the user clicks on \"back arrow\" element on \"Manage/Subjects\" page"
    sleep 3
    step "the user enters \"#{value}\" into \"manage subject protocol text box\" on \"Manage/Subjects\" page"
    sleep 3
    step "the user clicks on \"delete protocol icon\" element on \"Manage/Subjects\" page"
    sleep 3
    step "the user clicks on \"remove button\" element on \"Manage/Subjects\" page"
    sleep 3
    step "the user clicks on \"add subject button\" element on \"Manage/Subjects\" page"
    sleep 2
    step "the user enters \"#{value}\" into \"enter mrn text box\" text area box on \"Manage/Subjects\" page"
    sleep 3
    step "the user clicks on \"submit button\" element on \"Manage/Subjects\" page"
    sleep 3
    #step "the user waits for \"3\" seconds"
  else
    # Fail the steps and skips next steps
    puts "The user didn't see error message, #{message} , text on the page which means the subject #{value} can be added"
  end
end

And(/^the user verify if MRN "(.*)" has not been added and "(.*)" is display$/) do |value, message|
  sleep 2
  page_text = @browser.html
  if page_text.include? message
    step "the user clicks on \"affirm consent button\" element on \"Manage/Subjects\" page"
    sleep 1
    step "the user clicks on \"return to subject button\" element on \"Manage/Subjects\" page"
    sleep 1
    step "the user clicks on \"add subject button\" element on \"Manage/Subjects\" page"
    sleep 1
    step "the user enters \"#{value}\" into \"enter mrn text box\" text area box on \"Manage/Subjects\" page"
    sleep 1
    step "the user clicks on \"submit button\" element on \"Manage/Subjects\" page"
    sleep 1
  else
    # Fail the steps and skips next steps
    puts "The user didn't see error message, #{message} , text on the page which means the subject #{value} already exist in the protocol"
  end
end


And(/^the user verify if the "(.*)" is display on the table for "(.*)" added$/) do |message, value|
  page_text = @browser.html
  if page_text.include? message
    puts "No subject found in table that matches the added subject #{value}"
  else
    puts "subject #{value}  was successfully added"
  end
end

And(/^the user verify the reference list vital signs report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      # puts 'the row number is ' +delete_icons_row
      new_document = "CAHILL, PATRICIA ANN MARIE"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the Subject for the Reference Laboratory Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end


And(/^the user verify the reference list laboratory report on the table for S6$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      # puts 'the row number is ' +delete_icons_row
      new_document = "60"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
        puts 'Reference List Radiology Report Validated '
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the radiology administration report on the table$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "AARON, EVAN CHRISTOPHER"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        # puts 'the MRN for the searched test Results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the searched test search"
  end
end

And(/^the user verify the radiology administration report with image$/) do
  record_found = false
  table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]"
      #puts 'the row number is ' +delete_icons_row
      new_document = "NM5000574218"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]/a"
        #puts 'the image number for the searched test Results are ' +del_obj
        click_web_element del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the searched test search"
  end
end

And(/^the user verify if existing subject "(.*)" data exist and remove it$/) do |value|
  page_text = @browser.html
  if page_text.include? value
    sleep 2
    step "the user clicks on \"subject list search check box\" element on \"Btris/Portal\" page"
    step "the user clicks on \"subject list remove button\" element on \"Btris/Portal\" page"
    step "the user clicks on \"subject list confirm remove\" element on \"Btris/Portal\" page"
    sleep 3
  else
    puts "The user didn't see #{value} text on page"
  end
end


And(/^the user click on the navigation bar if in mobile mode$/) do
  if ENV['TEST_ENV'].downcase.eql? 'test_mobile'
    puts ("Executing Environment is : #{ENV['TEST_ENV']}")
    step "the user clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
  else
    if ENV['TEST_ENV'].downcase.eql? 'prod_mobile'
      puts ("Executing Environment is : #{ENV['TEST_ENV']}")
      step "the user clicks on \"nav bar in mobile\" element on \"Btris/Portal\" page"
    else
      step "the user remembers the value of \"top nav drop-down\" field into \"Drop Down\" on \"Btris/Portal\" page"
      puts ("Test is not running in mobile emulator, Executing Environment is : #{ENV['TEST_ENV']}")

    end
  end
end

And(/^the user click on the navigation bar on the home page if in mobile mode$/) do
  if ENV['TEST_ENV'].downcase.eql? 'test_mobile'
    puts ("Executing Environment is : #{ENV['TEST_ENV']}")
    step "the user clicks on \"homepage nav bar in mobile\" element on \"Btris/Portal\" page"
    step "the user clicks on \"resource dropdown\" element on \"Resource\" page"
  else
    if ENV['TEST_ENV'].downcase.eql? 'prod_mobile'
      puts ("Executing Environment is : #{ENV['TEST_ENV']}")
      step "the user clicks on \"homepage nav bar in mobile\" element on \"Btris/Portal\" page"
      step "the user clicks on \"resource dropdown\" element on \"Resource\" page"
    else
      step "the user clicks on \"resource dropdown\" element on \"Resource\" page"
      puts ("Test is not running in mobile emulator, Executing Environment is : #{ENV['TEST_ENV']}")

    end
  end
end


And(/^the user verify the report configuration with name "(.*)" on the Saved Reports table$/) do |value|
  record_found = false
  table_path = ".//*[@class='table saved-reports-table']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
       puts 'the row number is ' +delete_icons_row
      new_document = "#{value}"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}//*[@class='btn btn-med btn-primary']"
        click_web_element del_obj
        sleep 2
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the added Saved Reports Configuration"
  end
end

And(/^the user verify the report configuration with name "(.*)" if already exist on the Saved Reports table with "(.*)" and enter new "(.*)" and "(.*)" and verify if "(.*)" which is being added already exist$/) do |value1, value2, value3, value4, value5|
  page_text = @browser.html
  if page_text.include? value5
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"demographic saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user clicks on \"delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"confirm delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"general reports\" field into \"Criteria List\" on \"Btris/Portal\" page"
    step "the user clicks on \"demographics test report\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    #Enter and filter subject.
    step "the user enters \"#{value3}\" into \"fine protocol and subject search box\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol verify count\" field into \"Number OF Subjects\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"selected protocol\" field into \"Protocol Number\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol check button\" field into \"Protocol Checkbox\" on \"Btris/Portal\" page"
    step "the user focus and clicks on \"protocol check button\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"fine filter subject search box\" on \"Btris/Portal\" page"
    sleep 3
    #click on run report button.
    step "the user clicks on \"run report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end



And(/^the user verify the report configuration with name "(.*)" if already exist on the Saved Reports table with "(.*)" and enter new "(.*)" and "(.*)" and verify if "(.*)" which is being added already exist and edit it$/) do |value1, value2, value3, value4, value5|
  page_text = @browser.html
  if page_text.include? value5
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"demographic saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Demographics\" on the Saved Reports table"
    # step "the user clicks on \"delete button for saved report\" element on \"Save/Reports\" page"
    # step "the user clicks on \"confirm delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"general reports\" field into \"Criteria List\" on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"demographics test report\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    #Enter and filter subject.
    step "the user enters \"#{value3}\" into \"fine protocol and subject search box\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol verify count\" field into \"Number OF Subjects\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"selected protocol\" field into \"Protocol Number\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol check button\" field into \"Protocol Checkbox\" on \"Btris/Portal\" page"
    step "the user focus and clicks on \"protocol check button\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"fine filter subject search box\" on \"Btris/Portal\" page"
    sleep 3
    #click on run report button.
    step "the user clicks on \"run report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end


And(/^the user verify Medication report configuration with name "(.*)" if already exist on the Saved Reports table with "(.*)" and enter new "(.*)" and "(.*)" and verify if "(.*)" which is being added already exist and edit it$/) do |value1, value2, value3, value4, value5|
  page_text = @browser.html
  if page_text.include? value5
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"medication saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Medication Report\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"general reports\" field into \"Criteria List\" on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"btris: medication test\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"btris: medication report page\" field into \"Criteria Page\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: top select subject button\" element on \"Btris/Portal\" page"
    #Enter and filter subject.
    step "the user enters \"#{value3}\" into \"fine protocol and subject search box\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol verify count\" field into \"Number OF Subjects\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"selected protocol\" field into \"Protocol Number\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol check button\" field into \"Protocol Checkbox\" on \"Btris/Portal\" page"
    step "the user focus and clicks on \"protocol check button\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"fine filter subject search box\" on \"Btris/Portal\" page"
    sleep 3
    #click on run report button.
    step "the user clicks on \"run report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end

And(/^the user verify Clinical Doc DV report configuration with name "(.*)" if already exist on the Saved Reports table with "(.*)" and enter new "(.*)" and "(.*)" and verify if "(.*)" which is being added already exist and edit it$/) do |value1, value2, value3, value4, value5|
  page_text = @browser.html
  if page_text.include? value5
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"clinical doc dv rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user clicks on \"delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"confirm delete button for saved report\" element on \"Save/Reports\" page"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"general reports\" field into \"Criteria List\" on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"clinical documents: discrete values\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user remembers the value of \"btris: clinical documents: discrete values filter report page\" field into \"Criteria Page\" on \"Btris/Portal\" page"
    step "the user clicks on \"btris: top select subject button\" element on \"Btris/Portal\" page"
    #Enter and filter subject.
    step "the user enters \"#{value3}\" into \"fine protocol and subject search box\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol verify count\" field into \"Number OF Subjects\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"selected protocol\" field into \"Protocol Number\" on \"Btris/Portal\" page"
    step "the user remembers the value of \"protocol check button\" field into \"Protocol Checkbox\" on \"Btris/Portal\" page"
    step "the user focus and clicks on \"protocol check button\" element on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"fine filter subject search box\" on \"Btris/Portal\" page"
    sleep 3
    #click on run report button.
    step "the user clicks on \"run report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end



And(/^the user verify admin saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and edit it with new "(.*)"$/) do |value1, value2, value3, value4|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"radiology admin saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Radiology Administrative\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"admin reports nav\" element on \"Btris/Portal\" page"
    #click on the  Radiology Administration Test.
    step "the user remembers the value of \"admin reports\" field into \"Reports\" on \"Btris/Portal\" page"
    step "the user clicks on \"report: radiology administration\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Radiology Administration Criteria\" text in \"btris: radiology administrative report filter page\" field on \"Btris/Portal\" page"
    step "the user enters \"#{value4}\" into \"radiology exam start date\" on \"Btris/Portal\" page"
    step "the user enters \"Todays Date\" into \"radiology exam end date\" on \"Btris/Portal\" page"
    #click on run report button.
    step "the user clicks on \"run admin report button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end

And(/^the user delete added report with name "(.*)" on the Saved Reports table$/) do |value|
  record_found = false
  table_path = ".//*[@class='table saved-reports-table hover-row-highlight']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 0
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[1]/td[2]"
      puts 'The report to delete is or are ' +delete_icons_row
      new_report = "#{value}"
      if delete_icons_row.downcase.eql? new_report.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}//*[contains(text(), 'Delete')]"
        click_web_element del_obj
        step "the user clicks on \"confirm delete button for saved report\" element on \"Save/Reports\" page"
        sleep 2
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the added Saved Reports Configuration"
  end
end

And(/^the user verify reference list saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and delete it then add new "(.*)" and enter "(.*)" and "(.*)" and "(.*)" and select "(.*)"$/) do |value1, value2, value3, value4, value5, value6, value7, value8|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"vital sign rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Vital Signs\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user remembers the value of \"reference list top nav\" field into \"Report Type\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list top nav\" element on \"Btris/Portal\" page"
    #click on the Laboratory Test.
    step "the user remembers the value of \"reference list reports: vital sign\" field into \"Criteria List\" on \"Btris/Portal\" page"
    #click on the Vital Sign Test.
    step "the user clicks on \"reference list vital sign\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Vital Signs Criteria\" text in \"reference list vital signs report filter page\" field on \"Btris/Portal\" page"
    sleep 2
    step "the user selects \"#{value4}\" from \"reference list drop down\" drop down on \"Btris/Portal\" page"
    step "the user enters \"#{value5}\" into \"reference list day range text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value6}\" into \"number of days after text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value7}\" into \"number of values text box\" on \"Btris/Portal\" page"
    step "the user selects \"#{value8}\" from \"labs drop down\" drop down on \"Btris/Portal\" page"
    step "the user clicks on \"btris: bottom select button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end

And(/^the user verify lab reference list saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and delete it then add new "(.*)" and enter "(.*)" and "(.*)" and "(.*)" and select "(.*)"$/) do |value1, value2, value3, value4, value5, value6, value7, value8|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"lab rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Laboratory Reference List\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user remembers the value of \"reference list top nav\" field into \"Report Type\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list top nav\" element on \"Btris/Portal\" page"
    #click on the Laboratory Test.
    step "the user remembers the value of \"reference list reports: vital sign\" field into \"Criteria List\" on \"Btris/Portal\" page"
    #click on the Vital Sign Test.
    step "the user clicks on \"reference list laboratory\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Laboratory Criteria\" text in \"reference list laboratory report filter page\" field on \"Btris/Portal\" page"
    sleep 2
    step "the user selects \"#{value4}\" from \"reference list drop down\" drop down on \"Btris/Portal\" page"
    step "the user enters \"#{value5}\" into \"reference list day range text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value6}\" into \"number of days after text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value7}\" into \"number of values text box\" on \"Btris/Portal\" page"
    step "the user selects \"#{value8}\" from \"labs drop down\" drop down on \"Btris/Portal\" page"
    step "the user clicks on \"btris: bottom select button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end


And(/^the user Pathology Signs reference list saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and delete it then add new "(.*)" and enter "(.*)" and "(.*)" and "(.*)" and select "(.*)"$/) do |value1, value2, value3, value4, value5, value6, value7, value8|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"pathology rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Pathology Reference List\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user remembers the value of \"reference list top nav\" field into \"Report Type\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list top nav\" element on \"Btris/Portal\" page"
    #click on the Laboratory Test.
    step "the user remembers the value of \"reference list reports: pathology\" field into \"Criteria List\" on \"Btris/Portal\" page"
    #click on the Vital Sign Test.
    step "the user clicks on \"reference list pathology\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Pathology Criteria\" text in \"reference list pathology report filter page\" field on \"Btris/Portal\" page"
    sleep 2
    step "the user selects \"#{value4}\" from \"reference list drop down\" drop down on \"Btris/Portal\" page"
    step "the user enters \"#{value5}\" into \"reference list day range text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value6}\" into \"number of days after text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value7}\" into \"number of values text box\" on \"Btris/Portal\" page"
    step "the user selects \"#{value8}\" from \"labs drop down\" drop down on \"Btris/Portal\" page"
    step "the user clicks on \"btris: bottom select button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end


And(/^the user Radiology reference list saved report with name "(.*)" if already exist on the Saved Reports table with "(.*)" and verify if "(.*)" which is being added already exist and delete it then add new "(.*)" and enter "(.*)" and "(.*)" and "(.*)" and select "(.*)"$/) do |value1, value2, value3, value4, value5, value6, value7, value8|
  page_text = @browser.html
  if page_text.include? value3
    step "the user clicks on \"report configuration cancel button\" element on \"Save/Reports\" page"
    step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
    step "the user clicks on \"save report on drop-down\" element on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"saved reports search field\" on \"Save/Reports\" page"
    step "the user remembers the value of \"radiology rl saved report\" field into \"Saved Reports Table\" on \"Save/Reports\" page"
    step "the user delete added report with name \"Pathology Reference List\" on the Saved Reports table"
    step "the user clicks on \"primary nav active protocol\" element on \"Save/Reports\" page"
    step "the user clicks on \"close report icon\" element on \"Btris/Portal\" page"
    step "the user clicks on \"close button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user remembers the value of \"reference list top nav\" field into \"Report Type\" on \"Btris/Portal\" page"
    step "the user clicks on \"reference list top nav\" element on \"Btris/Portal\" page"
    #click on the Laboratory Test.
    step "the user remembers the value of \"reference list reports: pathology\" field into \"Criteria List\" on \"Btris/Portal\" page"
    #click on the Vital Sign Test.
    step "the user clicks on \"reference list radiology\" element on \"Btris/Portal\" page"
    #Click on the create new report button.
    step "the user clicks on \"btris: create new report button\" element on \"Btris/Portal\" page"
    step "the user must see \"Radiology Criteria\" text in \"reference list radiology report filter page\" field on \"Btris/Portal\" page"
    sleep 2
    step "the user selects \"#{value4}\" from \"reference list drop down\" drop down on \"Btris/Portal\" page"
    step "the user enters \"#{value5}\" into \"reference list day range text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value6}\" into \"number of days after text box\" on \"Btris/Portal\" page"
    step "the user enters \"#{value7}\" into \"number of values text box\" on \"Btris/Portal\" page"
    step "the user selects \"#{value8}\" from \"labs drop down\" drop down on \"Btris/Portal\" page"
    step "the user clicks on \"btris: bottom select button\" element on \"Btris/Portal\" page"
    #Verify the demographic report table.
    step "the user remembers the value of \"reports results\" field into \"Loaded Report\" on \"Btris/Portal\" page"
    step "the user clicks on \"save report configuration button\" element on \"Save/Reports\" page"
    step "the user remembers the value of \"save report pop-up title\" field into \"Save Report Configuration\" on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
    step "the user must see \"Report name is required\" text in \"report configuration required message\" field on \"Save/Reports\" page"
    step "the user enters \"#{value1}\" into \"save report configuration name filed\" on \"Save/Reports\" page"
    step "the user enters \"#{value2}\" into \"save report configuration description box\" text area box on \"Save/Reports\" page"
    step "the user clicks on \"report configuration save button\" element on \"Save/Reports\" page"
  else
    puts 'No record found that matches ' +value1
  end
end

And(/^the user verify if the pdf linked has error message "(.*)" which means the link is broken$/) do | message|
  sleep 5
 if step "the switch to new tab page"
  page_text = @browser.html
  else
  if page_text.include? message
    fail("Unable to view or open the pdf document error message,  #{message} , is display after clicking the pdf link")
    step "the return to main page"
  else
    puts "The user didn't see error message, #{message} , text on the page which means the pdf link is working as expected"
  end
end
end

And(/^the user verify if the BTRIS logo linked has error message "(.*)" which means the link is broken$/) do | message|
  sleep 2
  step "the switch to new tab page"
  page_text = @browser.html
  if page_text.include? message
    fail("Unable to view or navigate to the BTRIS LOGO, error message   #{message} , is display when navigating to the logo")
    step "the return to main page"
  else
    puts "The user didn't see error message, #{message} , text on the page which means the BTRIS logo link is working as expected"
  end
end

And(/^the user download qa data with "(.*)" on the qa protocol table$/) do |value|
  record_found = false
  table_path = ".//*[@class='table qa-protocols-table hover-row-highlight']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      puts 'the protocol is ' +value
      download_button_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
      puts 'the row data is ' +download_button_row
      new_document = "#{value}"
      if download_button_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}//tbody/tr[#{rows}]/td/button"
        click_web_element del_obj
        sleep 2
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the qa protocol"
  end
end

And(/^the user verify the principal investigator "(.*)" investigated "(.*)" for Quality Assurance$/) do |value1, value2|
  record_found = false
  table_path = ".//*[@class='table qa-protocols-table hover-row-highlight']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      download_button_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_document = "#{value1}"
      if download_button_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
       if del_obj.eql? value1
         puts "The Principal Investigator Name #{value1} checked-out as Principal Investigator for #{value2}"
       else
         fail("The Principal Investigator Name #{value1} DID NOT checked-out as Principal Investigator for #{value2}")
       end
        sleep 2
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the qa protocol"
  end
end

Then(/^the user clicks on "(.*)" download on "(.*)" page$/) do |field_name, page_name|
  # get the XPATH or CSS from page object file , Raises Error if not found
  begin
    selector, element_path = get_element_target(field_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector = (selector.downcase.include? 'xpath') ? :xpath : :css

  # Create the Element object
  element_obj = @browser.element(selector, element_path)

  # Wait for element to be present
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  element_obj.click

  end


