from datetime import datetime

from django.forms import DateField, DateInput


class MesAnoField(DateField):
    default_error_messages = {
        'invalid': "Por favor, insira uma referência válida."
    }
    widget = DateInput(format='%m/%Y')
    input_formats = ('%m/%Y', '%m/%y')

    def to_python(self, value):
        """
        Validates that the input can be converted to a date. Returns a Python
        datetime.date object.
        Set day to first day of month.
        """
        if value in self.empty_values:
            return None
        return super(MesAnoField, self).to_python(value)


