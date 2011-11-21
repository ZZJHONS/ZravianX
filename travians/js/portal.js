/**
 * Control Class - handles all event actions, store, pause, resume, delete....
 * 
 */
var Control = new Class({
	/**
	 * @var Object
	 */
	elements : {},
	/**
	 * Constructor
	 */
	initialize : function() {
		//reset attributes
		this.elements = {};
		//init application
		this.loadElements();
	},
	/**
	 * main event handler for all events
	 *
	 * @param event eventObject element where event occours
	 * @param Hash params event parameter
	 *
	 * @return boolean breakEventChain return false for abort event flow
	 */
	eventHandler : function(eventObject, params) {
		switch (params.get('action')) {

		}
	},
	/**
	 * add key event
	 *
	 * @param Hash params event parameter
	 */
	addKeyEvent : function(params) {
		document.addEvent('keyup', this.eventHandler
				.bindWithEvent(this, params));
	},
	/**
	 * add normal event
	 *
	 * @param String eventType type of event (click, mouseover...)
	 * @param String / DOM-Element elementName element for the event
	 * @param Hash params parameter for event execution
	 */
	addEvent : function(eventType, elementName, params) {
		var eventElement = $(elementName);
		if (eventElement) {
			eventElement.addEvent(eventType, this.eventHandler.bindWithEvent(
					this, params));
		}
	},
	/**
	 * remove event from element
	 *
	 * @param String eventType
	 * @param String / DOM-Element elementName
	 */
	removeEvent : function(eventType, elementName, params) {
		var eventElement = $(elementName);
		if (eventElement) {
			eventElement.removeEvent(eventType, this.eventHandler
					.bindWithEvent(this, params));
		}
	},
	/**
	 * 
	 */
	formatNumber : function(seperator, number) {
		var numberToString = new String(number);
		var numberFormatted = '';
		counter = 0;
		for (i = numberToString.length - 1; i >= 0; i--) {
			if ((counter % 3) === 0 && counter !== 0) {
				numberFormatted = '.' + numberFormatted;
			}
			numberFormatted = numberToString.charAt(i) + numberFormatted;
			counter++;
		}
		return numberFormatted;
	}
});

/**
 * Gallery
 */
var Gallery = new Class({
	Extends : Control,
	/**
	 * array with images
	 * 
	 * @param Array
	 */
	images : [],
	/**
	 * path to images
	 * 
	 * @var String
	 */
	path : '../../img/portal/gallery/default.htm',
	/**
	 * handle attributes
	 */
	count : 0,
	current : 0,
	/**
	 * constructor
	 */
	initialize : function(images, path) {
		//call parent constructor
		this.parent();
		//set images
		this.images = images;
		this.count = this.images.length;
		this.current = 0;
		//check if path is set
		if(path !== null) {
			this.path = path;
		}
		//show first image
		this.showImage(this.current);
	},
	/**
	 * handle all language bar events
	 *
	 * @param event eventObject
	 * @param Hash params
	 *
	 * return boolean breakEventChain
	 */
	eventHandler: function(eventObject, params) {
		//call parent eventHandler method
		this.parent(eventObject, params);
		//switch action
		switch (params.get('action')) {
			case 'move_prev':
				if(this.current > 0) {
					this.current--;
				} else { 
					this.current=this.count-1;
				}
				this.showImage(this.current);
				/*if(this.current == 0) {
					this.elements.navi.prev.addClass('disable');
				}
				else if(this.current == (this.count - 2)) {
					this.elements.navi.next.removeClass('disable');
				}*/
				break;
			case 'move_next':
				if(this.current < (this.count - 1)) {
					this.current++;
				} else {
					this.current=0;
				}
				this.showImage(this.current);
				/*if(this.current == (this.count - 1)) {
					this.elements.navi.next.addClass('disable');
				}
				else if(this.current == 1) {
					this.elements.navi.prev.removeClass('disable');
				}*/
				break;
		}
		return false;
	},
	/**
	 * show image by index
	 * 
	 * @param Int index
	 */
	showImage : function(index) {
		var image = this.images[index];
		if(image) {
			this.elements.image.set('src', this.path + image.name);
			this.updatePosition(index);
			this.updateDescription(image.desc);
		}
	},
	/**
	 * update the image description
	 * 
	 * @param String desc
	 */
	updateDescription : function(desc) {
		if(desc === '') {
			desc = '&nbsp;';
		}
		this.elements.description.set('html', desc);
	},
	/**
	 * update position area
	 * 
	 * @param Int index
	 */
	updatePosition : function(index) {
		this.elements.position.set('text', (index + 1) + ' / ' + this.count);
	},
	/**
	* load elements
	*/
	loadElements : function() {
		//image container
		this.elements.image = $('imageElement');
		//navigation
		this.elements.navi = {
			'prev' : $('naviPrev'),
			'next' : $('naviNext')
		};
		this.addEvent('click', this.elements.navi.prev, $H({ action : 'move_prev' }));
		this.addEvent('click', this.elements.navi.next, $H({ action : 'move_next' }));
		//position
		this.elements.position = $('imagePos');
		this.elements.description = $('imageDesc');
	}
});

/**
 * Dialog Class
 */
