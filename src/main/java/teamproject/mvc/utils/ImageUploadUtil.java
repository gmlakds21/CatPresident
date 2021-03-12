package teamproject.mvc.utils;

import org.apache.commons.io.FileUtils;
import org.imgscalr.Scalr;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.PosixFilePermissions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

/*

        *** AWS 복습할 때 까지 봉인 ***


@Component("imgutil")
public class ImageUploadUtil {


    // 이미지 업로드 경로 설정
    private String IMG_UPLOAD_PATH = "/home/centos/imgupload/";



    // 이미지 첨부시 파일 존재 여부 확인
    public boolean checkFiles(MultipartFile[] img) {

        boolean isFiles = false;
        for(MultipartFile f : img) {
            // 첨부시 파일이 존재한다면
            if (!f.getOriginalFilename().isEmpty()) {
                isFiles = true;
                break;
            }
        }
        return isFiles;
    }


    // 겹치치 않는 파일명을 위해 유니크한 임의의 값 생성
    private String makeUUID() {
        String fmt = "HHmmss";
        SimpleDateFormat sdf = new SimpleDateFormat(fmt);
        return sdf.format(new Date());
    }


    // 이미지 파일 업로드
    public String ImageUpload(MultipartFile pic) {

        // 업로드시 첨부파일의 원래 이름 업로드한 파일을 서버에 저장할때 사용할
        String orginName = pic.getOriginalFilename();

        // 수정된 파일 이름
        String newName = makeUUID() + "___" + orginName;

        try {
            // 웹 임시 폴더에 저장된 업로드 이미지를 옮기기위해 transferTo 메서드를 사용
            pic.transferTo(new File(IMG_UPLOAD_PATH + newName));

            // linux / read : 4, write : 2, execute : 1
            String perms = "rwxr-xr-x";
            Path img = Paths.get(IMG_UPLOAD_PATH + newName);
            Set<PosixFilePermission> pfp = PosixFilePermissions.fromString(perms);
            Files.setPosixFilePermissions(img, pfp);

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return newName;
    }



    // 업로드한 이미지들 중 첫번째 이미지에 대한 썸내일 생성
    public void makeThub(String newName, String pno) {
        // 서버에 업로드된 파일이름 (썸내일 대상)
        String ofname = IMG_UPLOAD_PATH + newName;
        // 업로드된 파일이름에서 확장자 부분 추출
        String imgtype = newName.substring(newName.lastIndexOf(".")+1);
        // 썸내일 이미지 이름 설정
        String tfname = IMG_UPLOAD_PATH + "_thumb/thumb_"
                + pno + "_" + newName;

        try {
            // 원본이미지를 읽어서 메모리상에 이미지 객체(갠버스)로 만들어 둠
            BufferedImage image = ImageIO.read(new File(ofname));

            int imgwidth = Math.min(image.getHeight(), image.getWidth());
            int imgheight = imgwidth;

            // 지정한 위치를 기준으로 잘라냄
            BufferedImage scaledImg = Scalr.crop( image,
                    (image.getWidth() - imgwidth) / 2,
                    (image.getHeight() - imgheight) / 2,
                    imgwidth, imgheight, null );

            // 잘라낸 이미지를 220x220으로 재조정
            BufferedImage resizedImg = Scalr.resize(
                    scaledImg, 220, 220, null);

            // 재조정한 이미지를 실제경로에 저장함
            ImageIO.write(resizedImg, imgtype, new File(tfname));

            // linux / read : 4, write : 2, execute : 1
            String perms = "rwxr-xr-x";
            Path img = Paths.get(tfname);
            Set<PosixFilePermission> pfp = PosixFilePermissions.fromString(perms);
            Files.setPosixFilePermissions(img, pfp);

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
*/