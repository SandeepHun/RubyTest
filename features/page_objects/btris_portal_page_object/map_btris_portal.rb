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
          #Laboratory Test.
          'laboratory test'                                  =>"xpath^^.//*[@id='generalRpts']/div/ul/li[8]/div/label",
          'btris: laboratory filter report page'             =>"xpath^^.//*[contains(text(), 'Laboratory Report')]",
          'btris: laboratory select button'                  =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'laboratory report page'                           =>"xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",
          #Dianostic and procedure.
          'diagnosis and procedure test'                      =>"xpath^^.//*[contains(@data-test, '19-radio-value')]",
          'diagnosis and procedure report page'               =>"xpath^^.//*[contains(text(), 'Diagnosis & Procedure Results Preview -')]",
          'btris: diagnosis and procedure filter report page' =>"xpath^^.//*[contains(text(), 'Diagnosis & Procedure Report')]",
          'btris: diagnosis and procedure select button'      =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'observation type: select all'                      =>"xpath^^.//*[@id='observationTypes-red-quick-pick-select-all']",
          'observation type: admit diagnosis'                 =>"xpath^^.//*[contains(text(), 'Admit Diagnosis')]",
          'observation type: chief complaint'                 =>"xpath^^.//*[contains(text(), 'Chief Complaint')]",
          'observation type: discharge diagnosis'             =>"xpath^^.//*[contains(text(), 'Discharge Diagnosis')]",
          'observation type: niaid problem'                   =>"xpath^^.//*[contains(text(), 'NIAID Problem')]",
          'observation type: procedure'                       =>"xpath^^.//*[contains(text(), 'Procedure')]",
          'observation type: rare disease'                    =>"xpath^^.//*[contains(text(), 'Rare Disease')]",
          'observation type: volunteer diagnosis'             =>"xpath^^.//*[contains(text(), 'Volunteer Diagnosis')]",
          'bottom button: select subject'                      =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[5]/div[2]/button",
          #Red Search.
          'top nav: select report'                            =>"xpath^^.//*[contains(text(), 'Select Subjects')]",
          'top nav: enter report criteria'                    =>"xpath^^.//*[contains(text(), 'Enter Report Criteria')]",
          'labs: add labs button'                             =>"xpath^^.//*[contains(@data-test, 'add-red-terms-button')]",
          'red search: keyword text box'                      =>"xpath^^.//*[contains(@data-test, 'red-search-keywords-input')]",
          'red search: search type drop down'                 =>"xpath^^.//*[@id='labs-red-term-search-type']",
          'red search: search button'                         =>"xpath^^.//*[contains(@data-test, 'red-search-search-button')]",
          'red search: done button'                           =>"xpath^^.//*[contains(@data-test, 'red-search-lower-done-button')]",
          'red search data'                                   =>"xpath^^.//*[@id='C90150_anchor'][contains(@data-test, 'red-node red-node-C90150')]",
          'run report'                                        =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div[2]/div/div/div[1]/div/div/div/div[2]/button",
          #Demographics report.
          'demographics test report'                          =>"xpath^^.//*[@id='generalRpts']/div/ul/li[3]/div/label",
          'demographics report page'                          =>"xpath^^.//*[contains(text(), 'Demographics Results Preview -')]",
          'demographics report table: subject name column'    =>"xpath^^.//*/div[1]/div/div/div/table/thead/tr/th[3]/div/span",
          'diagnosis report table: subject name column'       =>"xpath^^.//*/div[1]/div/div/div/table/thead/tr/th[3]/div/span",
          'laboratory report table: subject name column'      =>"xpath^^.//*/div[1]/div/div/div/table/thead/tr/th[3]/div/span",
          'laboratory and procedure report page'              =>"xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",
          'radiology report results table'                    =>"xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",





      }
end