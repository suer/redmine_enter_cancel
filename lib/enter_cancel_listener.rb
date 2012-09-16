class EnterCancelListener < Redmine::Hook::ViewListener

  def view_issues_form_details_bottom(context)
<<SCRIPT
<script type="text/javascript">
$(document).ready(function() {
  $("#issue_subject").keypress(function(event) {
    if ((event.which && event.which === 13) || (event.keyCode && event.keyCode === 13)) {
      return false;
    } else {
      return true;
    }
  });
});
</script>
SCRIPT
  end
end
