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
          'red search data'                                   =>"xpath^^.//*[@id='C2113492_anchor'][contains(@data-test, 'red-node red-node-C2113492')]",
          'run report'                                        =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div[2]/div/div/div[1]/div/div/div/div[2]/button",
          #Demographics report.
          'demographics test report'                          =>"xpath^^.//*[@id='generalRpts']/div/ul/li[3]/div/label",
          'demographics report page'                          =>"xpath^^.//*[contains(text(), 'Demographics Results Preview -')]",
          'demographics report table: subject name column'    =>"xpath^^.//*/div[1]/div/div/div/table/thead/tr/th[3]/div/span",
          'diagnosis report table: subject name column'       =>"xpath^^.//*[contains(text(), 'Subject Name')]",
          'laboratory report table: subject name column'      =>"xpath^^.//*/div[1]/div/div/div/table/thead/tr/th[3]/div/span",
          'laboratory and procedure report page'              =>"xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",
          'radiology report results table'                    =>"xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",
          #Assessment Report
          'btris: assessment report test'                     =>"xpath^^.//*[@id='generalRpts']/div/ul/li[11]/div/label",
          'btris: assessment filter report page'              =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[1]/h2",
          'assessment report table: subject name column'      =>"xpath^^.//*/div[1]/div/div/div/table/thead/tr/th[3]/div/span",
          'assessment report page'                            =>"xpath^^.//*[contains(text(), 'NIAAA Assessment Report Results Preview -')]",
          'btris: assessment select subject button'           =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'select all assessment button'                      =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[4]/div[2]/button",
          'assessment protocol subject'                       =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div[1]/div/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/div/labelb",
          #Clinical Documents - Discrete Values
          'clinical documents: discrete values'              =>"xpath^^.//*[@id='generalRpts']/div/ul/li[1]/div/label",
          'btris: clinical documents: discrete values filter report page' =>"xpath^^.//*[contains(text(), 'Clinical Documents - Discrete Values Report')]",
          'btris: clinical documents: discrete values select button'      =>"xpath^^.//*[@id='app']/div[2]/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'clinical documents: discrete report page'                      =>"xpath^^.//*[contains(text(), 'Clinical Documents - Discrete Values Results Preview -')]",
          'labs: add clinical doc button'                                 =>"xpath^^.//*[contains(@data-test, 'add-red-terms-button')]",
          'red search for clinical doc'                                   =>"xpath^^.//*[@id='C114092_anchor'][contains(@data-test, 'red-node red-node-C114092')]",
          'red search: clinical doc search type drop down'                =>"xpath^^.//*[@id='clinicalDocuments-red-term-search-type']",
          'red search: clinical doc done button'                          =>"xpath^^.//*[contains(@data-test, 'red-search-upper-done-button')]",
          'red search: clinical doc done search button'                   =>"xpath^^.//*[contains(@data-test, 'red-search-search-button')]",
          'red search: serial research'                                   =>"xpath^^.//*[@id='C2166735_anchor'][contains(@data-test, 'red-node red-node-C2166735')]",
          'red search: start with research'                               =>"xpath^^.//*[@id='C2159770_anchor']",
          'red search: exact phrase research'                             =>"xpath^^.//*[@id='C2166966_anchor']",
          'labs: add observation button'                                 =>"xpath^^.//*[contains(@data-test, 'add-red-terms-button')][contains(text(), 'Add Observations')]",
          'labs: search type drop down'                                  =>"xpath^^.//*[@id='clinicalDocumentDiscreteValues-red-term-search-type']",
          'red search clinical: contains phrase research'                =>"xpath^^.//*[@id='C2256100_anchor']",
          'red search clinical: contains any search for add observation' =>"xpath^^.//*[contains(@data-test, 'red-node red-node-C2256100')]",
          'red search clinical: start with search for add observation'   =>"xpath^^.//*[@id='C118703_anchor']",
          #NICHD/CTDB Forms
          'nichd ctdb forms'                                            =>"xpath^^.//*[contains(@data-test, '1020-radio-value')]",
          'btris: nichd ctdb forms page'                                =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[1]/h2",
          'nichd ctdb select button'                                    =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'nichd ctdb forms report page'                                =>"xpath^^.//*[contains(text(), 'NICHD/CTDB Forms Results Preview -')]",
          # PDF Documents
          'pdf documents'                                               =>"xpath^^.//*[@id='generalRpts']/div/ul/li[14]/div/label",
          'btris: pdf documents page'                                   =>"xpath^^.//*[@id='app']/div[2]/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[1]/h2",
          'pdf documents select all button'                             =>"xpath^^.//*[@id='app']/div[2]/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[2]/div[2]/div[1]/div/label",
          'pdf documents select button'                                 =>"xpath^^.//*[@id='app']/div[2]/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'pdf documents result page'                                   =>"xpath^^.//*[contains(text(), 'PDF Documents Results Preview -')]",
          'pdf documents search subject'                                =>"xpath^^.//*[contains(text(), 'ABOU-ANTOUN, SAMI NASSR')]",
          'search subject s2'                                           =>"xpath^^.//*[contains(text(), 'CAHILL, PATRICIA ANN MARIE')]",

          'pdf documents buttom select button'                          =>"xpath^^.//*[@id='app']/div[2]/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[4]/div[2]/button",
          #Vital signs
          'btris: vital signs test'                                     =>"xpath^^.//*[@id='generalRpts']/div/ul/li[17]/div/label",
          'btris: vital signs test page'                                =>"xpath^^.//*[@id='app']//*[contains(text(), 'Vital Signs Report')]",
          'vital signs test select button'                              =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'vital signs test result page'                                =>"xpath^^.//*[contains(text(), 'Vital Signs Results Preview -')]",
          'vital signs test table: subject name column'                 =>"xpath^^.//*/div[2]/div/div/div/table/thead/tr/th[3]/div/span",
          'include demographic report radio button'                     =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[3]/div/div/div/label",
          'vital sign bottom select button'                             =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[5]/div[2]/button",
          'report creation date'                                        =>"xpath^^.//*[@id='mainTab-0-SV_reportDate']",


      }
end