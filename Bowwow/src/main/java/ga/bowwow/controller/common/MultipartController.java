package ga.bowwow.controller.common;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
import com.google.gson.JsonObject;

@Controller
public class MultipartController {
	
//	@PostMapping("registerImage.do")
//	public String registerImage(ImageVO vo, Model model, HttpServletRequest request) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {
//		
//		MultipartFile uploadFile = vo.getUploadFile();
//		File file = new File(request.getServletContext().getRealPath("/temp"));
//		uploadFile.transferTo(file);
//		String s3 = s3upload(file, uploadFile.getOriginalFilename(),"폴더명 여기에 기입");
//		System.out.println(s3);
//		
//		//String s3 DB에 이미지 경로로 저장할것
//		
//		return "index2.jsp";
//	}
//	
	@RequestMapping(value="/uploadSummernoteImageFile.do", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request ) throws AmazonClientException, InterruptedException, IllegalStateException, IOException  {
		JsonObject jsonObject = new JsonObject();
		
        /*
		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 */
		
		// 내부경로로 저장
		/*
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot = contextRoot+"resources/upload/";
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명

		
		File targetFile = new File(fileRoot + savedFileName);	
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/main/resources/upload/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		System.out.println("파일 주소: " + a);
		*/
		
		
		
		
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/diary/";
		
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
	    File file = new File(request.getServletContext().getRealPath("/temp"));
	    multipartFile.transferTo(file);
		String s3 = this.s3upload(file, savedFileName,"diary");
		
		System.out.println(s3);
		
		jsonObject.addProperty("url", fs_url + savedFileName); // contextroot + resources + 저장할 내부 폴더명
		jsonObject.addProperty("responseCode", "success");
		
		String a = jsonObject.toString();
		
		
		return a;
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
//		return (folderName.isEmpty()) ? bucketName + ".s3.us-east-2.amazonaws.com/" + fileName : 
//			bucketName + ".s3.us-east-2.amazonaws.com/" + folderName + "/" + fileName;
		return fileName;
	}
}