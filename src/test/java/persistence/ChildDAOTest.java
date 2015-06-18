package persistence;

import de.pm.mindcloud.MindCloudApplication;
import de.pm.mindcloud.persistence.DatabaseService;
import de.pm.mindcloud.persistence.domain.Child;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;

/**
 * Created on 18/06/15
 * This class is responsible
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(loader = AnnotationConfigContextLoader.class, classes = MindCloudApplication.class)
public class ChildDAOTest {

    @Autowired
    private DatabaseService databaseService;

    @Test
    public void createChild() throws Exception {
        databaseService.insert(new Child("yolo"));
    }
}
