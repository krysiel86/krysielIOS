Pod::Spec.new do |s|
#  //원하는 라이브러리 이름
  s.name             = 'krysielIOS'
#  //라이브러리 버전
  s.version          = '0.1.1'
 # //라이브러리 요약내용
  s.summary          = '이것은 인사를 출력해주는 라이브러리입니다!'
  #//깃허브 주소
  s.homepage         = 'https://github.com/krysiel86/krysielIOS'
#  //MIT 라이센스
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
#  //만든 사람 이름과 주소
  s.author           = { 'krysiel86' => 'myoungin@tpmn.io' }
#  //깃 소스
  s.source           = { :git => 'https://github.com/krysiel86/krysielIOS.git', :tag => s.version.to_s }
#  //최소 배포 타겟
  s.ios.deployment_target = '10.0'
#  //소스파일 경로
  s.source_files = 'krysielIOS/Classes/**/*'
#  //현재 swift 버전
  s.swift_versions = '5.0'

end



