(function ($) {

    var methods = {
        init: function (options) {
            return this.each(function () {
                var
                    $this = $(this),
                    data = $this.data('monthpicker'),
                    year = (options && options.year) ? options.year : (new Date()).getFullYear(),
                    settings = $.extend({
                        pattern: 'mmmm yyyy',
                        selectedMonth: null,
                        selectedMonthName: '',
                        selectedMonthLongName: '',
                        selectedYear: year,
                        startYear: year - 10,
                        finalYear: year + 10,
                        monthLongNames: ['January', 'February', 'March', 'April', 'May', 'June',
                            'July', 'August', 'September', 'October', 'November', 'December'],
                        monthNames: ['Jan', 'Fab', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                        id: "monthpicker_" + (Math.random() * Math.random()).toString().replace('.', ''),
                        disabledMonths: [],
                        targetElem: this,
                        hasEmptyDate: true
                    }, options),
                    initOptions = options;

                settings.dateSeparator = settings.pattern.replace(/(mmmm|mmm|mm|m|yyyy|yy|y)/ig, '');
                $this.monthpicker('setValue', settings);

                // If the plugin hasn't been initialized yet for this element
                if (!data) {

                    $(this).data('monthpicker', {
                        'target': $this,
                        'settings': settings
                    });


                    $this.monthpicker('mountWidget', settings);

                    $this.on('monthpicker-click-month', function (e, month, year) {
                        $this.monthpicker('setValue', settings);
                        $this.monthpicker('hide');
                    });

                    $this.on('reset', function () {
                        $this.monthpicker('init', initOptions);
                    });

                    // hide widget when user clicks elsewhere on page
                    $this.addClass("monthpicker__widgetcontainer");
                    $(document).unbind("mousedown.monthpicker").on("mousedown.monthpicker", function (e) {
                        if (!e.target.className || e.target.className.toString().indexOf('monthpicker') < 0) {
                            $(this).monthpicker('hideAll');
                        }
                    });
                }
            });
        },

        show: function () {
            var settings = this.data('monthpicker').settings;

            var widget = $('#' + this.data('monthpicker').settings.id);
            if (widget.is(':visible')) {
                widget.hide();
                this.trigger('monthpicker-hide');
            } else {

                $(this).monthpicker('hideAll');

                // Date might have been changed from externally in the meantime, re-sync UI:
                var date = this.monthpicker('getDate');
                var selectedYear = widget.find('.monthpicker__yearnavitem--active').data('year');
                while (selectedYear < date.getFullYear()) {
                    widget.find('.monthpicker__yearnavitem-element--right').trigger('click');
                    selectedYear = widget.find('.monthpicker__yearnavitem--active').data('year');
                }
                while (selectedYear > date.getFullYear()) {
                    widget.find('.monthpicker__yearnavitem-element--left').trigger('click');
                    selectedYear = widget.find('.monthpicker__yearnavitem--active').data('year');
                }
                widget.find('.monthpicker__month').each(function () {
                    if ($(this).data('month') == date.getMonth() + 1) {
                        $(this).addClass('ui-state-active');
                    } else {
                        $(this).removeClass('ui-state-active');
                    }
                });

                widget.show();
                this.trigger('monthpicker-show');
            }
        },

        hide: function () {
            var widget = $('#' + this.data('monthpicker').settings.id);
            if (widget.is(':visible')) {
                widget.hide();
                this.trigger('monthpicker-hide');
            }
        },

        hideAll: function () {
            $(".monthpicker__widgetcontainer").each(function () {
                if (typeof ($(this).data("monthpicker")) != "undefined") {
                    $(this).monthpicker('hide');
                }
            });
        },

        setValue: function (settings) {
            var
                month = settings.selectedMonth,
                year = settings.selectedYear;

            if (settings.pattern.indexOf('mmmm') >= 0) {
                month = settings.monthLongNames[month - 1];
            } else if (settings.pattern.indexOf('mmm') >= 0) {
                month = settings.selectedMonthName;
            } else if (settings.pattern.indexOf('mm') >= 0 && settings.selectedMonth < 10) {
                month = '0' + settings.selectedMonth;
            }

            if (settings.pattern.indexOf('yyyy') < 0) {
                year = year.toString().substr(2, 2);
            }

            var $targetElem = $(settings.targetElem);
            if (settings.initiallyEmpty && !settings.initialized) {
                $targetElem.val('');
            } else if (settings.pattern.indexOf('y') > settings.pattern.indexOf(settings.dateSeparator)) {
                $targetElem.val(month + settings.dateSeparator + year);
                settings.hasEmptyDate = false;
            } else {
                $targetElem.val(year + settings.dateSeparator + month);
                settings.hasEmptyDate = false;
            }

            settings.initialized = true;
            $targetElem.change();
        },

        setDate: function (year, month) {
            var settings = this.data('monthpicker').settings;
            settings.selectedYear = year;
            settings.selectedMonth = month;
            $this.monthpicker('setValue', settings);
        },

        emptyDate: function () {
            var settings = this.data('monthpicker').settings;
            var $targetElem = $(settings.targetElem);

            $targetElem.val('');
            settings.initialized = true;
            $targetElem.change();

            settings.hasEmptyDate = true;
        },

        disableMonths: function (months) {
            var
                settings = this.data('monthpicker').settings,
                container = $('#' + settings.id);

            settings.disabledMonths = months;

            container.find('.monthpicker__month').each(function () {
                var m = parseInt($(this).data('month'));
                if ($.inArray(m, months) >= 0) {
                    $(this).addClass('ui-state-disabled');
                } else {
                    $(this).removeClass('ui-state-disabled');
                }
            });
        },

        mountWidget: function (settings) {
            var
                monthpicker = this,
                container = $('<div id="' + settings.id + '" class="monthpicker__calendar" />'),
                header = $('<div />'),
                combo = $('<ol class="monthpicker__yearnav" />'),
                table = $('<table class="monthpicker__content" />'),
                tbody = $('<tbody />'),
                leftYearNav = $('<span class="monthpicker__yearnavitem-element--left"></span>'),
                rightYearNav = $('<span class="monthpicker__yearnavitem-element--right"></span>'),
                tr = $('<tr/>'),
                td = '',
                selectedYear = settings.selectedYear,
                option = null,
                attrSelectedYear = $(this).data('selected-year'),
                attrStartYear = $(this).data('start-year'),
                attrFinalYear = $(this).data('final-year');


            if (attrSelectedYear) {
                settings.selectedYear = attrSelectedYear;
            }

            if (attrStartYear) {
                settings.startYear = attrStartYear;
            }

            if (attrFinalYear) {
                settings.finalYear = attrFinalYear;
            }

            //left year navigation
            leftYearNav.on('click', function () {
                var activeYearNavElem = $(this).closest('ol').find('.monthpicker__yearnavitem--active');
                if (activeYearNavElem.prev().prev().length > 0) {
                    activeYearNavElem.prev().prepend(leftYearNav);
                }
                activeYearNavElem.prev().addClass('monthpicker__yearnavitem--active');
                activeYearNavElem.prev().append(rightYearNav);
                activeYearNavElem.removeClass('monthpicker__yearnavitem--active');
				changeYear(monthpicker,activeYearNavElem.prev().text());
            });

            //right year navigation
            rightYearNav.on('click', function () {
                var activeYearNavElem = $(this).closest('ol').find('.monthpicker__yearnavitem--active');
                activeYearNavElem.next().prepend(leftYearNav);
                activeYearNavElem.next().addClass('monthpicker__yearnavitem--active');
                if (activeYearNavElem.next().next().length > 0) {
                    activeYearNavElem.next().append(rightYearNav);
                }
                activeYearNavElem.removeClass('monthpicker__yearnavitem--active');
				changeYear(monthpicker,activeYearNavElem.next().text());
            });

            // mount years combo
            for (var i = settings.startYear; i <= settings.finalYear; i++) {
                var option = $('<li class="monthpicker__yearnavitem" data-year="' + i + '"><p>' + i + '</p></li>');
                if (settings.selectedYear == i) {
                    if (i > settings.startYear) {
                        option.prepend(leftYearNav)
                    }
                    option.addClass('monthpicker__yearnavitem--active');
                    if (i < settings.finalYear) {
                        option.append(rightYearNav)
                    }
                }
                combo.append(option);
            }
            header.append(combo).appendTo(container);

            // mount months table
            for (var i = 1; i <= 12; i++) {
                td = $('<td class="monthpicker__month"/>').attr('data-month', i);
                if (settings.selectedMonth == i) {
                    td.addClass('ui-state-active');
                }
                td.append(settings.monthNames[i - 1]);
                tr.append(td).appendTo(tbody);
                if (i % 4 === 0) {
                    tr = $('<tr />');
                }
            }

            tbody.find('.monthpicker__month').on('click', function () {
                var m = parseInt($(this).data('month'));
                if ($.inArray(m, settings.disabledMonths) < 0) {
                    settings.selectedYear = $(this).closest('.monthpicker__calendar').find('.monthpicker__yearnavitem--active p').text();
                    settings.selectedMonth = $(this).data('month');
                    settings.selectedMonthName = $(this).text();
                    settings.selectedMonthLongName = settings.monthLongNames[$(this).data('month') - 1];
                    monthpicker.trigger('monthpicker-click-month', $(this).data('month'));
                    $(this).closest('table').find('.ui-state-active').removeClass('ui-state-active');
                    $(this).addClass('ui-state-active');
                }
            });

            table.append(tbody).appendTo(container);

            container.appendTo($(this).parent());
        },

        destroy: function () {
            return this.each(function () {
                $(this).removeClass('monthpicker__widgetcontainer').unbind('focus').removeData('monthpicker');
            });
        },

        getDate: function () {
            var settings = this.data('monthpicker').settings;

            if (settings.selectedMonth && settings.selectedYear) {
                return new Date(settings.selectedYear, settings.selectedMonth - 1);
            } else {
                return null;
            }
        },

        getDateStr: function (isLastDayOfMonth) {
            var settings = this.data('monthpicker').settings,
                day = "01";

            if (settings.hasEmptyDate) {
                return null;
            }

            if (settings.selectedMonth && settings.selectedYear) {

                if (isLastDayOfMonth) {
                    day = 32 - new Date(settings.selectedYear, settings.selectedMonth - 1, 32).getDate();
                }

                return settings.selectedYear + "/" + settings.selectedMonth + "/" + day;
            } else {
                return null;
            }
        },

        getMonthStr: function () {
            // returns date in form of YYYYMM like 201505 (for Mai 2015)
            var settings = this.data('monthpicker').settings,
                prefix;

            if (settings.hasEmptyDate) {
                return "";
            }

            if (settings.selectedMonth && settings.selectedYear) {
                prefix = settings.selectedMonth < 10 ? "0" : "";
                return settings.selectedYear + prefix + settings.selectedMonth;
            } else {
                return "";
            }
        },

        parseInputValue: function (settings) {
            if (this.val()) {
                if (settings.dateSeparator) {
                    var val = this.val().toString().split(settings.dateSeparator);
                    if (settings.pattern.indexOf('m') === 0) {
                        settings.selectedMonth = val[0];
                        settings.selectedYear = val[1];
                    } else {
                        settings.selectedMonth = val[1];
                        settings.selectedYear = val[0];
                    }
                }
            }
        }

    };

    $.fn.monthpicker = function (method) {
        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || !method) {
            return methods.init.apply(this, arguments);
        } else {
            $.error('Method ' + method + ' does not exist on jQuery.monthpicker');
        }
    };

})(jQuery);

if (typeof monthpickeroptions === "undefined") {
    var monthpickeroptions = {
        selectedYear: 2022,
        selectedMonth: 1,
        startYear: 2002,
        finalYear: 2032,
        monthLongNames: ['January', 'February', 'March', 'April', 'May', 'June',
            'July', 'August', 'September', 'October', 'November', 'December'],
        monthNames: ['Jan', 'Fab', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
    };
}

$(document).ready(function () {
   /* $('.monthpicker_inputfield').each(function () {
        $this = $(this);
        var optionsVarName = $this.data('options-var');
        if (optionsVarName) {
            $this.monthpicker(window[optionsVarName]);
        } else {
            $this.monthpicker(monthpickeroptions);
        }
    });

    $('.monthpicker_inputfield').bind('click', function () {
        $(this).monthpicker('show');
    });

    $('.monthpicker_togglebutton').bind('click', function () {
        $(this).parent().find('.monthpicker_inputfield').monthpicker('show');
    });*/

});