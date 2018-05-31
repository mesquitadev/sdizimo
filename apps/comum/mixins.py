# -*- coding: utf-8 -*-

from django.contrib.auth.mixins import PermissionRequiredMixin
from django.contrib.auth.views import redirect_to_login


class LoggedInPermissionsMixin(PermissionRequiredMixin):
    raise_exception = True

    def dispatch(self, request, *args, **kwargs):
        if not self.request.user.is_authenticated():
            return redirect_to_login(self.request.get_full_path(),
                                     self.get_login_url(),
                                     self.get_redirect_field_name())
        return super(LoggedInPermissionsMixin, self).dispatch(request, *args, **kwargs)
