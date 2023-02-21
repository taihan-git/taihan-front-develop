package kr.co.taihan.front.web;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.taihan.front.common.util.CommonUtils;
import kr.co.taihan.front.dao.BusinessMapper;
import kr.co.taihan.front.dao.CustomerMapper;
import kr.co.taihan.front.model.Catalog;
import kr.co.taihan.front.model.Product;
import kr.co.taihan.front.model.Solution;
import kr.co.taihan.front.model.SuccessStory;
import kr.co.taihan.front.model.WorkPlace;
import kr.co.taihan.front.model.json.Result;
import kr.co.taihan.front.model.json.ResultData;
import kr.co.taihan.front.service.BusinessService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@RequestMapping({"/business","/en/business"})
@Slf4j
public class BusinessController {
	
	@Autowired
	private BusinessService businessService;
   
	@Autowired
	private CustomerMapper customerMapper;
	
	@Autowired
	private MessageSourceAccessor msa;

    @GetMapping("/product/electricity")
    public String electricity(Model model) throws Exception{
    	Product params = new Product();
    	params.setProdCateNo("01");
    	model.addAllAttributes(businessService.getProductList(params));
        return "/business/product/electricity";
    }
    
    @GetMapping("/product/electricity/cable")
    public String cable(Model model)  throws Exception{
    	Product params = new Product();
    	params.setType("초고압 케이블");
    	model.addAllAttributes(businessService.getProductList(params));
        return "/business/product/electricity/cable";
    }
    
    @GetMapping("/product/electricity/overheadline")
    public String overheadline(Model model) throws Exception{
    	Product params = new Product();
    	params.setType("가공선");
    	model.addAllAttributes(businessService.getProductList(params));
        return "/business/product/electricity/overheadline";
    }

    @GetMapping("/product/renewable")
    public String renewable(Model model) throws Exception{
    	Product params = new Product();
    	params.setProdCateNo("02");
    	model.addAllAttributes(businessService.getProductList(params));
        return "/business/product/renewable";
    }

    @GetMapping("/product/communication")
    public String communication(Model model) throws Exception{
    	Product params = new Product();
    	params.setProdCateNo("03");
    	model.addAllAttributes(businessService.getProductList(params));
        return "/business/product/communication";
    }

    @GetMapping("/product/material")
    public String material(Model model) throws Exception{
    	Product params = new Product();
    	params.setProdCateNo("04");
    	model.addAllAttributes(businessService.getProductList(params));
        return "/business/product/material";
    }
    
    @GetMapping("/product/productDetail")
    public String product(Model model,HttpServletRequest request,Product param) throws Exception {
    	model.addAllAttributes(businessService.getProductDetail(param,request));
        return "/business/product/productDetail";
    }
    
    @GetMapping("/product/catalogDownload")
	public void catalogDownload(Catalog catalog, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		// catalog.setLang(CommonUtils.getLang());
    	String lang = CommonUtils.getLang();
		catalog.setTitles(catalog.getTitle().split(","));
//		catalog.setLang(CommonUtils.getLang());
		List<Catalog> list = customerMapper.selectCatalogList(catalog);
		if(list == null || list.size() == 0) {
			CommonUtils.showAlert(request, response, "파일이 없습니다.", "");
			return;
		}
		String filePath = msa.getMessage("con.file.path");
		String zipName = "en".equals(lang) ? "Catalog.zip" : "카탈로그_지명원.zip";
		String fileName = list.size() > 1 ? zipName : list.get(0).getOrgPdfFile();

		String encodedFilename = "attachment; filename*=" + "UTF-8" + "''" + URLEncoder.encode(fileName, "UTF-8");
		// ContentType 설정
		response.setContentType("application/octet-stream; charset=utf-8");
		// Header 설정
		response.setHeader("Content-Disposition", encodedFilename);

		if (list.size() > 1) {
			try (ZipOutputStream zippedOut = new ZipOutputStream(response.getOutputStream())) {

				for (Catalog data : list) {
					FileSystemResource resource = new FileSystemResource(filePath + "/" + data.getSysPdfFile());
					ZipEntry e = new ZipEntry(data.getOrgPdfFile());
					// Configure the zip entry, the properties of the file
					e.setSize(resource.contentLength());
					e.setTime(System.currentTimeMillis());
					// etc.
					zippedOut.putNextEntry(e);
					// And the content of the resource:
					StreamUtils.copy(resource.getInputStream(), zippedOut);
					zippedOut.closeEntry();
				}
				zippedOut.finish();

			} catch (Exception e) {
				// Exception handling goes here
				logger.error(e.getMessage());
			}
		} else {
			File dFile = new File(filePath, list.get(0).getSysPdfFile());
			int fSize = (int) dFile.length();

			if (fSize > 0) {
				// ContentLength 설정
				response.setContentLengthLong(fSize);

				BufferedInputStream in = null;
				BufferedOutputStream out = null;

				in = new BufferedInputStream(new FileInputStream(dFile));

				out = new BufferedOutputStream(response.getOutputStream());

				try {
					byte[] buffer = new byte[4096];
					int bytesRead = 0;

					while ((bytesRead = in.read(buffer)) != -1) {
						out.write(buffer, 0, bytesRead);
					}
					out.flush();
				} finally {
					in.close();
					out.close();
				}
			} else {
				CommonUtils.showAlert(request, response, "파일이 없습니다.", "");
				return;
			}
		}
	}
    
