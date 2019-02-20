def map_manage_subjects
  @page_objects['manage_subjects'] =


      {
          #Export librarian, adding a country.
          'top navigation: manage subject'                   =>"xpath^^.//*[@data-test='primary-nav-manage-subjects']//*[contains(text(), 'Manage Subjects')]",
          'search protocol text box'                         =>"xpath^^.//*[@id='manage-subjects-protocols-search-field']",
          'searched protocol table'                          =>"xpath^^.//*[@data-test='manage-subjects-protocols']/tbody/tr[1]/td[1]",
          'searched subject'                                 =>"xpath^^.//*[@data-test='manageProtocols_protocol-number']",
          'manage subject page'                              =>"xpath^^.//*[@class='manage-subjects-header__title']",
          'protocols table'                                  =>"xpath^^.//*[@data-test='manage-subjects-protocol-subjects']",
          'number of subjects'                               =>"xpath^^.//*[@class='table manage-protocols-table']/tbody/tr[1]/td[5]//strong",
          'number of consented subjects'                     =>"xpath^^.//*[@data-test='mps-consented-count']",
          'subject consented switch'                         =>"xpath^^.//*[@class='table manage-protocol-subjects-table']/tbody/tr[1]/td[3]//label",
          'subject table'                                    =>"xpath^^.//*[@class='table manage-protocol-subjects-table']/tbody/tr[1]/td[1]",
          'back arrow'                                       =>"xpath^^.//*[@class='fa fa-arrow-circle-left fa-2x']",
          'subject search field'                             =>"xpath^^.//*[@id='manage-subjects-protocol-subjects-search-field']",
          'initial consent date'                             =>"xpath^^.//*[contains(@id, 'manage-protocol-subjects-initial-consent-')]",
          'initial consent info icon'                        =>"xpath^^.//*[@class='table manage-protocol-subjects-table']/thead/tr/th[8]//button[2]",
          'initial consent info pop-up'                      =>"xpath^^.//*[@id='__btris-modal-title__']",
          'initial consent info pop-up close button'         =>"xpath^^.//*[@class='btn round btn-lg btn-secondary']",
          'add subject button'                               =>"xpath^^.//*[@class='btn round btn-sm btn-primary']//*[contains(text(), 'Add Subjects')]",
          'enter mrn text box'                               =>"xpath^^.//*[@id='add-subjects-enter-subject-mrns']",
          'display mrn message header'                       =>"xpath^^.//*[@id='invalid-mrn-display-header']",
          'submit button'                                    =>"xpath^^.//*[@data-test='submit-mrns-text-upload']",
          'display mrn message banner'                       =>"xpath^^.//*[@id='display-action-banner']",
          'affirm consent button'                            =>"xpath^^.//*[@id='display-action-banner']/button",
          'affirm consent message'                           =>"xpath^^.//*[contains (text(), 'Success!')]",
          'return to subject button'                         =>"xpath^^.//*[@class='router-link-active btn round btn-sm btn-primary']",
          'manage subject protocol text box'                 =>"xpath^^.//*[@id='manage-subjects-protocol-subjects-search-field']",
          'delete protocol icon'                             =>"xpath^^.//*[@data-test='remove-subject-button']",
          'remove button'                                    =>"xpath^^.//*[@class='btn round btn-lg btn-danger']",
          'add subject validation'                           =>"xpath^^.//*[@id='invalid-mrn-display-banner']//*[contains(text(), 'Already in Protocol')]",

          'brows button'                                     =>"xpath^^.//*[@id='app']//*[contains(@type, 'file')]",
          'upload subjects button'                           =>"xpath^^.//*[@data-test='enter-or-upload-subjects-file-upload']",
          'upload subjects clear button'                     =>"xpath^^(//button[@type='button'])[4]",
          'invalid mrn display danger'                       =>"xpath^^.//*[@class='invalid-mrn-display__danger-sub-full']/h3",
          'invalid mrn display'                              =>"xpath^^.//*[@class='invalid-mrn-display__danger-sub-full']/p",







      }
end