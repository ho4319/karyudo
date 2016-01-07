-- 회원정보 등록
insert into members(email, nick, pwd)
values('inpotin@naver.com', 'woong', '1111');
insert into members(email, nick, pwd)
values('hgal8877@naver.com', 'kijaha', '1111');
insert into members(email, nick, pwd)
values('ho4319@naver.com', 'hoho', '1111');
insert into members(email, nick, pwd)
values('dain@test.com', 'dain', '1111');

-- 제조사 등록
insert into makers(maker) values('현대');
insert into makers(maker) values('기아');
insert into makers(maker) values('르노');
insert into makers(maker) values('쉐보레');
insert into makers(maker) values('쌍용');

-- 모델등록
insert into model(model, fuel, effi, mkno) values('소나타', '휘발유', 12.1, 1);
insert into model(model, fuel, effi, mkno) values('k5', '경유', 17.3, 2);
insert into model(model, fuel, effi, mkno) values('QM3', '경유', 21.2, 3);
insert into model(model, fuel, effi, mkno) values('트랙스', '휘발유', 12.4, 4);
insert into model(model, fuel, effi, mkno) values('티볼리', '경유', 15.1, 5);

-- 내차등록
insert into garage(mdno, mno, c_nick, mile) values(1, 1, '엄마차', 1000); 
insert into garage(mdno, mno, c_nick, mile) values(2, 2, '태웅차', 1000); 
insert into garage(mdno, mno, c_nick, mile) values(3, 3, '다인차', 1000); 
insert into garage(mdno, mno, c_nick, mile) values(4, 4, '영호차', 1000); 
insert into garage(mdno, mno, c_nick, mile) values(3, 1, '재한차', 1000);

-- 주유등록 (엄마차)
insert into refuel(grno, ref_dt, mile, cost, liter) values(1, '2015-11-10', 1200, 30000, 20.13);
insert into refuel(grno, ref_dt, mile, cost, liter) values(1, '2015-11-15', 1400, 30000, 21.11);
insert into refuel(grno, ref_dt, mile, cost, liter) values(1, '2015-11-25', 1600, 30000, 21.23);
insert into refuel(grno, ref_dt, mile, cost, liter) values(1, '2015-12-05', 1900, 30000, 22.20);
insert into refuel(grno, ref_dt, mile, cost, liter) values(1, '2015-12-25', 2100, 30000, 23.03);
insert into refuel(grno, ref_dt, mile, cost, liter) values(1, '2016-01-10', 2200, 30000, 21.01);
insert into refuel(grno, ref_dt, mile, cost, liter) values(1, '2016-01-13', 2400, 30000, 20);
insert into refuel(grno, ref_dt, mile, cost, liter) values(1, '2016-01-26', 2800, 30000, 19.50);

-- 주유등록 (재한차)
insert into refuel(grno, ref_dt, mile, cost, liter) values(2, '2015-11-10', 1200, 30000, 20.13);
insert into refuel(grno, ref_dt, mile, cost, liter) values(2, '2015-11-15', 1400, 30000, 21.11);
insert into refuel(grno, ref_dt, mile, cost, liter) values(2, '2015-11-25', 1600, 30000, 21.23);
insert into refuel(grno, ref_dt, mile, cost, liter) values(2, '2015-12-05', 1900, 30000, 22.20);
insert into refuel(grno, ref_dt, mile, cost, liter) values(2, '2015-12-25', 2100, 30000, 23.03);
insert into refuel(grno, ref_dt, mile, cost, liter) values(2, '2016-01-10', 2200, 30000, 21.01);
insert into refuel(grno, ref_dt, mile, cost, liter) values(2, '2016-01-13', 2400, 30000, 20);
insert into refuel(grno, ref_dt, mile, cost, liter) values(2, '2016-01-26', 2800, 30000, 19.50);

-- 주유등록 (태웅차)
insert into refuel(grno, ref_dt, mile, cost, liter) values(5, '2015-11-10', 1200, 30000, 20.13);
insert into refuel(grno, ref_dt, mile, cost, liter) values(5, '2015-11-15', 1400, 30000, 21.11);
insert into refuel(grno, ref_dt, mile, cost, liter) values(5, '2015-11-25', 1600, 30000, 21.23);
insert into refuel(grno, ref_dt, mile, cost, liter) values(5, '2015-12-05', 1900, 30000, 22.20);
insert into refuel(grno, ref_dt, mile, cost, liter) values(5, '2015-12-25', 2100, 30000, 23.03);
insert into refuel(grno, ref_dt, mile, cost, liter) values(5, '2016-01-10', 2200, 30000, 21.01);
insert into refuel(grno, ref_dt, mile, cost, liter) values(5, '2016-01-13', 2400, 30000, 20);
insert into refuel(grno, ref_dt, mile, cost, liter) values(5, '2016-01-26', 2800, 30000, 19.50);