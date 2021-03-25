package ga.bowwow.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import ga.bowwow.service.ImageVO;
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

import javax.servlet.http.HttpServletRequest;

@Controller
public class MultipartController {
	
	@PostMapping("registerImage.do")
	public String registerImage(ImageVO vo, Model model, HttpServletRequest request) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {
		
		MultipartFile uploadFile = vo.getUploadFile();
		File file = new File(request.getServletContext().getRealPath("/temp"));
		uploadFile.transferTo(file);
		String s3 = s3upload(file, uploadFile.getOriginalFilename(),"폴더명 여기에 기입");
		System.out.println(s3);
		
		//String s3 DB에 이미지 경로로 저장할것
		
		return "index2.jsp";
	}
	
	public String s3upload(File file, String fileName, String folder) throws AmazonClientException, InterruptedException {
        //수정 금지
		final Regions clientRegion = Regions.US_EAST_2;
        final String bucketName = "projectbit";
        final String key1 = "AKIAUCYTNA3MORAUCXGX";
        final String key2 = "3T4Tg5imRGJR6lL3I4DUSJYXIKn5K1dRfFN2Oje+";
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
		return (folderName.isEmpty()) ? bucketName + ".s3.us-east-2.amazonaws.com/" + fileName : 
			bucketName + ".s3.us-east-2.amazonaws.com/" + folderName + "/" + fileName;
	}
}