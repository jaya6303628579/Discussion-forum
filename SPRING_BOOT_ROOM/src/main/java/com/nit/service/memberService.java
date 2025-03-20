package com.nit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nit.entity.Members;
import com.nit.memberrepository.MemberRepository;

@Service
public class memberService {
	
@Autowired
private MemberRepository memberRepository;

public void saveMember(Members mem) {
	memberRepository.save(mem);
}
}