var DialogHandler = new Class({
	Extends : Control,
	/**
	 * dialog prefix
	 * 
	 * @var String
	 */
	prefix : null,
	/**
	 * content specific container identifier
	 */
	containerClass : null,
	/**
	 * callbacks
	 */
	onCloseDialog : null,
	/**
	 * main constructor
	 * 
	 * @param String prefix Prefix of dialog container ids (content, close...)
	 */
	initialize : function(prefix) {
		if(prefix === null) {
			prefix = '';
		}
		this.prefix = prefix;
		//call parent constructor
		this.parent();
		//reset attributes
		this.onCloseDialog = null;
		this.onShowDialog = null;
	},
	/**
	 * handle all language bar events
	 *
	 * @param event eventObject
	 * @param Hash params
	 *
	 * return boolean breakEventChain
	 */
	eventHandler: function(eventObject, params) {
		//call parent eventHandler method
		this.parent(eventObject, params);
		//switch action
		switch (params.get('action')) {
			case 'close_dialog':
				this.hideDialog();
				break;
			case 'eval_javascript':
				eval(params.get('javascript'));
				break;
		}
	},
	/**
	 * set the dialog caption
	 * 
	 * @param String caption
	 */
	setCaption : function(caption) {
		this.elements.caption.set('text', caption);
	},
	/**
	 * load content
	 * 
	 * @param String url
	 */
	loadContent : function(url) {
		if(url) {
			var req = new Request.HTML({
				url: url,
				data : {},
				evalScripts : false,
				evalResponse : false,
				onSuccess: function(responseTree, responseElements, responseHTML, responseJavaScript) {
					this.elements.content.set('html', responseHTML);
					this.addEvent('domready', this.elements.content, $H({ action : 'eval_javascript', javascript : responseJavaScript }));
				}.bind(this)
		   }).send();
		}
	},
	/**
	 * show the dialog
	 */
	showDialog : function(topOffset) {
		if (!topOffset && topOffset !== 0) topOffset = 100;
		this.elements.container.setStyles({
			'display' : 'block',
			'top' : parseInt(document.documentElement.scrollTop + topOffset) + 'px'
		});
		if(this.onShowDialog) {
			this.onShowDialog(this);
		}
	},
	/**
	 * hide the dialog
	 */
	hideDialog : function() {
		this.elements.content.removeEvents();
		this.elements.content.empty();
		this.elements.container.setStyle('display', 'none');
		if (this.elements.container.containerClass) {
			this.elements.container.removeClass(this.elements.container.containerClass);
			this.elements.containerClass = null;
		}
		if(this.onCloseDialog) {
			this.onCloseDialog(this);
		}
	},
	/**
	 * load elements
	 */
	loadElements : function() {
		//load dialog container
		this.elements.container = $(this.prefix);
		//load content
		this.elements.content = $(this.prefix+'Content');
		this.elements.content.set('load');
		//load caption
		this.elements.caption = $(this.prefix+'Caption');
		//load close
		this.elements.close = $(this.prefix+'Close');
		this.addEvent('click', this.elements.close, $H({ action : 'close_dialog'}));
	},
	/**
	 * add content specific class to the container element
	 */
	addContainerClass : function (className) {
		this.elements.container.addClass(className);
		this.elements.container.containerClass = className;
	}
});

/**
 * Scroll class
 */
var scroller = new Class({
	Extends : Control,
	//scroll elements
	elements : {
		scrollUp : null,
		scrollDown : null,
		drag : null,
		dot : null
	},
	//scroll content container
	container : null,
	//parent container
	parentContainer : null,
	//store current index
	current : 0,
	//max scroll
	max : 0,
	//scroll height offset
	scrollHeightOffset : 100,
	//steps for scrolling
	steps : 10,
	//scrollspeed
	scrollSpeed : 4,
	clickSpeed : 4,
	//slider instance
	slider : null,
	//bool which indicates that scrolling is in progress
	scrolling: false,
	//constructor
	initialize : function(container,parent, options) {
		try {
			this.steps = 10;
			this.current = 0;
			this.slider = null;
			this.scrolling = false;
			if(!container) {
				throw 'scroller -> initialize : element container not found or not set!';
			}
			this.container = container;
			this.container.setStyle('top', '0px');
			if(!parent) {
				throw 'scroller -> initialize : parent container not found or not set!';
			}
			this.parentContainer = parent;
			if(options) {
				if(options.scrollUp) {
					this.elements.scrollUp = options.scrollUp;
					this.addEvent('mousedown', this.elements.scrollUp, $H({ action : 'start_scroll_up' }));
					this.addEvent('mouseup', this.elements.scrollUp, $H({ action : 'end_scroll_up' }));
				}
				if(options.scrollDown) {
					this.elements.scrollDown = options.scrollDown;
					this.addEvent('mousedown', this.elements.scrollDown, $H({ action : 'start_scroll_down' }));
					this.addEvent('mouseup', this.elements.scrollDown, $H({ action : 'end_scroll_down' }));
				}
				if(options.drag) this.elements.drag = options.drag;
				if(options.dot) this.elements.dot = options.dot;
				if(options.scrollSpeed) this.scrollSpeed = options.scrollSpeed;
				if(options.clickSpeed) this.clickSpeed = options.clickSpeed;
			}
			this._setMax();
			if(this.max > 0) {
				this.addEvent('mousewheel', this.parentContainer, $H({ action : 'mouse_wheel'}));				
				this.slider = new Slider(options.drag, options.dot, {
					steps: this.max,
					mode : 'vertical',
					onChange: this._barStep.bind(this)
				}).set(0);				
			}
			else {
				this.elements.scrollUp.setStyle('display', 'none');
				this.elements.scrollDown.setStyle('display', 'none');
				this.elements.drag.setStyle('display', 'none');
				this.elements.dot.setStyle('display', 'none');
			}
		}
		catch(e) {
			alert(e);
		}
	},
	_barStep : function(step) {
		var scrollPos = step * -1;
		this._scrollContainer(scrollPos);
	},
	_setMax : function() {
		this.max = parseInt(this.container.getHeight() - this.parentContainer.getHeight());
		if(this.max < 0) {
			this.max = 0;
		}
	},
	_scrollStepUp : function(steps)  {
		if(this.current > 0) {
			this.current -= steps;
			var scrollPos = this.current * -1;
			this.slider.set(this.current);
			this._scrollContainer(scrollPos);
		}
	},
	_scrollStepDown : function(steps)  {
		if(this.current < this.max) {
			this.current += steps;
			var scrollPos = this.current * -1;
			this.slider.set(this.current);
			this._scrollContainer(scrollPos);
		}
	},
	_scrollContainer : function(scrollValue) {
		this.container.setStyle('top', scrollValue + 'px');
	},
	_startScrollUp : function() {
		this.scrolling = true;
		this._scrollUp();
	},
	_endScrollUp : function() {
		this.scrolling = false;
	},
	_scrollUp : function() {
		this._scrollStepUp(this.clickSpeed);
		if(this.scrolling) {
			this._scrollUp.delay(20, this);
		}
	},
	_startScrollDown : function() {
		this.scrolling = true;
		this._scrollDown();
	},
	_endScrollDown : function() {
		this.scrolling = false;
	},
	_scrollDown : function() {
		this._scrollStepDown(this.clickSpeed);
		if(this.scrolling) {
			this._scrollDown.delay(20, this);
		}
	},
	eventHandler: function(eventObject, params){
		//call parent eventHandler method
		this.parent(eventObject, params);
		//switch action
		switch (params.get('action'))
		{
			case 'start_scroll_up':
				this._startScrollUp();
				return false;
				break;
			case 'end_scroll_up':
				this._endScrollUp();
				return false;
				break;
			case 'start_scroll_down':
				this._startScrollDown();
				return false;
				break;
			case 'end_scroll_down':
				this._endScrollDown();
				return false;
				break;
			case 'mouse_wheel':
				//new Event(eventObject).stop();
				switch(eventObject.wheel)
				{
					case -1:
						this._scrollStepDown(this.scrollSpeed);
						break;
					case 1:
						this._scrollStepUp(this.scrollSpeed);
						break;
				}
				return false;
				break;
		}
	}
});

