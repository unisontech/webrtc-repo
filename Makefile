.PHONY: all clean

all: repo

clean:
	@rm -Rf ${CURDIR}/repo

repo:
	@mvn deploy:deploy-file -DpomFile=webrtc/libjingle_peerconnection.pom.xml -Dfile=webrtc/Stripped/libjingle_peerconnection.jar -Durl=file://${CURDIR}/repo -DcreateChecksum=true
	@mvn deploy:deploy-file -DpomFile=webrtc/libjingle_peerconnection_so.pom.xml -Dfile=webrtc/Stripped/libjingle_peerconnection_so.so -Durl=file://${CURDIR}/repo -DcreateChecksum=true -Dclassifier=armeabi
