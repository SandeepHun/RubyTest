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

And(/^the user completes Post mortem Carcass Condemnation Details tuberculosis"([^"]*)" leukosis "([^"]*)" septicaemiaandtoxemia "([^"]*)" synovitis "([^"]*)" tumors "([^"]*)" bruises "([^"]*)" cadavers "([^"]*)" contamination "([^"]*)" cverscald "([^"]*)" airsacculitis "([^"]*)" inflammatoryprocess "([^"]*)" noviscera "([^"]*)" plantrejects "([^"]*)" miscellaneous "([^"]*)" on "([^"]*)" page$/) do |value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11, value12, value13, value14, page|
  #puts value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11, value12, value13, value14, page
  step "the user enters \"#{value1}\" into \"tuberculosis text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value2}\" into \"leukosis text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value3}\" into \"septicaemia and toxem text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value4}\" into \"synovitis text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value5}\" into \"tumors text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value6}\" into \"bruises text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value7}\" into \"cadavers text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value8}\" into \"contamination text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value9}\" into \"overscald text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value10}\" into \"airsacculitis text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value11}\" into \"inflammatory process text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value12}\" into \"no viscera text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value13}\" into \"plant rejects text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value14}\" into \"miscellaneous text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
end

And(/^the user adds a new meat record Sub Class"([^"]*)" Head Count "([^"]*)" Live Weight "([^"]*)" Dressed Weight "([^"]*)" on "([^"]*)" page$/) do |value1, value2, value3, value4, page|
  #Click on the Add slaughter Record link.
  # step "the user waits 3 seconds"
  # if step "the user clicks \"add slaughter record link\" on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user clicks on \"add slaughter record link\" element on \"DispositionReporting/EstablishmentReporting\" page"
  # step "the user waits 6 seconds"

  # else
  #   puts "the element has already received a click."
  # end
  # step "the user waits \"2\" seconds"
  #Verify required fields.Scenario:
  # step "the user clicks \"add button for meat record\" on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user clicks the \"add button for meat record\" button on \"DispositionReporting/EstablishmentReporting\" page"
  # step "the user waits for \"5\" seconds"
  #Verify that the Sub-Class and Head Count indicates as required fields.Scenario:
  # And the user must see "<string>" text in "<string>" field on "<string>" page
  step "the user must see \"(Required)\" text in \"Required Field For Sub-Class\" field on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user must see \"(Required)\" text in \"Required Field For Head Count\" field on \"DispositionReporting/EstablishmentReporting\" page"
  #Select Sub-Class from the drop-down.
  # And the user selects "<string>" from "<string>" combo box on "<string>" page
  step "the user selects \"#{value1}\" from \"subclass dropdown\" combo box on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user waits for 4 seconds"
  # step "the user waits \"6\" seconds"
  #Locate the Head Count text-box and enter valid data.
  step "the user enters \"#{value2}\" into \"Head Count Text-Box\" on \"DispositionReporting/EstablishmentReporting\" page"
  #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
  step "the user enters \"#{value3}\" into \"Live Weight Text-Box\" on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user enters \"#{value4}\" into \"dressed weight text-box\" on \"DispositionReporting/EstablishmentReporting\" page"
  #Locate the Add button and click on it.
  # step "the user clicks \"add button for meat record\" on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user clicks the \"add button for meat record\" button on \"DispositionReporting/EstablishmentReporting\" page"

  # step "the user waits \"2\" seconds"
  #Verify the added record on top of the table.
  step "the user must see \"#{value1}\" text in \"sub class column for meat\" field on \"DispositionReporting/EstablishmentReporting\" page"
end

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
    puts 'No Pop Up to close or accept, all good'
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