var FormHandler = new Class({
	Extends : Control,
	formCheckbox : [],
	formCheckboxLayer : [],
	formRadio : [],
	formRadioLayer : [],
	formSelect : [],
	formSelectLayer : [],
	eventRunning : false,
	initialize : function()
	{
		this.formCheckbox = [];
		this.formCheckboxLayer = [];
		this.formRadio = [];
		this.formRadioLayer = [];
		this.formSelect = [];
		this.formSelectLayer = [];
		this.eventRunning = false;
	},
	init : function(elementContainer)
	{
		var formElements = elementContainer.getElements('input');
		formElements.each(function(value) {
			if(value.get('type') == 'checkbox')	{
				this.addCheckbox(value);
			}
			if(value.get('type') == 'radio') {
				this.addRadio(value);
			}
		}.bind(this));
		if(!(Browser.Engine.version == 4 && Browser.Engine.name == 'trident')) {
			var selectElements = elementContainer.getElements('select');
			selectElements.each(function(value) {
				this.addSelect(value);
			}.bind(this));
		}
	},
	addSelect : function(selectElement) {
		
		var arrayIndex = this.formSelect.length;
		var linkA = new Element('a', {
			'href' : 'javascript:;',
			'class' : 'selectBox interface_forms_select',
			'id' : selectElement.get('id') + 'Select'
		}).setStyle('width', parseInt(selectElement.getStyle('width'))-5);
		if(selectElement.selectedIndex > -1) {
			linkA.set('text', selectElement.options[selectElement.selectedIndex].innerHTML);
		}
		linkA.injectBefore(selectElement);
		this.addEvent('change', selectElement, $H({ action : 'toggle_select', index  : arrayIndex}));
		this.addEvent('click', selectElement, $H({ action : 'click_select', index  : arrayIndex}));
		this.addEvent('mouseenter', selectElement, $H({ action : 'enter_select', index  : arrayIndex}));
		this.addEvent('mouseleave', selectElement, $H({ action : 'leave_select', index  : arrayIndex}));
		this.formSelect[arrayIndex] = selectElement;
		this.formSelectLayer[arrayIndex] = linkA;
	},
	addCheckbox : function(value) {
		var arrayIndex = this.formCheckbox.length; 
		var link = new Element('a', {
			'href' : 'javascript:;',
			'class' : 'checkbox'
		}).set('text', ' ');
		if(value.get('checked')) {
			link.addClass('interface_forms_checkbox_on');
		}
		else {
			link.addClass('interface_forms_checkbox_off');
		}
		link.injectBefore(value);
		this.addEvent('click', link, $H({ action : 'toggle_checkbox', index  : arrayIndex}));
		this.formCheckbox[arrayIndex] = value;
		this.formCheckboxLayer[arrayIndex] = link;		
	},
	addRadio : function(value) {
		var arrayIndex = this.formRadio.length; 
		this.formRadio[arrayIndex] = value;
		var link = new Element('a', {
			'href' : 'javascript:;',
			'class' : 'radioButton',
			'id' : value.get('name') + '_' + value.get('value')
		}).set('text', ' ');
		if(value.get('checked')) {
			link.addClass('interface_forms_radio_on');
		}
		else {
			link.addClass('interface_forms_radio_off');
		}
		link.injectBefore(value);
		this.addEvent('click', link, $H({ action : 'toggle_radio', index  : arrayIndex}));
		this.formRadio[arrayIndex] = value;
		this.formRadioLayer[arrayIndex] = link;		
	},
	checkByClassName : function(className, clickElement) {
		if(clickElement.getProperty('rel') === null) {
			clickElement.setProperty('rel', 'off');
		}
		for(var i = 0 ; i < this.formCheckbox.length ; i++) {
			var formElement = this.formCheckbox[i];
			if(formElement.get('type') == 'checkbox') {
				if(clickElement.getProperty('rel') == 'off') {
					formElement.set('checked', true);
					this.formCheckboxLayer[i].removeClass('interface_forms_checkbox_off');
					this.formCheckboxLayer[i].addClass('interface_forms_checkbox_on');
				}
				else {
					formElement.set('checked', false);
					this.formCheckboxLayer[i].removeClass('interface_forms_checkbox_on');
					this.formCheckboxLayer[i].addClass('interface_forms_checkbox_off');
				}
			}
		}
		if(clickElement.getProperty('rel') == 'off') {
			clickElement.setProperty('rel', 'on');
		}
		else {
			clickElement.setProperty('rel', 'off');
		}
			
	},
	unsetRadioByName : function(formName) {
		for(var i = 0 ; i < this.formRadio.length ; i++) {
			if(this.formRadio[i].get('name') == formName && this.formRadio[i].get('checked')) {
				this.formRadio[i].set('checked', false);
				this.formRadioLayer[i].removeClass('interface_forms_radio_on');
				this.formRadioLayer[i].addClass('interface_forms_radio_off');								
			}
		}
	},
	eventHandler: function(eventObject, params) {
		if(!this.eventRunning) {
			this.eventRunning = true;
			//call parent eventHandler method
			this.parent(eventObject, params);
			//switch action
			switch (params.get('action')) {
				case 'toggle_checkbox':
					var formElement = this.formCheckbox[params.get('index')];
					var formLink = this.formCheckboxLayer[params.get('index')];
					if(formElement.get('checked')) {
						formElement.set('checked', false);
						formLink.removeClass('interface_forms_checkbox_on');
						formLink.addClass('interface_forms_checkbox_off');
					}
					else {
						formElement.set('checked', true);
						formLink.removeClass('interface_forms_checkbox_off');
						formLink.addClass('interface_forms_checkbox_on');
					}
					break;
				case 'toggle_radio':
					var formElement = this.formRadio[params.get('index')];
					var formName = formElement.get('name');
					var formLink = this.formRadioLayer[params.get('index')];
					this.unsetRadioByName(formName);
					formElement.set('checked', true);
					formLink.removeClass('interface_forms_radio_off');
					formLink.addClass('interface_forms_radio_on');
					break;
				case 'toggle_select':
					var selectElement = this.formSelect[params.get('index')];
					var selectLink = this.formSelectLayer[params.get('index')];
					selectLink.set('text',selectElement.options[selectElement.selectedIndex].innerHTML);
					break;
				case 'click_select':
					var selectLink = this.formSelectLayer[params.get('index')];
					selectLink.addClass('selectBoxPressed');
					break;
				case 'enter_select':
					var selectLink = this.formSelectLayer[params.get('index')];
					selectLink.addClass('selectBoxHover');
					break;
				case 'leave_select':
					var selectLink = this.formSelectLayer[params.get('index')];
					selectLink.removeClass('selectBoxHover');
					selectLink.removeClass('selectBoxPressed');
					break;
				case 'check_by_class':
					this.checkByClassName(params.get('className'), eventObject.target);
					break;
			}
			this.eventRunning = false;
		}
		return false;
	}
});



