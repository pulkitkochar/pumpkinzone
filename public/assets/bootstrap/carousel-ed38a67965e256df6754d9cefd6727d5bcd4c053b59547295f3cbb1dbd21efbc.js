+function(t){"use strict";function e(e){return this.each(function(){var s=t(this),n=s.data("bs.carousel"),a=t.extend({},i.DEFAULTS,s.data(),"object"==typeof e&&e),r="string"==typeof e?e:a.slide;n||s.data("bs.carousel",n=new i(this,a)),"number"==typeof e?n.to(e):r?n[r]():a.interval&&n.pause().cycle()})}var i=function(e,i){this.$element=t(e).on("keydown.bs.carousel",t.proxy(this.keydown,this)),this.$indicators=this.$element.find("> .carousel-indicators"),this.options=i,this.paused=this.sliding=this.interval=this.$active=this.$items=null,"hover"==this.options.pause&&this.$element.on("mouseenter.bs.carousel",t.proxy(this.pause,this)).on("mouseleave.bs.carousel",t.proxy(this.cycle,this))};i.VERSION="3.2.0",i.DEFAULTS={interval:5e3,pause:"hover",wrap:!0},i.prototype.keydown=function(t){switch(t.which){case 37:this.prev();break;case 39:this.next();break;default:return}t.preventDefault()},i.prototype.cycle=function(e){return e||(this.paused=!1),this.interval&&clearInterval(this.interval),this.options.interval&&!this.paused&&(this.interval=setInterval(t.proxy(this.next,this),this.options.interval)),this},i.prototype.getItemIndex=function(t){return this.$items=t.parent().children(".item"),this.$items.index(t||this.$active)},i.prototype.to=function(e){var i=this,s=this.getItemIndex(this.$active=this.$element.find("> .carousel-inner > .item.active"));if(!(e>this.$items.length-1||e<0))return this.sliding?this.$element.one("slid.bs.carousel",function(){i.to(e)}):s==e?this.pause().cycle():this.slide(e>s?"next":"prev",t(this.$items[e]))},i.prototype.pause=function(e){return e||(this.paused=!0),this.$element.find("> .carousel-inner > .next, > .carousel-inner > .prev").length&&t.support.transition&&(this.$element.trigger(t.support.transition.end),this.cycle(!0)),this.interval=clearInterval(this.interval),this},i.prototype.next=function(){if(!this.sliding)return this.slide("next")},i.prototype.prev=function(){if(!this.sliding)return this.slide("prev")},i.prototype.slide=function(e,i){var s=this.$element.find("> .carousel-inner > .item.active"),n=i||s[e](),a=this.interval,r="next"==e?"left":"right",o="next"==e?"first":"last",l=this;if(!n.length){if(!this.options.wrap)return;n=this.$element.find(".item")[o]()}if(n.hasClass("active"))return this.sliding=!1;var h=n[0],c=t.Event("slide.bs.carousel",{relatedTarget:h,direction:r});if(this.$element.trigger(c),!c.isDefaultPrevented()){if(this.sliding=!0,a&&this.pause(),this.$indicators.length){this.$indicators.find(".active").removeClass("active");var d=t(this.$indicators.children()[this.getItemIndex(n)]);d&&d.addClass("active")}var u=t.Event("slid.bs.carousel",{relatedTarget:h,direction:r});return t.support.transition&&this.$element.hasClass("slide")?(n.addClass(e),n[0].offsetWidth,s.addClass(r),n.addClass(r),s.one("bsTransitionEnd",function(){n.removeClass([e,r].join(" ")).addClass("active"),s.removeClass(["active",r].join(" ")),l.sliding=!1,setTimeout(function(){l.$element.trigger(u)},0)}).emulateTransitionEnd(1e3*s.css("transition-duration").slice(0,-1))):(s.removeClass("active"),n.addClass("active"),this.sliding=!1,this.$element.trigger(u)),a&&this.cycle(),this}};var s=t.fn.carousel;t.fn.carousel=e,t.fn.carousel.Constructor=i,t.fn.carousel.noConflict=function(){return t.fn.carousel=s,this},t(document).on("click.bs.carousel.data-api","[data-slide], [data-slide-to]",function(i){var s,n=t(this),a=t(n.attr("data-target")||(s=n.attr("href"))&&s.replace(/.*(?=#[^\s]+$)/,""));if(a.hasClass("carousel")){var r=t.extend({},a.data(),n.data()),o=n.attr("data-slide-to");o&&(r.interval=!1),e.call(a,r),o&&a.data("bs.carousel").to(o),i.preventDefault()}}),t(window).on("load",function(){t('[data-ride="carousel"]').each(function(){var i=t(this);e.call(i,i.data())})})}(jQuery);