def map_manage_subjects
  @page_objects['manage_subjects'] =


      {
          #Export librarian, adding a country.
          'top navigation: manage subject'                   =>"xpath^^.//*[@data-test='primary-nav-manage-subjects']//*[contains(text(), 'Manage Subjects')]",
          'search protocol text box'                         =>"xpath^^.//*[@id='manage-subjects-protocols-search-field']",
          'searched protocol count'                          =>"xpath^^.//*[@class='manage-subjects-header__title']",
          'searched protocol'                                =>"xpath^^.//*[@data-test='manageProtocols_protocol-number']",
          'searched protocol page'                           =>"xpath^^.//*[@class='manage-subjects-header__title']",
          'protocols table'                                  =>"xpath^^.//*[@data-test='manage-subjects-protocol-subjects']",







      }
end