/**
 * PortalApplication -
 */
var PortalApplication = new Class( {
	Extends : Control,
	/**
	 * flag if black overlay already is shown or not
	 */
	blackOverlayVisible : null,
	/**
	 * dialogs
	 */
	dialogMedium : null,
	dialogBig : null,
	dialogWide : null,
	/**
	 * bubble flag
	 */
	bubbleFlag : null,
	fxRunning : false,
	/**
	 * Timeouts
	 */
	stampTimeout: null,

	/**
	 * Constructor
	 */
	initialize : function() {
		//call parent constructor
		this.parent();
		//reset attributes
		this.blackOverlayVisible = null;
		//
		this.bubbleFlag = false;
		this.fxRunning = false;
		
		this.dialogMedium = new DialogHandler('dialogMedium');
		this.dialogMedium.onShowDialog = this.showBlackOverlay.bind(this);
		this.dialogMedium.onCloseDialog = this.hideBlackOverlay.bind(this);
		
		this.dialogBig = new DialogHandler('dialogBig');
		this.dialogBig.onShowDialog = this.showBlackOverlay.bind(this);
		this.dialogBig.onCloseDialog = this.hideBlackOverlay.bind(this);

		this.dialogWide = new DialogHandler('dialogWide');
		this.dialogWide.onShowDialog = this.showBlackOverlay.bind(this);
		this.dialogWide.onCloseDialog = this.hideBlackOverlay.bind(this);

		if (!navigator.cookieEnabled) {
			this.dialogMedium.loadContent('../cookies.php.htm');
			this.dialogMedium.showDialog();
		}
	},
	/**
	 * handle all language bar events
	 *
	 * @param event eventObject
	 * @param Hash params
	 *
	 * return boolean breakEventChain
	 */
	eventHandler: function(eventObject, params) {
		//call parent eventHandler method
		this.parent(eventObject, params);
		//switch action
		switch (params.get('action')) {
			case 'show_dialog':
				var url = params.get('url');
				this.dialogMedium.loadContent(url);
//				this.dialogMedium.setCaption(params.get('caption'));
				this.dialogMedium.showDialog();
				break;
			case 'show_big_dialog':
				this.dialogBig.loadContent(params.get('url'));
//				this.dialogBig.setCaption(params.get('caption'));
				this.dialogBig.showDialog(20);
				break;
			case 'show_wide_dialog':
				this.dialogWide.loadContent(params.get('url'));
				if (params.get('containerClass')) {
					this.dialogWide.addContainerClass(params.get('containerClass'));
				}
				this.dialogWide.showDialog(50);
				break;
			case 'close_overlay':
				this.hideBlackOverlay();
				break;
			case 'bubbleon':
				$each(this.elements.bubbles, function (element) {
					if (element.on && element!=$(params.get('character')+'Bubble')) {
						this.bubbleOff(element);
					}
				},this);
				this.bubbleOn($(params.get('character')+'Bubble'));
				break;
			case 'bubbleoff':
				if (eventObject.relatedTarget==$('page') || eventObject.relatedTarget==$('newsbox')) 
					this.bubbleOff($(params.get('character')+'Bubble'));
				break;
		}
	},
/**
 * Bubble fadein methods
 */
		bubbleMovePx: 20,
		bubbleOn: function (bubble) {
			bubble.hovering = true;
			bubble.on = true;
			if(!bubble.fxRunning) {
				bubble.set('morph', {duration: 250});
				var fxInstance = bubble.get('morph');
				//bubble.fxRunning = true;
				fxInstance.onComplete = function() {
					//bubble.fxRunning = false;
					if (bubble.hovering == false) {
						this.bubbleOff(bubble, true);
					}
				}.bind(this);
				bubble.morph({
					'bottom' : bubble.originalBottom + this.bubbleMovePx,
					'opacity' : 1
				});
			}
		},
		bubbleOff: function (bubble, nodelay) {
			bubble.hovering = false;
			bubble.on = false;
			if(!this.fxRunning) {
				bubble.set('morph', {duration: 250});
				var fxInstance = bubble.get('morph');
				//bubble.fxRunning = true;
		  	fxInstance.onComplete = function() {
					bubble.setStyle('bottom', bubble.originalBottom);
					//bubble.fxRunning = false;
		  	}.bind(this);
		  	bubble.morph.delay(nodelay ? 10 : 200,bubble,{
		  		'bottom' : bubble.originalBottom + 2 * this.bubbleMovePx,
		  		'opacity' : 0
		  	});
			}
		},
		toggle: function (element) {
			var target;
			if (element.toggled) {
				target = 0;
				element.toggled = false;
			} else {
				target = 1;
				element.toggled = true;
			}
			element.set('morph', {duration: 750});
			element.morph({opacity: target});
		},

	/**
	 * show black overlay to darker the sight
	 */
	showBlackOverlay : function() {
		this.elements.blackOverlay.setStyle('display', 'block');
		if(this.blackOverlayVisible === null) {
			this.initBlackOverlay();
			window.addEvent('resize', this.initBlackOverlay.bind(this));
		}
		this.blackOverlayVisible = true;
	},
	/**
	 * hide black overlay to darker the sight
	 */
	hideBlackOverlay : function() {
		if(this.blackOverlayVisible === null) {
			this.initBlackOverlay();
		}
		this.elements.blackOverlay.setStyle('display', 'none');
		this.blackOverlayVisible = false;
		$('loadNotify').style.display='none';
	},
	/**
	 * for first show the overlay has to be initialized
	 */
	initBlackOverlay : function() {
		/*var bodySize = this.elements.body.getScrollSize();
		if(Browser.Engine.name == 'webkit') {
			var docu = document.body;
			bodySize = {
				x : docu.scrollWidth,
				y : docu.scrollHeight
			};
		}
		this.elements.blackOverlay.setStyle('width', bodySize.x);
		this.elements.blackOverlay.setStyle('height', bodySize.y);*/
		this.elements.blackOverlay.setStyle('opacity', 0.75);
	},
	focusErrMarked: function () {
		var element;
		element = $$('input.errmark')[0];
		if (!element) {
			element = $$('.errmark input')[0];
		}
		if (element) {
			element.select();
			return true;
		}
		return false;
	},
	showError : function (msg) {
		$('errmsg').innerHTML = msg;
		$('errmsgFrame').removeClass('off');
	},
	hideError : function () {
		$('errmsgFrame').addClass('off');
		$('errmsg').innerHTML = '';
	},
	adaptForResolution: function () {
		var height = $('body').getSize().y;
		var maxheight = 680;
		var minheight=554;
		if (height < minheight) {
			height = minheight;
		}
		if (height < maxheight) {
			$('adaptor').addClass('adapted');
			$('adaptor').setStyle('top',height-maxheight);
		} else {
			$('adaptor').removeClass('adapted');
			$('adaptor').setStyle('top',0);
		}

		var width = $('body').getSize().x;
		var maxwidth = 1204;

		if (width < maxwidth) {
			$('stream').setStyle('display','none');
			$('chopper').setStyle('display','none');
			$('flowergirl').setStyle('display','none');
			$('bird').setStyle('display','none');
		} else {
			$('stream').setStyle('display','block');
			$('chopper').setStyle('display','block');
			$('flowergirl').setStyle('display','block');
			$('bird').setStyle('display','block');
		}
	},
	/**
	 * save dom elements to attribute elements
	 */
	loadElements : function() {
		//load body
		this.elements.body = $('body');
		//load black overlay
		this.elements.blackOverlay = $('blackOverlay');
		//load buttons
		this.elements.buttons = {
			fbMenu: $('fbMenu'),
			fbConnectLogin: $('fbConnectLogin'),
			fbConnectSitterLogin: $('fbConnectSitterLogin')
		};
		this.elements.chars = {
			pet: $('pet'),
			male: $('male'),
			female: $('female')
		};
		this.elements.bubbles = {
			pet: $('petBubble'),
			male: $('maleBubble'),
			female: $('femaleBubble')
		};
		this.elements.misc = {
			howtoplay:  $('howtoplay'),
			forum:  $('forum'),
			imprint:  $('imprint'),
			rules:  $('rules'),
			forgot:  $('forgot'),
			terms:  $('terms'),
			trailer:  $('trailer'),
			stamp:  $('stampalt'),
			loginForm: $('loginForm'),
			loginButton: $('loginButton')
		};
		this.elements.animation = {
			mouse: $('mouse'),
			fighters: $('fighters'),
			lady: $('lady'),
			stream: $('stream'),
			smoke: $('smoke'),
			flag: $('flag'),
			flowergirl: $('flowergirl'),
			chopper: $('chopper'),
			bird: $('bird'),
			spider: $('spider')
		};
		this.elements.registerlinks = $$('a.register');
		this.elements.screenshotlinks = $$('a.screenshot');

		// CSS-Eigenschaften hier definiert, weil Sie anschliessend für Animationen geändert werden.
		this.elements.bubbles.pet.set('opacity', 0);
		this.elements.bubbles.pet.setStyle('display', 'block');
		this.elements.bubbles.pet.originalBottom = this.elements.bubbles.pet.getStyle('bottom').toInt();
		this.elements.bubbles.male.set('opacity', 0);
		this.elements.bubbles.male.setStyle('display', 'block');
		this.elements.bubbles.male.originalBottom = this.elements.bubbles.male.getStyle('bottom').toInt();
		this.elements.bubbles.female.set('opacity', 0);
		this.elements.bubbles.female.setStyle('display', 'block');
		this.elements.bubbles.female.originalBottom = this.elements.bubbles.female.getStyle('bottom').toInt();

		this.addEvent('mouseover', $('pet'), $H({ action : 'bubbleon', character: 'pet'}));
		this.addEvent('mouseout', $('pet'), $H({ action : 'bubbleoff', character: 'pet'}));
		this.addEvent('mouseout', this.elements.bubbles.pet, $H({ action : 'bubbleoff', character: 'pet'}));
		this.addEvent('mouseover', $('male'), $H({ action : 'bubbleon', character: 'male'}));
		this.addEvent('mouseout', $('male'), $H({ action : 'bubbleoff', character: 'male'}));
		this.addEvent('mouseout', this.elements.bubbles.male, $H({ action : 'bubbleoff', character: 'male'}));
		this.addEvent('mouseover', $('female'), $H({ action : 'bubbleon', character: 'female'}));
		this.addEvent('mouseout', $('female'), $H({ action : 'bubbleoff', character: 'female'}));
		this.addEvent('mouseout', this.elements.bubbles.female, $H({ action : 'bubbleoff', character: 'female'}));

		this.elements.registerlinks.each(function (element) {
			this.addEvent('click', element, $H({action : 'show_dialog', url : '../register.php^id=.htm'+$('code').value+'&coop='+$('coopID').value}));
		}, this);
		this.elements.screenshotlinks.each(function (element) {
			this.addEvent('click', element, $H({ action : 'show_wide_dialog' , 'url' : '../screenshot.php.htm'}));
		}, this);

		this.addEvent('click', this.elements.misc.forgot, $H({ action : 'show_dialog' , 'url' : '../forgot.php.htm'}));
		this.addEvent('click', this.elements.misc.imprint, $H({ action : 'show_dialog' , 'url' : '../imprint.php.htm'}));
		this.addEvent('click', this.elements.misc.forum, $H({ action : 'show_big_dialog' , 'url' : '../forum.php.htm'}));
		this.addEvent('click', this.elements.misc.trailer, $H({ action : 'show_wide_dialog' , 'url' : '../trailer.php^lang=.htm'+$('lang').value, 'containerClass' : 'trailer'}));
		//this.addEvent('click', this.elements.buttons.forum, $H({ action : 'show_big_dialog' , 'url' : '../../forumIframe.html', caption : this.elements.buttons.forum.getProperty('rel')}));
		//this.addEvent('click', this.elements.buttons.register, $H({ action : 'show_big_dialog' , 'url' : '../../register.html', caption : this.elements.buttons.register.getProperty('rel')}));
		//var screenshotsEvent = $H({ action : 'show_big_dialog' , 'url' : '../../screenshot.html', caption : this.elements.buttons.screenshots1.getProperty('rel')});

		if (!this.elements.misc.stamp.hasClass('hidden')) {
			this.elements.misc.stamp.set('opacity', 0);
			this.elements.misc.stamp.setStyle('display', 'block');
			this.stampTimeout = function () { this.toggle(this.elements.misc.stamp); }.periodical(!($('stamp').hasClass('nopartner')) ? 3000: 10000,this);
		}

		this.elements.misc.loginButton.addEvent('click', function () {this.elements.misc.loginForm.submit();}.bind(this));

		var fbConnectLoginFunc = function () {
			FB.Connect.requireSession(function () {

				FB.Connect.get_status().waitUntilReady(function(status) {
					switch(status) {
						case FB.ConnectState.connected:
							this.ifGameAccountExists(function (accountExists) {
								if (accountExists) {
									$('fbLoginFlag').value = 1;
									this.elements.misc.loginForm.submit();
								} else {
									this.dialogMedium.loadContent('../register.php^id=.htm'+$('code').value+'&coop='+$('coopID').value+'&fb');
									this.dialogMedium.showDialog();
								}
							}.bind(this));
						break;
						case FB.ConnectState.appNotAuthorized:
						case FB.ConnectState.userNotLoggedIn:
							this.dialogMedium.loadContent('../register.php^id=.htm'+$('code').value+'&coop='+$('coopID').value+'&fb');
							this.dialogMedium.showDialog();
							break;
					}
				}.bind(this));

			}.bind(this));
		}.bind(this);

		this.elements.buttons.fbConnectLogin.addEvent('click', fbConnectLoginFunc);

		if ($('fbMenuLogin')) $('fbMenuLogin').addEvent('click', fbConnectLoginFunc);

		$$('.fbMenuSitterLogin').each(function (element) {
			if (element) {
				element.addEvent('click', function() {
					$('fbSitterFlag').value = this.rel;
					fbConnectLoginFunc();
				});
			}
		});


		if ($('fbConnectShowMenu')) $('fbConnectShowMenu').addEvent('click', function () {
			var style = this.elements.buttons.fbMenu.getStyle('display') == 'block' ? 'none' : 'block';
			this.elements.buttons.fbMenu.setStyle('display', style);
		}.bind(this));

		// Animation code

		this.elements.animation.mouse.addEvent('mouseover', function () {
			if (!this.elements.animation.mouse.animating) {
				this.elements.animation.mouse.animating = true;
				this.animate(function (frame) {
					this.elements.animation.mouse.setStyle('backgroundPosition', (frame+1) * 38 * (-1));
				}.bind(this), 15, 120, function () {
					this.elements.animation.mouse.animating = false;
				}.bind(this));
			}
		}.bind(this));

		this.elements.animation.lady.addEvent('mouseover', function () {
			this.elements.animation.lady.addClass('alt');
		}.bind(this));
		this.elements.animation.lady.addEvent('mouseout', function () {
			window.setTimeout(function () {this.elements.animation.lady.removeClass('alt');}.bind(this), 1000);
		}.bind(this));

		this.elements.animation.fighters.addEvent('mouseover', function () {
			this.elements.animation.fighters.addClass('alt');
		}.bind(this));
		this.elements.animation.fighters.addEvent('mouseout', function () {
			this.elements.animation.fighters.removeClass('alt');
		}.bind(this));

		this.elements.animation.stream.addEvent('mouseover', function () {
			this.elements.animation.stream.addClass('alt');
			window.setTimeout(function () {this.elements.animation.stream.removeClass('alt');}.bind(this), 1000);
		}.bind(this));;

		this.elements.animation.smoke.addEvent('mouseover', function () {
			this.elements.animation.smoke.addClass('alt');
			window.setTimeout(function () { this.elements.animation.smoke.removeClass('alt');}.bind(this), 2000);
		}.bind(this));

		this.focusErrMarked();
		this.adaptForResolution();
		this.fixJoggingBackground();
		window.addEvent('resize', function () {
			this.adaptForResolution();
			this.fixJoggingBackground();
		}.bind(this));

		// RTL
		if ($('body').getStyle('direction') == 'rtl') {
			this.elements.chars.pet.setStyle('right',parseInt(this.elements.chars.pet.getStyle('right'))-1);
			this.elements.chars.male.setStyle('right',parseInt(this.elements.chars.male.getStyle('right'))-1);
			this.elements.chars.female.setStyle('right',parseInt(this.elements.chars.female.getStyle('right'))-1);
			this.elements.animation.fighters.setStyle('right',parseInt(this.elements.animation.fighters.getStyle('right'))-1);
			this.elements.animation.stream.setStyle('right',parseInt(this.elements.animation.stream.getStyle('right'))-1);
		}

		this.elements.animation.flag.addEvent('mouseover', function () {
			if (!this.elements.animation.flag.animating) {
				this.elements.animation.flag.animating = true;
				this.animate(function (frame) {
					var offset = (frame % 4) * 50 * (-1);
					this.elements.animation.flag.setStyle('backgroundPosition', offset + 'px -1050px');
				}.bind(this), 128, 100, function () {
					this.elements.animation.flag.animating = false;
				}.bind(this));
			}
		}.bind(this));

		this.elements.animation.flowergirl.addEvent('mouseover', function () {
			if (!this.elements.animation.flowergirl.animating) {
				this.elements.animation.flowergirl.animating = true;
				this.animate(function (frame) {
					var offset = (frame % 6) * 75;
					this.elements.animation.flowergirl.setStyle('backgroundPosition', '0px -'+(1100 + offset)+'px');
				}.bind(this), 7, 100, function () {
					this.elements.animation.flowergirl.animating = false;
				}.bind(this));
			}
		}.bind(this));

		this.elements.animation.spider.addEvent('mouseover', function () {
			this.elements.animation.spider.mouseIsOver = true;
			if (!this.elements.animation.spider.animating) {
				this.elements.animation.spider.animating = true;
				this.animate(function (frame) {
					var offset = (frame % 4) * 29;
					this.elements.animation.spider.setStyle('backgroundPosition', '-'+offset+'px -1000px');
				}.bind(this), 4, 100, function () {
					this.elements.animation.spider.animating = false;
					if (!this.elements.animation.spider.mouseIsOver) {
						this.elements.animation.spider.fireEvent('mouseout');
					}
				}.bind(this));
			}
		}.bind(this));

		this.elements.animation.spider.addEvent('mouseout', function () {
			this.elements.animation.spider.mouseIsOver = false;
			if (!this.elements.animation.spider.animating) {
				this.elements.animation.spider.animating = true;
				this.animate(function (frame) {
					var offset = (3-(frame % 4)) * 29;
					this.elements.animation.spider.setStyle('backgroundPosition', '-'+offset+'px -1000px');
				}.bind(this), 4, 100, function () {
					this.elements.animation.spider.animating = false;
				}.bind(this));
			}
		}.bind(this));

		this.elements.animation.chopper.addEvent('mouseover', function () {
			if (!this.elements.animation.chopper.animating) {
				this.elements.animation.chopper.animating = true;
				this.animate(function (frame) {
					var offset = (frame % 6) * 57;
					this.elements.animation.chopper.setStyle('backgroundPosition', '-100px -'+(1100 + offset)+'px');
				}.bind(this), 7, 100, function () {
					this.elements.animation.chopper.animating = false;
				}.bind(this));
			}
		}.bind(this));

		this.elements.animation.bird.addEvent('mouseover', function () {
			if (!this.elements.animation.bird.animating) {
				this.elements.animation.bird.animating = true;
				this.animate(function (frame) {
					var offset = ((frame+9) % 9) * 34;
					this.elements.animation.bird.setStyle('backgroundPosition', '-168px -'+(1100 + offset)+'px');
				}.bind(this), 10, 100, function () {
					this.elements.animation.bird.animating = false;
				}.bind(this));
			}
		}.bind(this));

	},
	fixJoggingBackground: function () {
			var size = $('body').getSize();
			if (Browser.Engine.presto && size.x % 2 == 0) {
				$('page').setStyle('left','0px');
			} else if (Browser.Engine.presto && size.x % 2 == 1) {
				$('page').setStyle('left','0px');
			} else if (Browser.Engine.gecko && size.x % 2 == 1) {
				$('page').setStyle('left','-1px');
			} else if (Browser.Engine.gecko && size.x % 2 == 0) {
				$('page').setStyle('left','-0px');
			} else if (Browser.Engine.trident && Browser.Engine.version == 4 && size.x % 2 == 1) {
				$('page').setStyle('left','-1px');
			} else if (Browser.Engine.trident && Browser.Engine.version == 4 && size.x % 2 == 0) {
				$('page').setStyle('left','-1px');
			} else if (Browser.Engine.trident && Browser.Engine.version == 5 && size.x % 2 == 1 && !('XDomainRequest' in window)) {
				$('page').setStyle('left','0px');
			} else if (Browser.Engine.trident && Browser.Engine.version == 5 && size.x % 2 == 0 && !('XDomainRequest' in window)) {
				$('page').setStyle('left','-1px');
			} else if (Browser.Engine.trident && Browser.Engine.version == 5 && size.x % 2 == 0 && ('XDomainRequest' in window)) {
				$('page').setStyle('left','-1px');
			} else if (Browser.Engine.webkit && size.x % 2 == 1) {
				$('page').setStyle('left','0px');
			} else if (Browser.Engine.webkit && size.x % 2 == 0) {
				$('page').setStyle('left','-1px');
			} else if (size.x % 2 == 1) {
				$('page').setStyle('left','-1px');
			} else if (size.x % 2 == 0) {
				$('page').setStyle('left','0px');
			}
	},
	animate: function (func, num, delay, donefunc) {
		if (!delay) delay = 100;
		if (!num) num = 1;
		var frame = 0;
		for (var i = 0; i < num; i++) {
			window.setTimeout(function () { func(frame); frame++; }, (i+1) * delay);
		}
		if (donefunc) {
			window.setTimeout(donefunc, (num - 1) * delay);
		}
	},
	confirmAndNoLogin: function (msg,btnface, resendActMailLabel) {
		var reg = $('formpageRegister');
		var loginName = $('register_name').value;
		var loginPass = $('register_password').value;
		reg.innerHTML = msg;
		
		var cont = new Element('a', {href:'javascript:;','class':'button submit interface_forms_button_button inactive', 'id':'activateSubmit'});
		cont.innerHTML = '<span class="interface_forms_button_button"></span>'+btnface;
		
		var resend = new Element('a', {href:'javascript:;','class':'button sendActMail interface_forms_button_button', 'id':'resendActMail'});
		resend.innerHTML = '<span class="interface_forms_button_button"></span>'+resendActMailLabel;
		
		function activatesubmithandler() {
			
			//wenn ein inaktiver Button geklickt wird, wird nichts gemacht
			var activationCode = $('activation_code');
			if(activationCode){
				//nur erlauben, wenn Aktivierung geklickt wird
				if((activationCode.value.length > 0 && $('resendActivationMail').value == 1)
						|| (activationCode.value.length <= 0 && $('resendActivationMail').value != 1))
				{
					return false;
				}
			}
			
			
			$('activate_username').value = loginName;
			$('activate_password').value = loginPass;
			var submitFunc = function () {
				$('loadNotify').style.display='block';
				var form = $('activateForm');
				form.set('send', {
					onSuccess: function (response) {
						params = eval('(' + response + ')');
						if(params.error == true)
						{
							$('formpageRegister').innerHTML = params.message;
						}
						else {
							var login = $('loginForm');
							$('loginNameID').value = $('activate_username').value;
							$('loginPasswordID').value = $('activate_password').value;
							$('formpageRegister').innerHTML = params.message;
							var logMeIn = function(){
								$('loginForm').submit();
							};
							setTimeout(logMeIn, 5000);
						}
						//$('formpageRegister').innerHTML = response;
					}
				});
				form.send();
			};
			
			submitFunc();

			return false;
		}
		
		function activationcodestatus(){
			var activationCode = $('activation_code');
			if(activationCode){
				
				var submit = $('activateSubmit');
				var resend = $('resendActMail');
				if(activationCode.value.length > 0)
				{
					if(!resend.hasClass('inactive'))
					{
						submit.removeClass('inactive');

						resend.addClass('inactive');
					}
				}
				else{
					if(resend.hasClass('inactive'))
					{
						resend.removeClass('inactive');
						
						submit.addClass('inactive');
					}
				}
			}
		}
		
		function resendMailsubmithandler(){
			$('resendActivationMail').value = 1;
			activatesubmithandler();
		}
		
		cont.injectInside(reg);
		resend.injectInside(reg);
		var activateSubmit = $('activateSubmit');
		if (activateSubmit) {
			activateSubmit.onclick = activatesubmithandler;
		}
		
		var resendMail = $('resendActMail');
		if (resendMail) {
			resendMail.onclick = resendMailsubmithandler;
		}
		
		var activateForm = $('activateForm');
		if (activateForm) {
			activateForm.onsubmit=activatesubmithandler;
		}
		
		var activationCode = $('activation_code');
		if(activationCode){
			activationCode.onkeyup = activationcodestatus;
		}
	},
	confirmAndLogin: function (msg,btnface) {
		var loginName = $('register_name').value;
		var loginPass = $('register_password').value;
		var reg = $('formpageRegister');
		if (!reg) {
			reg = $('formpageLoginExtended');
		}
		reg.innerHTML = msg;

		var cont = new Element('a', {href:'javascript:;','class':'button submit interface_forms_button_button'});
		cont.innerHTML = '<span class="interface_forms_button_button"></span>'+btnface;
		cont.addEvent('click', function () {
			$('loadNotify').style.display='block';
			var login = $('loginForm');
			login.name.value = loginName;
			login.password.value = loginPass;
			login.submit();
		});
		cont.injectInside(reg);
	},
	confirmAndLoginFb: function (msg) {
		var reg = $('formpageRegister');
		if (!reg) {
			reg = $('formpageLoginExtended');
		}
		reg.innerHTML = msg;
		var cont = new Element('a', {href:'javascript:;','class':'fbConnectLogin interface_fbconnect'});
		cont.addEvent('click', function () {
			$('fbConnectLogin').fireEvent('click');
		});
		cont.injectInside(reg);
	},
	ifGameAccountExists: function (callback) {
		var req = new Request({
			url: '../ifGameAccountExists.php.htm',
			onSuccess: function(response) {
				callback(parseInt(response));
			}.bind(this)
	   }).send();
	},
	fbRequireEmailPermission: function (callbackGranted,callbackDenied) {
		FB.Connect.requireSession(function () {
			FB.Connect.get_status().waitUntilReady(function(status) {
				switch(status) {
					case FB.ConnectState.connected:
						FB.Facebook.apiClient.users_hasAppPermission('email', function (hasPermission) {
							if (hasPermission) {
								callbackGranted();
							} else {
								FB.Connect.showPermissionDialog('email', function(perms) {
									if (perms.indexOf('email') != -1) {
										callbackGranted();
									} else {
										callbackDenied();
									}
								});
							}
						});
						break;
					case FB.ConnectState.appNotAuthorized:
					case FB.ConnectState.userNotLoggedIn:
						callbackDenied();
						break;
				}
			});
		});
	}
});

