def map_btris_portal
  @page_objects['btris_portal'] =


      {
          #Export librarian, adding a country.
          'btris home: landing page'                         =>"xpath^^.//*[contains(@class, 'login-to-btris__heading')]",
          'btris home: login button'                         =>"xpath^^.//*[contains(@class, 'btn round btn-lg my-1 mx-1 learn-more-button')]",
          'btris: login button'                              =>"xpath^^.//*[contains(@class, 'btn round btn-lg my-1 mx-1 learn-more-button')]",
          'btris: user name'                                 =>"xpath^^.//*[@id='USER']",
          'btris: password'                                  =>"xpath^^.//*[@id='PASSWORD']",
          'btris: login to dashboard button'                 =>"xpath^^.//*[@id='Image2']",
          'btris: accept button'                             =>"xpath^^.//*[contains(@data-test, 'accept-conditions-of-use-button')]",
          'btris: logout drop down'                          =>"xpath^^.//*[@id='nav-user-dropdown']",
          'btris: logout'                                    =>"xpath^^.//*[contains(@data-test, 'nav-user-dropdown-logout')]",
          'btris: accept page'                               =>"xpath^^.//*[contains(text(), 'Conditions of Use and Code of Conduct')]",
          'btris: active protocol button'                    =>"xpath^^.//*[contains(@data-test, 'launch-active-protocols-button')]",
          'btris: radiology test'                            =>"xpath^^.//*[contains(@data-test, '8-radio-value')]//*[contains(text(), 'Radiology')]",
          'btris: create new report button'                  =>"xpath^^.//*[contains(@class, 'btn round btn-lg btn-primary')][contains(text(), 'Create New Repor')]",
          'btris: radiology filter report page'              =>"xpath^^.//*[contains(text(), 'Radiology Report')]",
          'btris: select subject button'                     =>"xpath^^//div[@id='app']/div[2]/div/div[2]/div[2]/div/div/div/div/form/div/div[2]/div/div[2]/button",
          'fine protocol and subject search box'             =>"xpath^^.//*[@id='pcsl-search-field']",
          'fine filter subject search box'                   =>"xpath^^//div[2]/div/div/div/form/div/div/input",
          'run report button'                                =>"xpath^^.//*[contains(@data-test, 'run-report-button')]",
          'radiology report page'                            =>"xpath^^.//*[contains(text(), 'Radiology Results Preview -')]",
          'download full report button'                      =>"xpath^^.//*[contains(@data-test, 'download-results-button')]",
          'check all button'                                 =>"xpath^^.//*[contains(@data-test, 'select-all-subject-lists-button')]",
          'radiology image display'                          =>"xpath^^.//*[@id='mainTab-0-tabCaptionPlace']",
          'demographic data check box'                       =>"xpath^^.//*[contains(@for, 'includeDemographics-checkbox')]",
          'open results in new tab button'                   =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div[1]/div/div[2]/div/div/div[4]/button",
          'protocol check button'                            =>"xpath^^.//*[contains(@data-test, 'protocol-checkbox')]",






      }
end