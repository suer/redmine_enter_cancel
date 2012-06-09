class EnterCancelListener < Redmine::Hook::ViewListener

  def view_issues_form_details_bottom(context)
<<SCRIPT
<script type="text/javascript">
Event.observe($("issue_subject"), 'keypress', function(event) {
  if (event.keyCode == Event.KEY_RETURN) {
    Event.stop(event);
  } 
}, false);
</script>
SCRIPT
  end
end
