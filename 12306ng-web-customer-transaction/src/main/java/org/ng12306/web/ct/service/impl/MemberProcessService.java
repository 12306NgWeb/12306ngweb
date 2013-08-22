package org.ng12306.web.ct.service.impl;

import java.util.List;

import org.ng12306.web.ct.entity.Passenger;
import org.ng12306.web.ct.service.IMemberProcessService;
import org.springframework.stereotype.Service;

@Service
public class MemberProcessService implements IMemberProcessService {

	@Override
	public List<Passenger> getPassengersListByUserID(String userID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Passenger getPassengerInfoByEmail(String Email) {
		// TODO Auto-generated method stub
		Passenger passenger = new Passenger();
		
		return passenger;
	}

	@Override
	public void savePassenger(Passenger passenger) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePassenger(Passenger passenger) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePassenger(Passenger passenger) {
		// TODO Auto-generated method stub
		
	}

}
