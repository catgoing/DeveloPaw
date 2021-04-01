package ga.bowwow.controller.common;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
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
	

	
	//summernote Ajax 부분
	//tomcat 서버 내부에 파일 업로드 후 JSON 값으로 파일 위치 경로 String a로 리턴
	@RequestMapping(value="*/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request ) throws AmazonClientException, InterruptedException, IllegalStateException, IOException  {
		JsonObject jsonObject = new JsonObject();
		
        /*
		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
		 */
		
		
		// 내부 서버 경로로 저장
		//contextroot 받기
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		
		//tomcat 서버에 파일이 저장되는 위치
		String fileRoot = contextRoot+"resources/upload/";
		
		String originalFileName = multipartFile.getOriginalFilename();						//원본 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
		String savedFileName = UUID.randomUUID() + extension;								//업로드 파일 명

		
		File targetFile = new File(fileRoot + savedFileName);	
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);				//파일 tomcat 서버에 업로드
			jsonObject.addProperty("url", "/resources/upload/" + savedFileName);	//contextroot + resources + 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");						//성공 여부
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);				//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");	//성공 여부
			e.printStackTrace();
		}
		
		String a = jsonObject.toString();
		System.out.println("파일 주소: " + a);		//경로 확인용 콘솔 출력
		
		//아래 내용은 바로 s3서버로 업로드 되는 코드, 참고용, 삭제해도 기능에 문제 없음
		/*
		String fs_url = "https://projectbit.s3.us-east-2.amazonaws.com/";					//AWS S3 경로
		String foldername = "";																//폴더명
		
		String originalFileName = multipartFile.getOriginalFilename();						//원본 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//원본 파일 확장자
		String savedFileName = UUID.randomUUID() + extension;								//저장될 파일 명(무작위 생성) + 확장자명
	    File file = new File(request.getServletContext().getRealPath("/temp"));				//EC2 서버에 내용 없는 새 파일 생성
	    multipartFile.transferTo(file);														//원본 파일 내용을 새 파일에 입력
		String s3 = this.s3upload(file, savedFileName, foldername);							//S3 저장경로에 폴더명/파일이름으로 업로드
		
		System.out.println(s3); //S3에 업로드된 파일의 URL 주소 출력(콘솔 확인용)
		
	   // 요청이 들어온 JSP 파일에 JSON 형식으로 리턴하기 위한 과정
		jsonObject.addProperty("url", fs_url + savedFileName); //contextroot + S3에 파일이 저장된 경로
		jsonObject.addProperty("responseCode", "success");
		
		String a = jsonObject.toString(); //JSON 결과 출력(확인용) ["url" : "경로명"]으로 나오면 정상
		System.out.println(a);
		*/
		
		return a; //최종 a를 리턴하여 요청 들어온 JSP 파일에 JSON 형식으로 전달
	}
	
	//실제로 S3서버에 업로드 되는 부분
	@PostMapping("registerImage")
	public void registerImage(String loca, String foldername, HttpServletRequest request) throws IllegalStateException, IOException, AmazonClientException, InterruptedException {

		//contextroot 받기
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		
		//Controller에서 파일 경로 저장된 배열을 ar에 /문자 기준으로 나눠 저장
		//경로가 /resource/upload/파일명으로 저장되는데 파일명만 골라내기 위한 작업
		String[] ar = new String[4];
		ar = loca.split("/");
		
		//가장 마지막 배열값에 담기는 파일명 savedFileName 변수에 저장
		String savedFileName = ar[3];
		
		//tomcat 서버에 업로드된 파일 새로 생성
		File file = new File(contextRoot + loca.substring(1));
		
		//생성된 파일 S3에 파일명 : savedFileName, 폴더명 : foldername으로 업로드
		String s3 = s3upload(file, savedFileName, foldername);
		
		//S3에 업로드 된 파일 경로 콘솔에 출력
		System.out.println("success: " + s3);
		
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