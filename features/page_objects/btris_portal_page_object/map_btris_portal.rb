def map_btris_portal
  @page_objects['btris_portal'] =


      {
          #Export librarian, adding a country.
          'btris home: landing page'                         =>"xpath^^.//*[contains(@class, 'login-to-btris__heading')]",
          #'btris home: login button'                         =>"xpath^^.//*[contains(@class, 'btn round btn-lg my-1 mx-1 learn-more-button')]",
          'btris: login button'                              =>"xpath^^.//*[@class='btn round btn-lg btn-secondary'][contains(text(), 'Login')]",
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
          'btris: select subject button'                     =>"xpath^^.//*[contains(@data-test, 'criteria-next-button-top')]",
          'fine protocol and subject search box'             =>"xpath^^.//*[@id='pcsl-search-field']",
          'fine filter subject search box'                   =>"xpath^^//div[2]/div/div/div/form/div/div/input",
          'run report button'                                =>"xpath^^.//*[contains(@data-test, 'run-report-button')]",
          'radiology report page'                            =>"xpath^^.//*[contains(text(), 'Radiology Results Preview -')]",
          'download full report button'                      =>"xpath^^.//*[contains(@data-test, 'download-results-button')]",
          'check all button'                                 =>"xpath^^.//*[contains(@data-test, 'select-all-subject-lists-button')]",
          'radiology image display'                          =>"xpath^^.//*[@id='mainTab-0-tabCaptionPlace']",
          'demographic data check box'                       =>"xpath^^.//*[contains(@for, 'includeDemographics-checkbox')]",
          'open results in new tab button'                   =>"xpath^^.//*[@data-test='open-in-new-window-button']",
          'protocol check button'                            =>"xpath^^.//*[contains(@data-test, 'protocol-checkbox')]",
          #Laboratory Test.
          'laboratory test'                                  =>"xpath^^.//*[@data-test='4-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: laboratory filter report page'             =>"xpath^^.//*[contains(text(), 'Laboratory Report')]",
          'btris: bottom select button'                      =>"xpath^^.//*[contains(@data-test, 'criteria-next-button-bottom')]",
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
          'bottom button: select subject'                      =>"xpath^^.//*[@data-test='criteria-next-button-bottom']",
          #Red Search.
          'top nav: select report'                            =>"xpath^^.//*[contains(text(), 'Select Subjects')]",
          'top nav: enter report criteria'                    =>"xpath^^.//*[contains(text(), 'Enter Report Criteria')]",
          'labs: add labs button'                             =>"xpath^^.//*[contains(@data-test, 'add-red-terms-button')]",
          'red search: keyword text box'                      =>"xpath^^.//*[contains(@data-test, 'red-search-keywords-input')]",
          'red search: search type drop down'                 =>"xpath^^.//*[@id='labs-red-term-search-type']",
          'red search: search button'                         =>"xpath^^.//*[contains(@data-test, 'red-search-search-button')]",
          'red search: done button'                           =>"xpath^^.//*[contains(@data-test, 'red-search-lower-done-button')]",
          'red search data'                                   =>"xpath^^.//*[@id='C2113492_anchor']",
          'run report'                                        =>"xpath^^.//*[@data-test='run-report-button']",
          #Demographics report.
          'demographics test report'                          =>"xpath^^.//*[@data-test='6-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'demographics report page'                          =>"xpath^^.//*[contains(text(), 'Demographics Results Preview -')]",
          'demographics report table: subject name column'    =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'Subject Name')]",
          'diagnosis report table: subject name column'       =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(@class, 'colHeader')][contains(text(), 'Subject Name')]",
          'laboratory report table: subject name column'      =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'Subject Name')]",
          'laboratory report table: subject name'             =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'Subject Name')]",
          'laboratory and procedure report page'              =>"xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",
          'report table: collected data time column'          =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'Collected Date Time')]",
          'admin report table: subject name column'           =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(@class, 'colHeader')][contains(text(), 'Subject Name')]",

          'radiology report results table'                    =>"xpath^^.//*[contains(text(), 'Laboratory Results Preview -')]",
          #Assessment Report
          'btris: assessment report test'                     =>"xpath^^.//*[@data-test='15-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: assessment filter report page'              =>"xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'NIAAA Assessment Report')]",
          'assessment report table: subject name column'      =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'Subject Name')]",
          'assessment report page'                            =>"xpath^^.//*[contains(text(), 'NIAAA Assessment Report Results Preview -')]",
          'btris: assessment select subject button'           =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'select all assessment button'                      =>"xpath^^.//*[@for='assessments-red-quick-pick-select-all']",
          'assessment protocol subject'                       =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div[1]/div/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/div/labelb",
          #Clinical Documents - Discrete Values
          'clinical documents: discrete values'                           =>"xpath^^.//*[@data-test='9-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: clinical documents: discrete values filter report page' =>"xpath^^.//*[contains(text(), 'Clinical Documents - Discrete Values Report')]",
          'btris: top select button'                                      =>"xpath^^.//*[contains(@data-test, 'criteria-next-button-top')]",
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
          'btris: nichd ctdb forms page'                                =>"xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'NICHD/CTDB Forms')]",
          'nichd ctdb select button'                                    =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'nichd ctdb forms report page'                                =>"xpath^^.//*[contains(text(), 'NICHD/CTDB Forms Results Preview -')]",
          # PDF Documents
          'pdf documents'                                               =>"xpath^^.//*[@id='generalRpts']/div/ul/li[14]/div/label",
          'btris: pdf documents page'                                   =>"xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'PDF/Scanned Documents')]",
          'pdf documents select all button'                             =>"xpath^^.//*[@for='pdfScannedDocuments-red-quick-pick-select-all']",
          'pdf documents select button'                                 =>"xpath^^.//*[@id='app']/div[2]/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'pdf documents result page'                                   =>"xpath^^.//*[contains(text(), 'PDF Documents Results Preview -')]",
          'pdf documents search subject'                                =>"xpath^^.//*[contains(text(), 'ABOU-ANTOUN, SAMI NASSR')]",
          'search subject s2'                                           =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'NIHCCTEST, INNA NMN')]",
          'pdf documents buttom select button'                          =>"xpath^^.//*[@id='app']/div[2]/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[4]/div[2]/button",
          #Vital signs
          'btris: vital signs test'                                     =>"xpath^^.//*[@id='generalRpts']/div/ul/li[17]/div/label",
          'btris: vital signs test page'                                =>"xpath^^.//*[@id='app']//*[contains(text(), 'Vital Signs Report')]",
          'vital signs test select button'                              =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[1]/div[2]/div/div[2]/button",
          'vital signs test result page'                                =>"xpath^^.//*[contains(text(), 'Vital Signs Results Preview -')]",
          'vital signs test table: subject name column'                 =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]//*[contains(text(), 'Subject Name')]",
          'include demographic report radio button'                     =>"xpath^^.//*[@for='includeDemographics-checkbox']",
          'vital sign bottom select button'                             =>"xpath^^.//*[@id='app']/div/div[1]/div[2]/div[2]/div/div/div/div/form/div[2]/div/div[5]/div[2]/button",
          'report creation date'                                        =>"xpath^^.//*[@id='mainTab-0-SV_reportDate']",
          #Medication Test
          'btris: medication test'                                      =>"xpath^^.//*[@data-test='18-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: medication report page'                               =>"xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'Medication Report')]",
          'medication report page'                                      =>"xpath^^.//*[contains(text(), 'Medication Report Results Preview -')]",
          'medication admin drop down'                                  =>"xpath^^.//*[@id='report-output-format-select']",
          #Pulmonary Function Test Lab Report
          'btris: pulmonary test'                                      =>"xpath^^.//*[contains(@data-test, '13-radio-value')]",
          'btris: pulmonary report page'                               =>"xpath^^.//*[@class='prompts-header__heading']//*[contains(text(), 'Pulmonary Function Test Report')]",
          'pulmonary result report page'                               =>"xpath^^.//*[contains(text(), 'Pulmonary Function Test Lab Report Results Preview -')]",
          'pulmonary: add pft test button'                             =>"xpath^^.//*[contains(@data-test, 'add-red-terms-button')]",
          'pulmonary top nav: report criteria'                         =>"xpath^^.//*[@class='btris-progress-bar-item__link router-link-exact-active router-link-active']",
          'pulmonary: add pft done button'                             =>"xpath^^.//*[@data-test='red-search-lower-done-button']",
          'pft tests data'                                             =>'xpath^^.//*[contains(text(), "Pulmonary Function Test (PFT) Panel and Panel Component")]',
          #Clinical Documents - Full Text
          'btris: clinical documents full tex test'                    =>"xpath^^.//*[@data-test='7-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: clinical documents full tex report page'             =>"xpath^^.//*[contains(text(), 'Clinical Documents - Full Text Report')]",
          'clinical documents full tex result page'                    =>"xpath^^.//*[contains(text(), 'Clinical Documents - Full Text Results Preview -')]",
          #Pathology report
          'btris: pathology test'                                      =>"xpath^^.//*[contains(@data-test, '11-radio-value')]",
          'btris: pathology report page'                               =>"xpath^^.//*[contains(text(), 'Pathology Report')]",
          'pathology result page'                                      =>"xpath^^.//*[contains(text(), 'Pathology Results Preview -')]",
          'select all pathology test'                                  =>"xpath^^.//*[@for='pathologyTests-red-quick-pick-select-all']",
          # IRB Inclusion Enrollment
          'btris: irb inclusion enrollment test'                                      =>"xpath^^.//*[@data-test='16-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: irb inclusion enrollment report page'                               =>"xpath^^.//*[contains(text(), 'IRB Inclusion Enrollment Report')]",
          'irb inclusion enrollment result page'                                      =>"xpath^^.//*[contains(text(), 'Cumulative Inclusion Enrollment Report')]",
          'download pd report button'                                                 =>"xpath^^.//*[@data-test='download-results-button']",
          'irb inclusion enrollment search protocol'                                  =>"xpath^^.//*[@id='protocolSection']/div[2]/span",
          'irb inclusion select protocol'                                             =>"xpath^^.//*[@data-test='select-pcsl-18785-protocol-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'irb inclusion open report in new tab'                                      =>"xpath^^.//*[@data-test='open-in-new-window-button']",
          'irb inclusion search protocol2'                                            =>"xpath^^.//*[@data-test='select-pcsl-18789-protocol-radio-value'][contains(@class, 'custom-control custom-radio')]",
          # IRB Inclusion Enrollment
          'btris: ekg test'                                                           =>"xpath^^.//*[@data-test='10-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: ekg report page'                                                    =>"xpath^^.//*[contains(text(), 'EKG Report')]",
          'select all ekg observation checkbox'                                       =>"xpath^^.//*[@for='ekgObservations-red-quick-pick-select-all']",
          'select ekg subject top button'                                             =>"xpath^^.//*[@data-test='criteria-next-button-top']",
          'select ekg subject bottom button'                                          =>"xpath^^.//*[@data-test='criteria-next-button-bottom']",
          'ekg result page'                                                           =>"xpath^^.//*[contains(text(), 'EKG Results Preview -')]",
          'report table: subject name'                                                =>"xpath^^.//*[contains(text(), 'Subject Name')]",
          #Microbiology Test
          'btris: microbiology test'                                                           =>"xpath^^.//*[@data-test='14-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: microbiology report page'                                                    =>"xpath^^.//*[contains(text(), 'Microbiology Report')]",
          'select all microbiology observation checkbox'                                       =>"xpath^^.//*[@for='ekgObservations-red-quick-pick-select-all']",
          'select microbiology subject top button'                                             =>"xpath^^.//*[@data-test='criteria-next-button-top']",
          'unchecked subject button'                                                           =>"xpath^^.//*[@data-test='select-all-subjects-button']",
          'subject checkbox'                                                                   =>"xpath^^.//*[@data-test='subject-checkbox']",
          'microbiology result page'                                                           =>"xpath^^.//*[contains(text(), 'Microbiology Results Preview -')]",
          'blinded results drop down'                                                          =>"xpath^^.//*[@id='blindedResults-select']",
          #Echocardiogram Test
          'btris: echocardiogram test'                                                           =>"xpath^^.//*[@data-test='12-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'btris: echocardiogram report page'                                                    =>"xpath^^.//*[contains(text(), 'Echocardiogram Report')]",
          'select all echocardiogram tests checkbox'                                             =>"xpath^^.//*[@for='echocardiogramTests-red-quick-pick-select-all']",
          'select echocardiogram subject top button'                                             =>"xpath^^.//*[@data-test='criteria-next-button-top']",
          'echocardiogram result page'                                                           =>"xpath^^.//*[contains(text(), 'Echocardiogram Results Preview -')]",
           #Reference List Report
          'custom user drop down'                                                             =>"xpath^^.//*[@id='nav-user-dropdown']",
          'custom list'                                                                       =>"xpath^^.//*[@data-test='nav-user-dropdown-custom-list-management']",
          'custom list search term box'                                                       =>"xpath^^.//*[@id='search-term-lists-search-field']",
          'custom search term check box'                                                      =>"xpath^^.//*[@data-test='search-term-list-checkbox']",
          'custom search term list remove button'                                             =>"xpath^^.//*[@id='app']/div/div/div[1]/div[2]/div/div[2]/div/div/div/div[1]/div/div[1]/a/span",
          'custom search term list upload button'                                             =>"xpath^^.//*[@data-test='upload-list-button']",
          'custom search term list confirm remove'                                            =>"xpath^^.//*[@class='btn round btn-lg btn-danger']",
          'custom search term list: user field'                                               =>"xpath^^.//*[@id='red-list-upload-user-field']",
          'custom search term list: list name field'                                          =>"xpath^^.//*[@id='red-list-upload-name-field']",
          'custom search term list: description'                                              =>"xpath^^.//*[@id='red-list-upload-description-field']",
          'custom search term list: domain drop down'                                         =>"xpath^^.//*[@id='red-list-upload-domain-field']",
          'custom search term list: brows upload'                                             =>"xpath^^.//*[@id='red-list-upload-file-field']",
          'custom search term list: upload button'                                            =>"xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'custom search term list: user'                                                     =>"xpath^^.//*[@id='red-list-upload-user-field-listbox-BTRIS_TEST2']",
          'custom search term overwrite checkbox'                                             =>"xpath^^.//*[@for='red-list-upload-overwrite-checkbox']",
          'reference list'                                                                    =>"xpath^^.//*[@class='clm-nav__link'][contains(@href, '/app/custom-lists/reference-dates')]",
          'reference list: search box'                                                        =>"xpath^^.//*[@id='reference-lists-search-field']",
          'reference list: search list check box'                                             =>"xpath^^.//*[@data-test='reference-list-checkbox']",
          'reference list: list name field'                                                   =>"xpath^^.//*[@id='reference-list-upload-name-field']",
          'reference list: overwrite checkbox'                                                =>"xpath^^.//*[@for='reference-list-upload-overwrite-checkbox']",
          'reference list: description'                                                       =>"xpath^^.//*[@id='reference-list-upload-description-field']",
          'reference list: date type'                                                         =>"xpath^^.//*[@id='reference-list-upload-date-type-field']",
          'reference list: brows upload'                                                      =>"xpath^^.//*[@id='reference-list-upload-file-field']",
          'reference list: upload button'                                                     =>"xpath^^.//*[@class='btn round btn-lg btn-primary']",
          'nav arrow to active protocol'                                                      =>"xpath^^.//*[@class='fa fa-arrow-left fa-lg']",
          'reference list top nav'                                                            =>"xpath^^.//*[@class='title title_center'][contains(text(), 'Reference List Reports')]",
          'reference list laboratory'                                                         =>"xpath^^.//*[@data-test='17-radio-value'][contains(@class, 'custom-control custom-radio')]",
          'reference list laboratory report filter page'                                      =>"xpath^^.//*[contains(text(), 'Laboratory Report')]",
          'reference list drop down'                                                          =>"xpath^^.//*[@id='select-reference-list']",
          'reference list day range text box'                                                 =>"xpath^^.//*[@id='day-range-from-numeric-value']",
          'number of days after text box'                                                     =>"xpath^^.//*[@id='day-range-to-numeric-value']",
          'number of values text box'                                                         =>"xpath^^.//*[@id='referenceListClosestRecordCount-reference-list-number-of-values']",
          'labs drop down'                                                                    =>"xpath^^.//*[@id='selectLabList-reference-list-select-search-terms']",
          'reference list blinded results drop down'                                          =>"xpath^^.//*[@id='blindedResults-select']",
          'enter required criteria button'                                                    =>"xpath^^.//*[@data-test='criteria-next-button-bottom']",
          'reference document with negative mrn number'                                       =>"xpath^^.//*[@class='form-control-feedback'][contains(text(), 'There was 1 error with your submission:')]",
          #Admin Report
          'navigation: admin report'                                                          =>"xpath^^.//*[@data-test='launch-admin-reports-button']",
          'report: radiology administration'                                                  =>"xpath^^.//*[@data-test='1021-radio-value']",
          'btris: radiology administrative report filter page'                                =>"xpath^^.//*[contains(text(), 'Radiology Administrative Report')]",
          'radiology administrative report page'                                              =>"xpath^^.//*[contains(text(), 'Radiology Administration Results Preview -')]",
          'admin: open results in new tab button'                                             =>"xpath^^.//*[@data-test='open-in-new-window-button']",
          'admin: administrative report image'                                                =>"xpath^^.//*[contains(@data-test, 'results-preview-table')]/tbody/tr/td[6]/a[contains(text(), 'NM5000574218')]",
          'admin: administrative report image report'                                         =>"xpath^^.//*[@id='mainTab-0-tabCaptionPlace']",
          'admin: add radiology report tests button'                                          =>"xpath^^.//*[@data-test='add-red-terms-button']",
          'admin: radiology search text box'                                                  =>"xpath^^.//*[@id='radiologyTests-red-term-keywords']",
          'admin: radiology search button'                                                    =>"xpath^^.//*[@data-test='red-search-search-button']",
          'admin: radiology search red search result'                                         =>"xpath^^.//*[@id='C3147738_anchor']",
          'admin: radiology red search done button'                                           =>"xpath^^.//*[@data-test='red-search-upper-done-button']",





      }
end