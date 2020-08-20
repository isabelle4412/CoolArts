import flatpickr from "flatpickr"
import { French } from "flatpickr/dist/l10n/fr.js";

flatpickr(".datepicker", {});


flatpickr(myElem, {
    "locale": French // locale for this instance only
});
