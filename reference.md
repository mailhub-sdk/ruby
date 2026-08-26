# Reference
## Campaign
<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">get_campaigns</a>() -> Mailhub::Types::CampaignModelPagedResult</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.get_campaigns
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**search:** `String` — 이름, 제목 등으로 검색할 키워드
    
</dd>
</dl>

<dl>
<dd>

**status:** `Mailhub::Types::CampaignStatus` — 캠페인 상태 필터
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — 정렬 기준 필드명
    
</dd>
</dl>

<dl>
<dd>

**sort_direction:** `String` — 정렬 방향 (asc, desc)
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` — 페이지 크기 (기본값 10)
    
</dd>
</dl>

<dl>
<dd>

**page_index:** `Integer` — 페이지 번호 (1부터 시작, 기본값 1)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">create_campaign</a>(request) -> Mailhub::Types::CampaignModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.create_campaign
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — 캠페인 이름
    
</dd>
</dl>

<dl>
<dd>

**subject:** `String` — 메일 제목
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailhub::Types::CampaignType` 
    
</dd>
</dl>

<dl>
<dd>

**from_email:** `String` — 발신 이메일 주소
    
</dd>
</dl>

<dl>
<dd>

**segment_codes:** `Internal::Types::Array[String]` — 대상 세그먼트 Code 목록
    
</dd>
</dl>

<dl>
<dd>

**media_codes:** `Internal::Types::Array[String]` — 첨부할 미디어 Code 목록
    
</dd>
</dl>

<dl>
<dd>

**template_code:** `String` — 사용할 템플릿 Code
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — 메일 본문
    
</dd>
</dl>

<dl>
<dd>

**send_at:** `String` — 발송 예약 일시
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">get_campaign</a>(code:) -> Mailhub::Types::CampaignModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.get_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">update_campaign</a>(code:, request) -> Mailhub::Types::CampaignModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.update_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — 캠페인 이름
    
</dd>
</dl>

<dl>
<dd>

**subject:** `String` — 메일 제목
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailhub::Types::CampaignType` 
    
</dd>
</dl>

<dl>
<dd>

**from_email:** `String` — 발신 이메일 주소
    
</dd>
</dl>

<dl>
<dd>

**segment_codes:** `Internal::Types::Array[String]` — 대상 세그먼트 Code 목록
    
</dd>
</dl>

<dl>
<dd>

**media_codes:** `Internal::Types::Array[String]` — 첨부할 미디어 Code 목록
    
</dd>
</dl>

<dl>
<dd>

**template_code:** `String` — 사용할 템플릿 Code
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — 메일 본문
    
</dd>
</dl>

<dl>
<dd>

**send_at:** `String` — 발송 예약 일시
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">delete_campaign</a>(code:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.delete_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">preview_campaign</a>(code:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.preview_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">render_campaign_preview</a>(code:, request) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.render_campaign_preview(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — 캠페인 이름
    
</dd>
</dl>

<dl>
<dd>

**subject:** `String` — 메일 제목
    
</dd>
</dl>

<dl>
<dd>

**from_email:** `String` — 발신 이메일 주소
    
</dd>
</dl>

<dl>
<dd>

**template_code:** `String` — 사용할 템플릿 Code
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — 메일 본문
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">test_campaign</a>(code:, request) -> Internal::Types::Boolean</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.test_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — 캠페인 이름
    
</dd>
</dl>

<dl>
<dd>

**subject:** `String` — 메일 제목
    
</dd>
</dl>

<dl>
<dd>

**from_email:** `String` — 발신 이메일 주소
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — 메일 본문
    
</dd>
</dl>

<dl>
<dd>

**template_code:** `String` — 사용할 템플릿 Code
    
</dd>
</dl>

<dl>
<dd>

**contacts:** `Internal::Types::Array[String]` — 테스트 발송 대상 이메일 목록
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">get_running_campaign_stats</a>() -> Internal::Types::Array[Mailhub::Types::RunningCampaignStatsModel]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.get_running_campaign_stats
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">get_campaign_analytics</a>(code:) -> Mailhub::Types::CampaignAnalyticsModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.get_campaign_analytics(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">get_campaign_activity</a>(code:) -> Internal::Types::Array[Mailhub::Types::CampaignActivityPointModel]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.get_campaign_activity(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">get_campaign_link_stats</a>(code:) -> Internal::Types::Array[Mailhub::Types::CampaignLinkStatModel]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.get_campaign_link_stats(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">get_campaign_media</a>(code:) -> Internal::Types::Array[Mailhub::Types::CampaignMediaModel]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.get_campaign_media(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">add_campaign_media</a>(code:, request) -> Mailhub::Types::CampaignMediaModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.add_campaign_media(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**media_code:** `String` — 첨부할 미디어 Code
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">remove_campaign_media</a>(code:, media_code:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.remove_campaign_media(
  code: "code",
  media_code: "mediaCode"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**media_code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">schedule_campaign</a>(code:) -> Mailhub::Types::CampaignModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.schedule_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">send_campaign</a>(code:) -> Mailhub::Types::CampaignModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.send_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">pause_campaign</a>(code:) -> Mailhub::Types::CampaignModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.pause_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">cancel_campaign</a>(code:) -> Mailhub::Types::CampaignModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.cancel_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.campaign.<a href="/lib/Mailhub/campaign/client.rb">catch_up_campaign</a>(code:) -> Mailhub::Types::CampaignModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.campaign.catch_up_campaign(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Campaign::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Contact
<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">get_contacts</a>() -> Mailhub::Types::ContactModelCursorPagedResult</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.get_contacts
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**search:** `String` — 이메일, 이름 등으로 검색할 키워드
    
</dd>
</dl>

<dl>
<dd>

**segment_id:** `Integer` — 특정 세그먼트에 속한 연락처만 조회
    
</dd>
</dl>

<dl>
<dd>

**status:** `Mailhub::Types::ContactStatus` — 특정 상태의 연락처만 조회
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — 정렬 기준 필드명
    
</dd>
</dl>

<dl>
<dd>

**sort_direction:** `String` — 정렬 방향 (asc, desc)
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` — 페이지 크기 (기본값 10)
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — 이전 응답의 NextCursor 값 (비어있으면 첫 페이지)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">create_contact</a>(request) -> Mailhub::Types::ContactModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.create_contact
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**email:** `String` — 이메일 주소
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — 이름
    