    @GetMapping("/solution")
    public String solution(Model model,Solution param) throws Exception {
    	model.addAllAttributes(businessService.getSolutionList(param));
        return "/business/solution";
    }
    
    @GetMapping("/solutionDetail")
    public String solutionDetail(Model model,Solution param) throws Exception {
    	model.addAllAttributes(businessService.getSolutionDetail(param));
        return "/business/solutionDetail";
    }

    @GetMapping("/successStory")
    public String successStory(Model model,SuccessStory param) throws Exception {
    	model.addAllAttributes(businessService.getSuccessStoryFixTop(param));
        return "/business/successStory";
    }
    
    @GetMapping("/getSuccessStoryList")
    @ResponseBody
    public ResultData<Map<String,Object>> getSuccessStoryList(SuccessStory param){
        ResultData<Map<String,Object>> resultData = new ResultData<>();
        try {
            resultData.setResultData(businessService.getSuccessStoryList(param));
        } catch (Exception e) {
            return new ResultData<>(Result.ERROR, e.getMessage(), null);
        }
        return resultData;
    }
    
    @GetMapping("/successStoryDetail")
    public String successStoryDetail(Model model,SuccessStory param) throws Exception {
    	model.addAllAttributes(businessService.getSuccessStoryDetail(param));
        return "/business/successStoryDetail";
    }

	@GetMapping("/globalNetwork")
	public String globalNetwork(Model model,WorkPlace param) throws Exception {
//		model.addAllAttributes(businessService.getGlobalNetworkList(param));
		return "/business/globalNetwork";
	}
	
	@GetMapping("/globalNetwork/africa")
	public String getGlobalNetworkAfrica(Model model,WorkPlace param) throws Exception {
//		model.addAllAttributes(businessService.getGlobalNetworkDetail(param));
		return "/business/globalNetwork/africa";
	}
	
	@GetMapping("/globalNetwork/america")
	public String getGlobalNetworAmerica(Model model,WorkPlace param) throws Exception {
		return "/business/globalNetwork/america";
	}
	
	@GetMapping("/globalNetwork/asia")
	public String getGlobalNetworAsia(Model model,WorkPlace param) throws Exception {
		return "/business/globalNetwork/asia";
	}
	
	@GetMapping("/globalNetwork/europe")
	public String getGlobalNetworEurope(Model model,WorkPlace param) throws Exception {
		return "/business/globalNetwork/europe";
	}
	
	@GetMapping("/globalNetwork/korea")
	public String getGlobalNetworKorea(Model model,WorkPlace param) throws Exception {
		return "/business/globalNetwork/korea";
	}
	
	@GetMapping("/globalNetwork/middle")
	public String getGlobalNetworMiddle(Model model,WorkPlace param) throws Exception {
		return "/business/globalNetwork/middle";
	}
	
	@GetMapping("/globalNetwork/oceania")
	public String getGlobalNetworOceania(Model model,WorkPlace param) throws Exception {
		return "/business/globalNetwork/oceania";
	}
	
	@GetMapping("/globalNetwork/dangjin")
	public String getGlobalNetworkDangjin(Model model){
		return "/business/globalNetwork/dangjin";
	}
	
	@GetMapping("/globalNetwork/dangjinElect")
	public String getGlobalNetworkDangjinElect(Model model){
		return "/business/globalNetwork/dangjinElect";
	}
	
	@GetMapping("/globalNetwork/vina")
	public String getGlobalNetworkVina(Model model){
		return "/business/globalNetwork/vina";
	}
	
	@GetMapping("/globalNetwork/mtec")
	public String getGlobalNetworkMtec(Model model){
		return "/business/globalNetwork/mtec";
	}
	
	@GetMapping("/globalNetwork/saudi")
	public String getGlobalNetworkSaudi(Model model){
		return "/business/globalNetwork/saudi";
	}
	
	@GetMapping("/globalNetwork/all")
	public String getGlobalNetworkall(Model model){
		return "/business/globalNetwork/all";
	}
	
}
