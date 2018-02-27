package com.clps.bj.mms.common.util.timer;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.clps.bj.mms.bm.service.IMeetingService;

@Component
public class TimerTask {
	Logger logger=Logger.getLogger(TimerTask.class);
	
	@Autowired
	IMeetingService meetingservice;
	
	@Scheduled(cron="0 0 2 * * ?")//表示每天凌晨2点执行
	public void start() throws ParseException {
		List<String> endtimes = meetingservice.listEndTime();		
		for (String endtime : endtimes) {
			Date endate = new SimpleDateFormat("yyyy-MM-dd hh:mm").parse(endtime);
			if (endate.before(new Date())){
				boolean b = meetingservice.updateStatus(endate);
				logger.info(b+"===================");
				if (b) {
					logger.info("定时修改状态成功！！");
				}
			}
		}
		//logger.info("定时任务执行！！！！！");
	}
}