And(/^the user verify if the establishment already have a no kill period$/) do
  check_record_present = get_elements_size 'xpath', ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]/span"
  if check_record_present > 1
    #Click on the No Kill Period from the left navigation.
    step "the user clicks on \"no kill period\" element on \"DispositionReporting/EstablishmentReporting\" page"
    # step "the user waits \"3\" seconds"
    #Select an Establishment to add the Ni Kill Period to.
    step "the user selects \"Pilgrims Pride - P843\" from \"establishment dropdown\" combo box on \"DispositionReporting/EstablishmentReporting\" page"
    #Select shift.
    step "the user selects \"Shift 1\" from \"shift dropdown\" combo box on \"DispositionReporting/EstablishmentReporting\" page"
    #Delete the No Kill Period to the Establishment.
    step "the user clicks on \"delete icon for added no kill period\" element on \"DispositionReporting/EstablishmentReporting\" page"
    step "the user dismisses browser pop-ups"
    #Locate and click on the Establishment Reporting from the Left nav.
    step "the user clicks on \"Establishment Reporting\" element on \"FSISDashBoard/Default\" page"
  else
    puts 'No kill Period has not yet been added to the selected Establishment'
  end
end


And(/^the user sign out and close the browser$/) do
  step "the user clicks on \"sign out button\" element on \"DispositionReporting/EstablishmentReporting\" page"
  #@browser.close
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
  step "the user clicks on \"btris: logout drop down\" element on \"Btris/Portal\" page"
  step "the user clicks on \"btris: logout\" element on \"Btris/Portal\" page"
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
        puts 'Note! these are test data not actual data, the pulmonary results are ' +del_obj
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
        #puts 'Note! These are test data and not actual data, the Laboratory results are ' +del_obj
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
        #puts 'Note! These are test data and not actual data, the Laboratory results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the laboratory report on the table$/) do
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
        puts 'Note! These are test data and not actual data, the Laboratory results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
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
        puts 'Note! These are test data and not actual data, the Laboratory results are ' +del_obj
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
         puts 'Note! These are test data and not actual data, the the Laboratory results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end


And(/^the user verify the diagnosis and procedure report on the table$/) do
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
        puts 'Note! this is a test data and not actual data, the diagnosis results are ' +del_obj
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
        puts 'Note! this is a test data and not actual data, the diagnosis results are ' +del_obj
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
        puts 'Note! this is a test data and not actual data, the Demographics results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Demographics search"
  end
end

And(/^the user test the pagination of the report$/) do
  if pagination_path = "//*[@class='page-item']"
  check_record_present = get_elements_size 'xpath', "#{pagination_path}"
if check_record_present > 1
  table_rows = get_elements_size 'xpath', "#{pagination_path}"
  (1..table_rows).each do |rows|
    del_obj = get_element_obj 'xpath', "#{pagination_path}"
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


And(/^the user verify the demographics report on the table$/) do
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
        puts 'Note! this is a test data and not actual data, the Demographics results are ' +del_obj
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
        puts 'Note! this is a test data and not actual data, the Demographics results are ' +del_obj
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
       # puts 'the MRN for the Laboratory results are ' +del_obj
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
         #sleep 4
      end
    end
    checkpoint (record_found.eql? true), "The Accept button or condition section is not enabled, all good"
  end
end

And(/^the user verify the clinical documents discrete values report on the table$/) do
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
        puts 'Note! these are test data not actual data, the validated diagnosis results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in report table that matches the search criteria"
  end
end

And(/^the user verify the clinical documents discrete values actual report on the table$/) do
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
        puts 'Note! these are test data not actual data, the validated diagnosis results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

Then(/^the user login to the btris application/) do
  step "the user waits for 2 seconds"
  step "the user clicks on \"btris: login button\" element on \"Btris/Portal\" page"
  step "the user enters \"btris_test2\" into \"btris: user name\" on \"Btris/Portal\" page"
  step "the user enters \"Nomorecognos11:\" into \"btris: password\" on \"Btris/Portal\" page"
  step "the user waits for 1 seconds"
  step "the user clicks on \"btris: login to dashboard button\" element on \"Btris/Portal\" page"
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
        #puts 'the MRN for the diagnosis results are ' +del_obj
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
      new_document = "ARRINGTON, LEARLIE FAY"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the MRN for the diagnosis results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the nichd ctdb forms report on the table with all protocol$/) do
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
        #puts 'the MRN for the diagnosis results are ' +del_obj
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
        # puts 'the MRN for the diagnosis results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the NICHD/CTDB Forms search"
  end
end

And(/^the user verify the vital signs report on the table$/) do
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
        puts 'Note! these are test data and not actual data, the vital signs results are ' +del_obj
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
        puts 'Note! these are test data and not actual data, the vital signs results are ' +del_obj
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

