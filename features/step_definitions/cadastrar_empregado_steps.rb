
Dado(/^que eu estou no site orangehrm$/) do
  
  visit "http://opensource.demo.orangehrmlive.com/"

end


Quando(/^eu realizo o cadastro de um novo empregado$/) do
  
  fill_in('txtUsername',:with => 'Admin')
  fill_in('txtPassword',:with => 'admin')
  click_button('btnLogin')
  find(:xpath,'//*[@id="menu_pim_viewPimModule"]').click
  find(:xpath,'//*[@id="menu_pim_addEmployee"]').click
  fill_in('firstName',:with => 'Daniel')
  fill_in('middleName',:with => 'Lamim')
  fill_in('lastName',:with => 'Kobayashi')
  fill_in('employeeId', :with => '0012')

  click_button('btnSave')
 
end


Então(/^o empregado é cadastrado$/) do

  assert_text('Personal Details')

end
