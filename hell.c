#include <cv.h>
#include <stdio.h>
#include <highgui.h>
using namespace cv;
int main( int argc, char* argv[] )
{
	    static const char* inputpath = "centroidInput.bmp";
	    Mat img = imread(inputpath,CV_LOAD_IMAGE_GRAYSCALE);
	    int rows = img.rows;
	    int cols = img.cols;
	    // Fill in the logical part here.
         // To access a pixel at a particular location in the image, use    ---->     img.at<uchar> (i,j)
      int i,j;
      int x = 0;
      int y = 0;
      int c = 0;

      for(i = 0;i<rows;i++) {
          for(j = 0;j<cols;j++) {
              if(img.at <uchar> (i,j) == 0) {
                  c++;
                  x += i;
                  y += j;
              }
          }
      }

      if(c>0) {
          x = x/c;
          y = y/c;
      }

      printf("%d",x);
      printf("\n");
      printf("%d",y);
	    return 0;
}
———————
#include <cv.h>
#include <stdio.h>
#include <highgui.h>
using namespace cv;
int main( int argc, char* argv[] )
{
	    static const char* inputpath = "areaInput.bmp";
	    Mat img = imread(inputpath,CV_LOAD_IMAGE_GRAYSCALE);
	    int rows = img.rows;
	    int cols = img.cols;
	    int i,j;
	    int count = 0;
	    //printf("%d,%d",rows,cols);
	    // Fill in the logical part here.
         // To access a pixel at a particular location in the image, use    ---->     img.at<uchar> (i,j)
	    for(i = 0;i<rows;i++) {
	        for(j = 0;j<cols;j++) {
	            if(img.at<uchar>(i,j)==0) {
	                count++;
	            }
	        }
	    }
	    printf("%d",count);
	    printf("\n");
	    return 0;
}
