/**
 * jQuery Default Input Value Plugin
 *
 * Autor: Anton Radev
 * E-mail: radev@webdesign-bulgaria.com
 * URL: http://www.webdesign-bulgaria.com
 * Copyright: (c) 2010 - Anton Radev, Webdesign Bulgaria Group Ltd.
 * 
 * This plugin allows you to clear and set specified input values 
 * when input is left empty. You must specify the desired value in
 * the title attribute.
 *
 * Example:
 * $('.defaultInputValue').defaultInputValue();
 *  
 * Works for:
 * <input type="text" class="defaultInputValue" title="your value" />
 *
 * Requires at least jQuery 1.3.2 
 * 
 * LICENSE:
 *
 * Copyright (c) 2010 Anton Radev, http://www.webdesign-bulgaria.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject to
 * the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
 * LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
 * WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
	(function($) {  
	  $.fn.defaultInputValue = function() {
	  		// Loops over all specified elements and sets default value
			// from the title attribule.
			this.each(function() {
				$(this).val($(this).attr('title'));
			});
			
			// If the value equals the title
			// it will be cleared when input is clicked.
	  		$(this).click(function(){
        		if ($(this).attr('title') == $(this).val()) {
        			$(this).val('');
        		}
        	});
        	
        	// When input lose its focus
        	// and if the value is empty the default text specified in the title
        	// will be set as value.
        	$(this).blur(function(){
        		if ($(this).val() == '') {
        			$(this).val($(this).attr('title'));
        		}
        });
	  };
	})(jQuery);
