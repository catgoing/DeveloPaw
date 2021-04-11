package ga.bowwow.controller.admin;


import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.transfer.TransferManager;
import com.amazonaws.services.s3.transfer.TransferManagerBuilder;
import com.amazonaws.services.s3.transfer.Upload;

import ga.bowwow.service.store.Product;

@Controller
public class adminController{
	@Autowired private adminService adminService;
	
	public adminController() {
		System.out.println("---->>> adminController");
	}
	@RequestMapping(value = "/updateProductStock")
	public String insPro(Product vo ,Model model) {
		adminService.updateProductStock(vo);
		return "/admin/adminPage";
	}
	
	@RequestMapping(value = "/deleteProduct")
	public String delPro(Product vo ,Model model) {
		adminService.deleteProduct(vo);
		return "/admin/adminPage";
	}
	
	@RequestMapping(value = "/insertProduct", method = RequestMethod.POST)
	public String insPro(Product vo ,Model model,
			@RequestParam("s_image") MultipartFile s_image,
			@RequestParam("l_image") MultipartFile l_image) {
		
		return "/admin/adminPage";
	}
	public String s3upload(File file, String fileName, String folder) throws AmazonClientException, InterruptedException {
        //수정 금지
		final Regions clientRegion = Regions.US_EAST_2;
        final String bucketName = "projectbit";
        final String key1 = "AKIAUCYTNA3MI5D3JMMP";
        final String key2 = "Nekb/D7ysjuxr5wikBAyukC6TsdYQlH1Bm2bmipQ";
        //폴더명 기입
        String folderName = folder;
        
        //아래 사항 수정 금지
        try {
        	BasicAWSCredentials awsCreds = new BasicAWSCredentials(key1, key2);
        	
            AmazonS3 s3Client = AmazonS3ClientBuilder.standard()
                    .withRegion(clientRegion)
                    .withCredentials(new AWSStaticCredentialsProvider(awsCreds))
                    .build();
            TransferManager tm = TransferManagerBuilder.standard()
                    .withS3Client(s3Client)
                    .build();
            
            Upload upload = (folderName.isEmpty()) ? tm.upload(bucketName, fileName, file) : 
            	tm.upload(bucketName + "/" + folderName, fileName, file);
            System.out.println("Object upload started");
            upload.waitForCompletion();
            System.out.println("Object upload complete");
        } catch (AmazonServiceException e) {
            e.printStackTrace();
        } catch (SdkClientException e) {
            e.printStackTrace();
        }
		return fileName;
	}
}