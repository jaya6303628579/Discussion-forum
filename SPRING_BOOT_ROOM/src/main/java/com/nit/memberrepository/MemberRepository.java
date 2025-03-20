package com.nit.memberrepository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.nit.entity.Members;

public interface MemberRepository extends JpaRepository<Members, Integer> {

}
