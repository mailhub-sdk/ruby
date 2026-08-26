# frozen_string_literal: true

# Custom gemspec configuration file
# This file is automatically loaded by the main gemspec file. The 'spec' variable is available
# in this context from the main gemspec file. You can modify this file to add custom metadata,
# dependencies, or other gemspec configurations. If you do make changes to this file, you will
# need to add it to the .fernignore file to prevent your changes from being overwritten.

def add_custom_gemspec_data(spec)
  # "mailhub"(소문자)은 이미 무관한 제3자(Alan Fan, 2016, "Send mail through multiple
  # vendors")가 선점하고 있고, RubyGems는 이름을 대소문자 구분 없이 유일성 검사하므로
  # Fern 기본값인 "Mailhub"도 그 이름과 충돌해서 push가 거부된다(PyPI의 mailhub-sdk
  # 이름 충돌과 같은 상황). 배포명만 바꾸고 실제 require/모듈명(Mailhub::MailhubClient)은
  # moduleName 설정 그대로 유지된다.
  spec.name = "mailhub-sdk"
  spec.homepage = "https://mailhub.co.kr"
  spec.license = "MIT"
end
