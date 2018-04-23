package com.suyin.decorate;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.suyin.common.service.ModuleNameService;
import com.suyin.utils.HttpClientUtils;
import com.suyin.utils.Utils;

@Controller
@RequestMapping("/rank")
public class RankController {
	
	/**
	 * 查询所有排名
	 * @return
	 */
	@RequestMapping(value="/findAllRanInfoList")
    public @ResponseBody String findRanKingList(HttpServletRequest request){
        String result=HttpClientUtils.postRemote("/rank/findAllRankInfo",  Utils.convert(request, ModuleNameService.EXP),null).toString();
        return result;
    }
}
