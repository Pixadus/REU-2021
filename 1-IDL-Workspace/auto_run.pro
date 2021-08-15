cd,"/Users/aethio/Documents/REU2021/1-IDL-Workspace"
;cd,"/home/aethio/Documents/REU2021/1-IDL-Workspace"

FILENAME = 'images/Halpha.6563.line.params.mfbd_300modes.ser171853.seq00.hmi_aligned.sav'

restore,FILENAME
IMAGE1 = HALPHA_WIDTH_MFBD_M300
NSM1 =6 ;lowpass filter
RMIN =45 ;minimum curvature radius of loop (pixels)
LMIN =45 ;minimum loop length (in pixels)
NSTRUC =2000 ;maximum limit of traced structures used in array dimension
NLOOPMAX =2000 ;maximum number of detected loops
NGAP =3 ;number of pixels in loop below flux threshold (0,...3)
THRESH1 =0.0 ;ratio of image base flux to median flux
THRESH2 =2 ;threshold in detected structure (number of significance ;levels with respect to the median flux in loop profile
TEST =1001 ;option for display of traced structures if TEST < NSTRUC
LOOPFILE = "data/"+FILENAME.Substring(7,12)+"-N"+STRING(NSM1)+"R"+STRING(RMIN)+"L"+STRING(LMIN)+"G"+STRING(NGAP)+"T1"+STRING(THRESH1)+"T2"+STRING(THRESH2)+".dat"
LOOPFILE = LOOPFILE.Compress()
PARA2 =[NSM1,RMIN,LMIN,NSTRUC,NLOOPMAX,NGAP,THRESH1,THRESH2]

; Loops through all NSM1=3 to NSM1=8. Modify this block to check values you want. 
for n=3,8 do begin
  NSM1 = n 
  LOOPFILE = "data/"+FILENAME.Substring(7,12)+"-N"+STRING(NSM1)+"R"+STRING(RMIN)+"L"+STRING(LMIN)+"G"+STRING(NGAP)+"T1"+STRING(THRESH1)+"T2"+STRING(THRESH2)+".dat"
  LOOPFILE = LOOPFILE.Compress()
  PARA2 =[NSM1,RMIN,LMIN,NSTRUC,NLOOPMAX,NGAP,THRESH1,THRESH2]
  looptracing_auto4,IMAGE1,IMAGE2,LOOPFILE,PARA2,OUTPUT,TEST
endfor
end