//package ga.bowwow.controller;
//
//import java.io.File;
//import java.io.PrintWriter;
//import java.util.UUID;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.multipart.MultipartFile;
//
//@Controller
//public class SummernoteController {
//	
//	
//    @PostMapping("/image")
//    @ResponseBody
//    public ResponseEntity<?> handleFileUpload(@RequestParam("file") MultipartFile file) {
//        try {
//            UploadFile uploadedFile = imageService.store(file);
//            return ResponseEntity.ok().body("/image/" + uploadedFile.getId());
//        } catch (Exception e) {
//            e.printStackTrace();
//            return ResponseEntity.badRequest().build();
//        }
//    }
//
//
//}
