class EnterCancelListener < Redmine::Hook::ViewListener

  def view_issues_form_details_bottom(context)
<<SCRIPT
<script type="text/javascript">
$(document).ready(function() {
  $("#issue_subject").keypress(function(event) {
    function isEnterPressed(e) {
      return (e.which && e.which === 13) || (e.keyCode && e.keyCode === 13);
    }

    return !isEnterPressed(event);
  });
});
</script>
SCRIPT
  end
end
