
Quando(/^eu realizo a edição do cadastro de um empregado$/) do

	#login
	fill_in('txtUsername',:with => 'Admin')
	fill_in('txtPassword',:with => 'admin')
 	click_button('btnLogin')

 	#search id
 	find(:xpath,'//*[@id="menu_pim_viewPimModule"]').click
 	find(:xpath,'//*[@id="menu_pim_viewEmployeeList"]').click
 	fill_in('empsearch_id',:with => '0012')
 	find(:xpath, '//*[@id="searchBtn"]').click
	click_link('0012')
	
	#edit Personal
	click_button('btnSave')
	choose('personal_optGender_1')
	select('Brazil',:from => 'personal_cmbNation')
	click_button('btnSave')

	#edit Supervisor
	click_link('Report-to')
	click_button('btnAddSupervisorDetail')
	select('Direct',:from => 'reportto_reportingMethodType')
	fill_in('reportto_supervisorName_empName', :with => 'Steven Edwards')
	click_button('btnSaveReportTo')

	#edit job
	click_link('Job')
	click_button('btnSave')
	
	select('Finance Manager',:from => 'job_job_title')
	select('Freelance',:from => 'job_emp_status')
	select('Professionals',:from => 'job_eeo_category')
	select('Finance',:from => 'job_sub_unit')
	click_button('btnSave')
	
end

Então(/^o cadastro do empregado é alterado$/) do
  
  #validacao Personal
  click_link('Personal Details')
  assert_text('Brazilian')

  #validacao job
  click_link('Job')
  assert_text('Finance Manager')
  assert_text('Freelance')
  assert_text('Professionals')
  assert_text('Finance')

  #validacao Supervisor
  click_link('Report-to')
  assert_text('Steven Edwards')
  assert_text('Direct')


end