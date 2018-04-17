class HomeController < ApplicationController
	
	def index
	
	end

	def insert
		@insert_id = params[:insert_id].to_i
		puts @insert_id
		puts " "," ", @insert_id.class," "," "
	end

	def insert_customer
		@insert_id = 1
		cid = params[:cid]
		cname = params[:cname]
		address = params[:address]
		age = params[:age]
		Customer.create(cid: cid, cname: cname, address: address, age: age)
		return redirect_to controller: 'home', action: 'insert', insert_id: 1
	end

	def insert_money_exchange
		@insert_id = 2
		cid = params[:cid]
		passid = params[:passid]
		metype = params[:metype]
		amount = params[:amount]
		MoneyExchange.create(cid: cid, passid: passid, metype: metype, amount: amount)
		return redirect_to controller: 'home', action: 'insert', insert_id: 2
	end

	def insert_pobox
		@insert_id = 3
		cid = params[:cid]
		post_id = params[:post_id]
		Pobox.create(cid: cid, post_id: post_id)
		return redirect_to controller: 'home', action: 'insert', insert_id: 3
	end

	def insert_post_type
		@insert_id = 4
		post_id = params[:post_id]
		ptype = params[:ptype]
		PostType.create(post_id: post_id, ptype: ptype)
		return redirect_to controller: 'home', action: 'insert', insert_id: 4
	end

	def insert_postoffice_staff
		@insert_id = 5
		sid = params[:sid]
		post_id = params[:post_id]
		date = params[:date]
		PostofficeStaff.create(sid: sid, post_id: post_id, date: date)
		return redirect_to controller: 'home', action: 'insert', insert_id: 5
	end

	def insert_service_payment
		@insert_id = 6
		billno = params[:billno]
		date = params[:date]
		amount = params[:amount]
		category = params[:category]
		puts " "," ", "Here", " ", " "
		puts " "," ", category , " ", " "
		ServicePayment.create(billno: billno, date: date, amount: amount, category: category)
		return redirect_to controller: 'home', action: 'insert', insert_id: 6
	end

	def insert_postoffice
		@insert_id = 7
		post_id = params[:post_id]
		pname = params[:name]
		location = params[:location]
		description = params[:description]
		po_type = params[:po_type]
		Postoffice.create(post_id: post_id, name: pname, location: location, description: description, po_type: po_type)
		return redirect_to controller: 'home', action: 'insert', insert_id: 7
	end

	def insert_staff_do_money
		@insert_id = 8
		passid = params[:passid]
		sid = params[:sid]
		StaffDoMoney.create(passid: passid, sid: sid)
		return redirect_to controller: 'home', action: 'insert', insert_id: 8
	end

	def insert_staff_do_service
		@insert_id = 9
		billno = params[:billno]
		date = params[:date]
		sid = params[:sid]
		StaffDoService.create(billno: billno, date: date, sid: sid)
		return redirect_to controller: 'home', action: 'insert', insert_id: 9
	end

	def insert_staff
		@insert_id = 10
		sname = params[:sname]
		sid = params[:sid]
		designation = params[:designation]
		address = params[:address]
		email = params[:email]
		Staff.create(sname: sname, sid: sid, designation: designation, address: address, email: email)
		return redirect_to controller: 'home', action: 'insert', insert_id: 10
	end

	def insert_telephone
		@insert_id = 11
		sid = params[:sid]
		telephone = params[:telephone]
		Telephone.create(sid: sid, telephone: telephone)
		return redirect_to controller: 'home', action: 'insert', insert_id: 11
	end

	def delete 
		@delete_id = params[:delete_id].to_i
		puts @delete_id
		puts " "," ", @delete_id.class," "," "
	end

	def delete_customer
		@delete_id = 1
		cid = params[:cid]
		cname = params[:cname]
		address = params[:address]
		age = params[:age]
		c = Customer.find_by_cid cid
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 1
	end

	def delete_money_exchange
		@delete_id = 2
		cid = params[:cid]
		passid = params[:passid]
		metype = params[:metype]
		amount = params[:amount]
		c = MoneyExchange.find_by_cid cid
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 2
	end

	def delete_pobox
		@delete_id = 3
		cid = params[:cid]
		post_id = params[:post_id]
		c = Pobox.find_by_cid cid
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 3
	end

	def delete_post_type
		@delete_id = 4
		post_id = params[:post_id]
		ptype = params[:ptype]
		c = PostType.find_by_post_id post_id
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 4
	end


	def delete_postoffice_staff
		@delete_id = 5
		sid = params[:sid]
		post_id = params[:post_id]
		date = params[:date]
		c = PostofficeStaff.find_by_sid sid
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 5
	end

	def delete_service_payment
		@delete_id = 6
		billno = params[:billno]
		date = params[:date]
		amount = params[:amount]
		c = ServicePayment.find_by_billno billno
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 6
	end

	def delete_postoffice
		@delete_id = 7
		post_id = params[:post_id]
		pname = params[:name]
		location = params[:location]
		description = params[:description]
		po_type = params[:po_type]
		c = Postoffice.find_by_post_id post_id
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 7
	end


	def delete_staff_do_money
		@delete_id = 8
		passid = params[:passid]
		sid = params[:sid]
		c = StaffDoMoney.find_by_passid passid
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 8
	end

	def delete_staff_do_service
		@delete_id = 9
		billno = params[:billno]
		date = params[:date]
		sid = params[:sid]
		c = StaffDoService.find_by_billno billno
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 9
	end


	def delete_staff
		@delete_id = 10
		sname = params[:sname]
		sid = params[:sid]
		designation = params[:designation]
		address = params[:address]
		email = params[:email]
		c = Staff.find_by_sid sid
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 8
	end

	def delete_telephone
		@delete_id = 11
		sid = params[:sid]
		telephone = params[:telephone]
		c = Telephone.find_by_sid sid
		c.destroy
		return redirect_to controller: 'home', action: 'delete', delete_id: 11
	end

	def show
		@customer = Customer.all
		@money_exchange = MoneyExchange.all
		@pobox = Pobox.all
		@post_type = PostType.all
		@postoffice_staff = PostofficeStaff.all
		@service_payment = ServicePayment.all
		@postoffice = Postoffice.all
		@staff_do_money = StaffDoMoney.all
		@staff_do_service = StaffDoService.all
		@staff = Staff.all
		@telephone = Telephone.all
		# @show_id = params[:show_id].to_i
		# puts @show_id
		# puts " "," ", @show_id.class," "," "
	end

	# def show_customer
	# 	@show_id = 1
	# 	return redirect_to controller: 'home', action: 'show', show_id: 1
	# end

	# def show_money_exchange
	# 	@show_id = 2
	# 	return redirect_to controller: 'home', action: 'show', show_id: 2
	# end

	# def show_pobox
	# 	@show_id = 3
	# 	return redirect_to controller: 'home', action: 'show', show_id: 3
	# end

	# def show_post_type
	# 	@show_id = 4
	# 	return redirect_to controller: 'home', action: 'show', show_id: 4
	# end

	# def show_postoffice_staff
	# 	@show_id = 5
	# 	return redirect_to controller: 'home', action: 'show', show_id: 5
	# end

	# def show_service_payment
	# 	@show_id = 6
	# 	return redirect_to controller: 'home', action: 'show', show_id: 6
	# end

	# def show_postoffice
	# 	@show_id = 7
	# 	return redirect_to controller: 'home', action: 'show', show_id: 7
	# end

	# def show_staff_do_money
	# 	@show_id = 8
	# 	return redirect_to controller: 'home', action: 'show', show_id: 8
	# end

	# def show_staff_do_service
	# 	@show_id = 9
	# 	return redirect_to controller: 'home', action: 'show', show_id: 9
	# end

	# def show_staff
	# 	@show_id = 10
	# 	return redirect_to controller: 'home', action: 'show', show_id: 10
	# end

	# def show_telephone
	# 	@show_id = 11
	# 	return redirect_to controller: 'home', action: 'show', show_id: 11
	# end


end
