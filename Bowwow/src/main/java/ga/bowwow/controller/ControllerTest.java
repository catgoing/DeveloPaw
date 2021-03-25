//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
// 
//public class ControllerTest {
//    
//    @Autowired
//    public RestAPIController homeController;
//    private MockMvc mockMvc;
//    
//    @Before
//    public void createController() {
//        mockMvc = MockMvcBuilders.standaloneSetup(homeController).build();
//    }
//    
//    @Test
//    public void restTest() throws Exception {
//        RequestBuilder reqBuilder = MockMvcRequestBuilders.get("/todo/get/1").contentType(MediaType.APPLICATION_JSON);
//        mockMvc.perform(reqBuilder).andExpect(status().isOk()).andDo(print()); 
//    }
//}
//
