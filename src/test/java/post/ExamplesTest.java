package post;

import com.intuit.karate.junit4.Karate;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
public class ExamplesTest {
    @BeforeClass
    public static void before() {
        System.setProperty("karate.env", "pre-prod");
    }

}