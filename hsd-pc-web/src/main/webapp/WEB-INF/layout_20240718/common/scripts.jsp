<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="${cp}/assets/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="${cp}/assets/js/jquery-ui-1.12.1.min.js"></script>
<script type="text/javascript" src="${cp}/assets/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="${cp}/assets/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${cp}/assets/js/ui.common.js"></script>
<script type="text/javascript" src="${cp}/assets/js/swiper.jquery.min.js"></script>
<script type="text/javascript" src="${cp}/assets/js/TweenMax.min.js"></script>

<script type="text/javascript" src="${cp}/assets/js/tss.js"></script>
<script type="text/javascript" src="${cp}/assets/js/tss.util.js"></script>

<!-- validatation check -->
<script type="text/javascript" src="${cp}/assets/js/validation/jquery.validate.min.js"></script>
<script type="text/javascript" src="${cp}/assets/js/validation/messages_ko.min.js"></script>
<script type="text/javascript" src="${cp}/assets/js/validate.js"></script>

<!-- fileupload -->
<script type="text/javascript" src="${cp}/assets/js/fileupload/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="${cp}/assets/js/fileupload/jquery.fileupload.js"></script>

<script type="text/javascript" src="${cp}/assets/js/hansot.common.js"></script>

<!-- naver map api -->
<!-- <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=1MATn4mHBIsSKNHepOXg&submodules=geocoder"></script> -->
<script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=63wpczoyi2"></script>

<!-- moment js api -->
<script type="text/javascript" src="${cp}/assets/js/moment.js"></script>
<!-- lodash js api -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lodash@4.17.4/lodash.min.js"></script>

<script>
    $(function () {
        var token = $("meta[name='_csrf']").attr('content');
        var header = "X-CSRF-TOKEN";
        $(document).ajaxSend(function(event, xhr, options) {
            xhr.setRequestHeader(header, token);
        });
        $(document).ajaxError(function(event, xhr, options) {
            if(xhr.status === 401) {
                console.log(xhr);
                if(tss.util.confirm('로그인이 필요합니다.')) {
                    tss.util.auth();
                }
            }
            if(xhr.status === 500 || xhr.status === 400) {
                console.log("오류가 발생했습니다.");
            }
        });
    });
</script>