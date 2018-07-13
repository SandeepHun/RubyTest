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





      }
end