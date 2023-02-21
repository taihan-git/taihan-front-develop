package kr.co.taihan.front.common.util;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.PixelGrabber;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

import kr.co.d2.d2jwork.util.FileUtil;
/**
 * @author chris
 *
 */
public class ImageUtils {

    public static final int RATIO = 0;
    public static final int SAME = -1;


    /**
     * 웹에디터 썸네일
     * @param src 			원본소스 이미지 파일
     * @param dest			제작할 이미지 파일
     * @param width			썸네일 가로크기
     * @param height		썸네일 세로크기
     * @throws IOException	파일입출력 예외사항
     */
    public static void thumbnail(File src, File dest, int width)
    		throws IOException {
    	Image srcImg = getImageObject(src);
        int srcWidth = srcImg.getWidth(null);

        if(srcWidth > width) {
        	FileUtil.copy(src, dest);
        	resize(src, src, width, RATIO);
        }
    }

    public static void thumbnailArticle(File src, File dest, int width, String targetfolder)
	throws IOException {
		Image srcImg = getImageObject(src);
		int srcWidth = srcImg.getWidth(null);

		if(srcWidth > width) {

			if(!targetfolder.equals("")) {
				File newfolder = new File(targetfolder);
				if (!newfolder.exists() || !newfolder.isDirectory()) newfolder.mkdirs();
			}
			FileUtil.copy(src, dest);
			resize(src, src, width, RATIO);
		}
	}


    /**
     * 이미지 리사이즈, 주로 썸네일 제작에 사용
     * @param src 			원본소스 이미지 파일
     * @param dest			제작할 이미지 파일
     * @param width			썸네일 가로크기
     * @param height		썸네일 세로크기
     * @throws IOException	파일입출력 예외사항
     */
    public static void thumbnail(File src, File dest, int width, int height)
    		throws IOException {
    	Image srcImg = getImageObject(src);
        int srcWidth = srcImg.getWidth(null);
        int srcHeight = srcImg.getHeight(null);

        if(srcWidth > width || srcHeight > height) {
        	if(srcWidth > srcHeight) {
        		height = RATIO;
        	} else if(srcWidth < srcHeight) {
        		width = RATIO;
        	} else {
        		if(width > height) {
        			width = RATIO;
        		} else {
        			height = RATIO;
        		}
        	}

        } else {
        	width = SAME;
        	height = SAME;
        }

        resize(src, dest, width, height);
    }


    /**
     * 이미지 리사이즈, 주로 썸네일 제작에 사용
     * @param src 			원본소스 이미지 파일
     * @param dest			제작할 이미지 파일
     * @param width			이미지 가로크기(변경할 크기 or RATIO or SAME)
     * @param height		이미지 세로크기(변경할 크기 or RATIO or SAME)
     * @throws IOException	파일입출력 예외사항
     */
    public static void resize(File src, File dest, int width, int height)
    		throws IOException {
    	Image srcImg = getImageObject(src);
        int srcWidth = srcImg.getWidth(null);
        int srcHeight = srcImg.getHeight(null);

        int destWidth = -1, destHeight = -1;

        if (width == SAME) {
            destWidth = srcWidth;
        } else if (width > 0) {
            destWidth = width;
        }

        if (height == SAME) {
            destHeight = srcHeight;
        } else if (height > 0) {
            destHeight = height;
        }

        if (width == RATIO && height == RATIO) {
            destWidth = srcWidth;
            destHeight = srcHeight;
        } else if (width == RATIO) {
            double ratio = ((double)destHeight) / ((double)srcHeight);
            destWidth = (int)((double)srcWidth * ratio);
        } else if (height == RATIO) {
            double ratio = ((double)destWidth) / ((double)srcWidth);
            destHeight = (int)((double)srcHeight * ratio);
        }
        /**
         * 	static int SCALE_AREA_AVERAGING
         * 	Area Averaging 이미지 슬캘링 알고리즘을 사용합니다.
		 *	static int SCALE_DEFAULT
         * 	디폴트의 이미지 슬캘링 알고리즘을 사용합니다.
		 *	static int SCALE_FAST
         *  	슬캘링 후의 이미지의 매끄러움보다 슬캘링 속도에 높은 우선 순위를 주는 이미지 슬캘링 알고리즘을 선택합니다.
		 *	static int SCALE_REPLICATE
         * 	ReplicateScaleFilter 클래스에서 구체화된 이미지 슬캘링 알고리즘을 사용합니다.
		 *	static int SCALE_SMOOTH
         * 	슬캘링 속도보다 이미지의 매끄러움에 높은 우선 순위를 주는 이미지 슬캘링 알고리즘을 선택합니다.
         */
        Image imgTarget = srcImg.getScaledInstance(destWidth, destHeight, Image.SCALE_SMOOTH);
        int pixels[] = new int[destWidth * destHeight];
        PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, destWidth, destHeight, pixels, 0, destWidth);
        try {
            pg.grabPixels();
        } catch (InterruptedException e) {
            throw new IOException(e.getMessage());
        }
        BufferedImage destImg = new BufferedImage(destWidth, destHeight, BufferedImage.TYPE_4BYTE_ABGR_PRE);
        destImg.setRGB(0, 0, destWidth, destHeight, pixels, 0, destWidth);

        ImageIO.write(destImg, "png", dest);
    }

    /**
     * 회원가입시 인증번호를 넣은 이미지 생성
     * @param src			원본 배경이미지 파일
     * @param dest			배경이미지에 인증번호를 넣어서 만들 파일
     * @param authNumber	인증번호(5자리가 최적 : 1 2 3 4 5)
     * @throws IOException	파일입출력 예외사항
     */
    public static void drawNumber(File src, File dest, String authNumber)
		throws IOException {

		Image srcImg = getImageObject(src);
		int destWidth = srcImg.getWidth(null);
		int destHeight = srcImg.getHeight(null);

		Image imgTarget = srcImg.getScaledInstance(destWidth, destHeight, Image.SCALE_SMOOTH);
		int pixels[] = new int[destWidth * destHeight];
		PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, destWidth, destHeight, pixels, 0, destWidth);
		try {
		    pg.grabPixels();
		} catch (InterruptedException e) {
		    throw new IOException(e.getMessage());
		}
		BufferedImage destImg = new BufferedImage(destWidth, destHeight, BufferedImage.TYPE_INT_RGB);
		destImg.setRGB(0, 0, destWidth, destHeight, pixels, 0, destWidth);

		Graphics2D destGD = destImg.createGraphics();
		destGD.drawString(authNumber, 20, 20);

		ImageIO.write(destImg, "jpg", dest);
	}

    private static Image getImageObject(File f)
    		throws IOException {
        Image objImg = null;
        String suffix = f.getName().substring(f.getName().lastIndexOf('.')+1).toLowerCase();
        if (suffix.equals("bmp") || suffix.equals("png") || suffix.equals("gif")) {
        	objImg = ImageIO.read(f);
        } else {
            // BMP가 아닌 경우 ImageIcon을 활용해서 Image 생성
            // 이렇게 하는 이유는 getScaledInstance를 통해 구한 이미지를
            // PixelGrabber.grabPixels로 리사이즈 할때
            // 빠르게 처리하기 위함이다.
        	objImg = new ImageIcon(f.toURL()).getImage();
        }
        return objImg;
    }
}