</dd>
</dl>

<dl>
<dd>

**fields:** `Internal::Types::Hash[String, Object]` — 커스텀 필드 값 모음
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">get_contact</a>(guid:) -> Mailhub::Types::ContactModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.get_contact(guid: "guid")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**guid:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">update_contact</a>(guid:, request) -> Mailhub::Types::ContactModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.update_contact(guid: "guid")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**guid:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — 이메일 주소
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — 이름
    
</dd>
</dl>

<dl>
<dd>

**fields:** `Internal::Types::Hash[String, Object]` — 커스텀 필드 값 모음
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">delete_contact</a>(guid:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.delete_contact(guid: "guid")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**guid:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">block_contact</a>(guid:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.block_contact(guid: "guid")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**guid:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">block_contacts</a>(request) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.block_contacts
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**guids:** `Internal::Types::Array[String]` — 차단할 연락처 GUID 목록
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">delete_contacts</a>(request) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.delete_contacts
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**guids:** `Internal::Types::Array[String]` — 삭제할 연락처 GUID 목록
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">import_contacts</a>(request) -> Mailhub::Types::ContactImportModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.import_contacts
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.contact.<a href="/lib/Mailhub/contact/client.rb">get_import_job</a>(job_id:) -> Mailhub::Types::ContactImportJobModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.contact.get_import_job(job_id: "jobId")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**job_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Contact::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## CustomField
<details><summary><code>client.custom_field.<a href="/lib/Mailhub/custom_field/client.rb">get_custom_fields</a>() -> Internal::Types::Array[Mailhub::Types::CustomFieldModel]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.custom_field.get_custom_fields
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailhub::CustomField::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.custom_field.<a href="/lib/Mailhub/custom_field/client.rb">create_custom_field</a>(request) -> Mailhub::Types::CustomFieldModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.custom_field.create_custom_field
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**key:** `String` — 필드 키
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — 필드 이름
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailhub::Types::CustomFieldType` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::CustomField::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.custom_field.<a href="/lib/Mailhub/custom_field/client.rb">get_custom_field</a>(key:) -> Mailhub::Types::CustomFieldModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.custom_field.get_custom_field(key: "key")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::CustomField::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.custom_field.<a href="/lib/Mailhub/custom_field/client.rb">update_custom_field</a>(key:, request) -> Mailhub::Types::CustomFieldModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.custom_field.update_custom_field(key: "key")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — 필드 이름
    
</dd>
</dl>

<dl>
<dd>

**type:** `Mailhub::Types::CustomFieldType` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::CustomField::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.custom_field.<a href="/lib/Mailhub/custom_field/client.rb">delete_custom_field</a>(key:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.custom_field.delete_custom_field(key: "key")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::CustomField::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Media
<details><summary><code>client.media.<a href="/lib/Mailhub/media/client.rb">get_medias</a>() -> Mailhub::Types::MediaModelPagedResult</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.media.get_medias
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**search:** `String` — 파일명 등으로 검색할 키워드
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — 정렬 기준 필드명
    
</dd>
</dl>

<dl>
<dd>

**sort_direction:** `String` — 정렬 방향 (asc, desc)
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` — 페이지 크기 (기본값 10)
    
</dd>
</dl>

<dl>
<dd>

**page_index:** `Integer` — 페이지 번호 (1부터 시작, 기본값 1)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Media::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.media.<a href="/lib/Mailhub/media/client.rb">upload_media</a>(request) -> Mailhub::Types::MediaModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.media.upload_media
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailhub::Media::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.media.<a href="/lib/Mailhub/media/client.rb">get_media</a>(code:) -> Mailhub::Types::MediaModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.media.get_media(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Media::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.media.<a href="/lib/Mailhub/media/client.rb">update_media</a>(code:, request) -> Mailhub::Types::MediaModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.media.update_media(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**original_file_name:** `String` — 파일명
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Media::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.media.<a href="/lib/Mailhub/media/client.rb">delete_media</a>(code:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.media.delete_media(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Media::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.media.<a href="/lib/Mailhub/media/client.rb">download_media</a>(code:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.media.download_media(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Media::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Message
<details><summary><code>client.message.<a href="/lib/Mailhub/message/client.rb">get_messages</a>() -> Mailhub::Types::MessageModelCursorPagedResult</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.message.get_messages
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**search:** `String` — 수신 이메일, 제목 등으로 검색할 키워드
    
</dd>
</dl>

<dl>
<dd>

**status:** `String` — 발송 상태 필터
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — 정렬 기준 필드명
    
</dd>
</dl>

<dl>
<dd>

**sort_direction:** `String` — 정렬 방향 (asc, desc)
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` — 페이지 크기 (기본값 10)
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` — 이전 응답의 NextCursor 값 (비어있으면 첫 페이지)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Message::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.message.<a href="/lib/Mailhub/message/client.rb">get_message</a>(guid:) -> Mailhub::Types::MessageModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.message.get_message(guid: "guid")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**guid:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Message::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.message.<a href="/lib/Mailhub/message/client.rb">get_message_events</a>(guid:) -> Internal::Types::Array[Mailhub::Types::MessageEventModel]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.message.get_message_events(guid: "guid")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**guid:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Message::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.message.<a href="/lib/Mailhub/message/client.rb">send_message</a>(request) -> Mailhub::Types::MessageModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.message.send_message
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**to_email:** `String` — 수신 이메일 주소
    
</dd>
</dl>

<dl>
<dd>

**from_email:** `String` — 발신 이메일 주소
    
</dd>
</dl>

<dl>
<dd>

**subject:** `String` — 메일 제목
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — 원본 HTML 본문 (templateCode 미지정 시 사용)
    
</dd>
</dl>

<dl>
<dd>

**template_code:** `String` — 사용할 템플릿 코드 (지정 시 body는 무시됨)
    
</dd>
</dl>

<dl>
<dd>

**template_data:** `Internal::Types::Hash[String, Object]` — 템플릿/본문 내 {{ key }} 치환에 사용할 데이터
    
</dd>
</dl>

<dl>
<dd>

**send_at:** `String` — 예약 발송 일시 (미지정 시 즉시 발송)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Message::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.message.<a href="/lib/Mailhub/message/client.rb">cancel_message</a>(guid:) -> Mailhub::Types::MessageModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.message.cancel_message(guid: "guid")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**guid:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Message::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Segment
<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">get_segments</a>() -> Mailhub::Types::SegmentModelPagedResult</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.get_segments
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**search:** `String` — 이름 등으로 검색할 키워드
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — 정렬 기준 필드명
    
</dd>
</dl>

<dl>
<dd>

**sort_direction:** `String` — 정렬 방향 (asc, desc)
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` — 페이지 크기 (기본값 10)
    
</dd>
</dl>

<dl>
<dd>

**page_index:** `Integer` — 페이지 번호 (1부터 시작, 기본값 1)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">create_segment</a>(request) -> Mailhub::Types::SegmentModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.create_segment
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — 세그먼트 이름
    
</dd>
</dl>

<dl>
<dd>

**filter:** `Mailhub::Types::SegmentFilterModel` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">get_segment</a>(code:) -> Mailhub::Types::SegmentModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.get_segment(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">update_segment</a>(code:, request) -> Mailhub::Types::SegmentModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.update_segment(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — 세그먼트 이름
    
</dd>
</dl>

<dl>
<dd>

**filter:** `Mailhub::Types::SegmentFilterModel` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">delete_segment</a>(code:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.delete_segment(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">delete_segments</a>(request) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.delete_segments
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**all:** `Internal::Types::Boolean` — 전체 삭제 여부 (true이면 Codes는 무시)
    
</dd>
</dl>

<dl>
<dd>

**codes:** `Internal::Types::Array[String]` — 삭제할 세그먼트 Code 목록
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">preview_segment</a>(request) -> Mailhub::Types::PreviewSegmentModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.preview_segment
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filter:** `Mailhub::Types::SegmentFilterModel` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">preview_segments_union</a>(request) -> Mailhub::Types::PreviewSegmentModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.preview_segments_union
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**segment_codes:** `Internal::Types::Array[String]` — 합칠 세그먼트 Code 목록
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">query_segment_contacts</a>(request) -> Mailhub::Types::ContactModelPagedResult</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.query_segment_contacts
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**filter:** `Mailhub::Types::SegmentFilterModel` 
    
</dd>
</dl>

<dl>
<dd>

**page_index:** `Integer` — 페이지 번호 (1부터 시작, 기본값 1)
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` — 페이지 크기 (기본값 20)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.segment.<a href="/lib/Mailhub/segment/client.rb">sync_segment</a>(code:) -> Mailhub::Types::SegmentModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.segment.sync_segment(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Segment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Template
<details><summary><code>client.template.<a href="/lib/Mailhub/template/client.rb">get_templates</a>() -> Mailhub::Types::TemplateModelPagedResult</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template.get_templates
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**search:** `String` — 이름 등으로 검색할 키워드
    
</dd>
</dl>

<dl>
<dd>

**sort_by:** `String` — 정렬 기준 필드명
    
</dd>
</dl>

<dl>
<dd>

**sort_direction:** `String` — 정렬 방향 (asc, desc)
    
</dd>
</dl>

<dl>
<dd>

**page_size:** `Integer` — 페이지 크기 (기본값 10)
    
</dd>
</dl>

<dl>
<dd>

**page_index:** `Integer` — 페이지 번호 (1부터 시작, 기본값 1)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Template::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template.<a href="/lib/Mailhub/template/client.rb">create_template</a>(request) -> Mailhub::Types::TemplateModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template.create_template
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**name:** `String` — 템플릿 이름
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — 템플릿 본문
    
</dd>
</dl>

<dl>
<dd>

**editor_type:** `Mailhub::Types::EditorType` 
    
</dd>
</dl>

<dl>
<dd>

**editor_source:** `String` — 에디터 소스
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Template::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template.<a href="/lib/Mailhub/template/client.rb">get_template_expressions</a>() -> Internal::Types::Array[Mailhub::Types::TemplateExpressionModel]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template.get_template_expressions
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Mailhub::Template::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template.<a href="/lib/Mailhub/template/client.rb">get_template</a>(code:) -> Mailhub::Types::TemplateModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template.get_template(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Template::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template.<a href="/lib/Mailhub/template/client.rb">update_template</a>(code:, request) -> Mailhub::Types::TemplateModel</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template.update_template(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` — 템플릿 이름
    
</dd>
</dl>

<dl>
<dd>

**body:** `String` — 템플릿 본문
    
</dd>
</dl>

<dl>
<dd>

**editor_type:** `Mailhub::Types::EditorType` 
    
</dd>
</dl>

<dl>
<dd>

**editor_source:** `String` — 에디터 소스
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Template::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template.<a href="/lib/Mailhub/template/client.rb">delete_template</a>(code:) -> </code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template.delete_template(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Template::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template.<a href="/lib/Mailhub/template/client.rb">preview_template</a>(code:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template.preview_template(code: "code")
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Template::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.template.<a href="/lib/Mailhub/template/client.rb">render_template_preview</a>(request) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.template.render_template_preview
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**body:** `String` — 미리보기할 템플릿 본문
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Mailhub::Template::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