And(/^the user verify the medication report on the table$/) do
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
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        puts 'Note! these are test data and not actual data, the test results validated are ' +del_obj
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
        puts 'Note! these are test data and not actual data, the test results validated are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the medication search record"
  end
end


And(/^the user verify the pulmonary report on the table$/) do
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
        puts 'Note! these are test data not actual data, the pulmonary results are ' +del_obj
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
        puts 'Note! these are test data not actual data, the pulmonary results are ' +del_obj
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
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css
  # Create the Element object
  element_obj = @browser.element(selector, element_path)

  # Wait for element to be present
  wait_for_element(element_obj)
  # Focus on element to make it visible
  focus_on_element(element_obj)
  puts 'The The PFT Tests data is successfully display'

end

And(/^the user verify the clinical documents full text report on the table$/) do
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
      new_document = "00-C-0018"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        #del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
       # puts 'the MRN for the diagnosis results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end


And(/^the user verify the pathology report on the table$/) do
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
       # puts 'the MRN for the Laboratory results are ' +del_obj
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
        # puts 'the MRN for the Laboratory results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Pathology search subject"
  end
end


And(/^the user verify the ekg report on the table$/) do
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
        puts 'Note! these are test data and not actual data, the results table data are ' +del_obj
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
        puts 'Note! these are test data and not actual data, the results table data are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the EKG search"
  end
end

And(/^the user verify the microbiology report on the table$/) do
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
        puts 'Note! these are test data and not actual data, the Microbiology results are ' +del_obj
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
        puts 'Note! these are test data and not actual data, the Microbiology results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the echocardiogram report on the table$/) do
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
        puts 'Note! these are test data and not actual data, the Echocardiogram  results are ' +del_obj
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
        puts 'Note! these are test data and not actual data, the Echocardiogram  results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the Echocardiogram search"
  end
end

And(/^the user verify if existing "(.*)" exist and remove it$/) do |value|
  page_text = @browser.html
  if page_text.include? value
  sleep 3
    step "the user clicks on \"custom search term check box\" element on \"Btris/Portal\" page"
    sleep 3
    #Click on the remove button.Scenario:
    step "the user clicks on \"custom search term list remove button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"custom search term list confirm remove\" element on \"Btris/Portal\" page"
    sleep 3
    else
    puts "No existing search term data name #{value} added by the test exist"
  end
end

And(/^the user verify if existing "(.*)" data exist and remove it$/) do |value|
  page_text = @browser.html
  if page_text.include? value
    sleep 2
    step "the user clicks on \"reference list: search list check box\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"custom search term list remove button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"custom search term list confirm remove\" element on \"Btris/Portal\" page"
    sleep 3
  else
    puts "No existing #{value} added by the test exist which matches"
  end
end

And(/^the user verify the reference list laboratory report on the table$/) do
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
      new_document = "ACEVEDO, KARLA LIZBETH"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the Subject for the Reference Laboratory results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
end

And(/^the user verify the reference list pathology report on the table$/) do
  record_found = false
  if @browser.element(:xpath, ".//*[contains(text(), 'No records found')]").nil?
    table_path = ".//*[contains(@data-test, 'results-preview-table')]"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    #puts table_rows
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      # puts 'the row number is ' +delete_icons_row
      new_document = "ANDERSON, CHRISTINE NMN"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
        del_obj = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        #puts 'the Subject for the Reference Laboratory results are ' +del_obj
      end
    end
    checkpoint (record_found.eql? true), "No data found in table that matches the laboratory search"
  end
  else
    puts 'No record available on the search day ranges'
    end
end

And(/^the user verify if MRN "(.*)" has already been added and "(.*)" is display$/) do |value, message|
  page_text = @browser.html
  if page_text.include? message
    step "the user clicks on \"back error\" element on \"Manage/Subjects\" page"
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
        #puts 'the Subject for the Reference Laboratory results are ' +del_obj
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
       # puts 'the MRN for the searched test results are ' +del_obj
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
        #puts 'the image number for the searched test results are ' +del_obj
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
    sleep 2
    step "the user clicks on \"subject list remove button\" element on \"Btris/Portal\" page"
    sleep 2
    step "the user clicks on \"subject list confirm remove\" element on \"Btris/Portal\" page"
    sleep 3
  else
    puts "The user didn't see #{value} text on page"
  end
end
