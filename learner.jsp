<%-- 
    Document   : learner.jsp
    Created on : Apr 27, 2021, 7:20:44 PM
    Author     : joshi prashant
--%>
<%
    if(session.isNew())
    {
    %>
    <jsp:forward page="unauthorizedUser.jsp" />
    <%
    }
String userID = (String) session.getAttribute("userID");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="profile" href="https://gmpg.org/xfn/11" />
  <title>Online Education System &#8211; AI Driven Learning</title>
  <meta name='robots' content='max-image-preview:large' />
  <link rel='dns-prefetch' href='//s0.wp.com' />
  <link rel='dns-prefetch' href='//wordpress.com' />
  <link rel='dns-prefetch' href='//fonts.googleapis.com' />
  <link rel="alternate" type="application/rss+xml" title="Online Education System &raquo; Feed"
    href="https://pj-25.github.io/feed/" />
  <link rel="alternate" type="application/rss+xml" title="Online Education System &raquo; Comments Feed"
    href="https://pj-25.github.io/comments/feed/" />
  <script type="text/javascript">
    /* <![CDATA[ */
    function addLoadEvent(func) {
      var oldonload = window.onload;
      if (typeof window.onload != 'function') {
        window.onload = func;
      } else {
        window.onload = function () {
          oldonload();
          func();
        }
      }
    }
		/* ]]> */
  </script>
  <script type="text/javascript">
    window._wpemojiSettings = { "baseUrl": "https:\/\/s0.wp.com\/wp-content\/mu-plugins\/wpcom-smileys\/twemoji\/2\/72x72\/", "ext": ".png", "svgUrl": "https:\/\/s0.wp.com\/wp-content\/mu-plugins\/wpcom-smileys\/twemoji\/2\/svg\/", "svgExt": ".svg", "source": { "concatemoji": "https:\/\/s0.wp.com\/wp-includes\/js\/wp-emoji-release.min.js?m=1612197847h&ver=5.7.1" } };
    !function (e, a, t) { var n, r, o, i = a.createElement("canvas"), p = i.getContext && i.getContext("2d"); function s(e, t) { var a = String.fromCharCode; p.clearRect(0, 0, i.width, i.height), p.fillText(a.apply(this, e), 0, 0); e = i.toDataURL(); return p.clearRect(0, 0, i.width, i.height), p.fillText(a.apply(this, t), 0, 0), e === i.toDataURL() } function c(e) { var t = a.createElement("script"); t.src = e, t.defer = t.type = "text/javascript", a.getElementsByTagName("head")[0].appendChild(t) } for (o = Array("flag", "emoji"), t.supports = { everything: !0, everythingExceptFlag: !0 }, r = 0; r < o.length; r++)t.supports[o[r]] = function (e) { if (!p || !p.fillText) return !1; switch (p.textBaseline = "top", p.font = "600 32px Arial", e) { case "flag": return s([127987, 65039, 8205, 9895, 65039], [127987, 65039, 8203, 9895, 65039]) ? !1 : !s([55356, 56826, 55356, 56819], [55356, 56826, 8203, 55356, 56819]) && !s([55356, 57332, 56128, 56423, 56128, 56418, 56128, 56421, 56128, 56430, 56128, 56423, 56128, 56447], [55356, 57332, 8203, 56128, 56423, 8203, 56128, 56418, 8203, 56128, 56421, 8203, 56128, 56430, 8203, 56128, 56423, 8203, 56128, 56447]); case "emoji": return !s([55357, 56424, 8205, 55356, 57212], [55357, 56424, 8203, 55356, 57212]) }return !1 }(o[r]), t.supports.everything = t.supports.everything && t.supports[o[r]], "flag" !== o[r] && (t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && t.supports[o[r]]); t.supports.everythingExceptFlag = t.supports.everythingExceptFlag && !t.supports.flag, t.DOMReady = !1, t.readyCallback = function () { t.DOMReady = !0 }, t.supports.everything || (n = function () { t.readyCallback() }, a.addEventListener ? (a.addEventListener("DOMContentLoaded", n, !1), e.addEventListener("load", n, !1)) : (e.attachEvent("onload", n), a.attachEvent("onreadystatechange", function () { "complete" === a.readyState && t.readyCallback() })), (n = t.source || {}).concatemoji ? c(n.concatemoji) : n.wpemoji && n.twemoji && (c(n.twemoji), c(n.wpemoji))) }(window, document, window._wpemojiSettings);
  </script>
  <link rel="stylesheet" href="res/stylesheets/style.css">
  <style type="text/css">
    img.wp-smiley,
    img.emoji {
      display: inline !important;
      border: none !important;
      box-shadow: none !important;
      height: 1em !important;
      width: 1em !important;
      margin: 0 .07em !important;
      vertical-align: -0.1em !important;
      background: none !important;
      padding: 0 !important;
    }
  </style>
  <link rel='stylesheet' id='all-css-0-1'
    href='https://s0.wp.com/_static/??-eJylkttuwyAMhl9ohKWdpu5i2rNgYIlbTgLTNG8/J+2iKa2iSrtB2Pj7fUIOSegYyAaSvorkaoehyCHp6EXx6Oy4shpdyot8jJUKRWdMhJGt7+hcHLbi+3i2WUAFcJZpGp1dwjFoVw272SGNKj2yQGk8hvuQY5HE7yeIl+Vyl/c3aVfZBJs7fslWntvX5q1pJVR0RoKL+iQcQlZ5XFX0DyHqrX9GaKa4H0tJTbgaYyXRZTRP17KSyIowdOvhrnEdb9iu4S5aabDQ4hSP2T97VIbXIkDl21dZ7CuEMkSa17dcttSmabLfJ0VThLcGlXU8wEBb2DU1QMq2FMGnx+rFPPk53Zf/bN/bw2Hf7vYfxx/tVxyP?cssminify=yes'
    type='text/css' media='all' />
  <style id='wp-block-library-inline-css'>
    .has-text-align-justify {
      text-align: justify;
    }
  </style>
  <style id='wpcom-admin-bar-inline-css'>
    .admin-bar {
      position: inherit !important;
      top: auto !important;
    }

    .admin-bar .goog-te-banner-frame {
      top: 32px !important
    }

    @media screen and (max-width: 782px) {
      .admin-bar .goog-te-banner-frame {
        top: 46px !important;
      }
    }

    @media screen and (max-width: 480px) {
      .admin-bar .goog-te-banner-frame {
        position: absolute;
      }
    }
  </style>
  <style id='global-styles-inline-css'>
    :root {
      --wp--preset--color--primary: #1279BE;
      --wp--preset--color--secondary: #FFB302;
      --wp--preset--color--foreground: #303030;
      --wp--preset--color--background: #FFFFFF;
      --wp--preset--color--tertiary: #C5C5C5;
      --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg, rgba(6, 147, 227, 1) 0%, rgb(155, 81, 224) 100%);
      --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg, rgb(122, 220, 180) 0%, rgb(0, 208, 130) 100%);
      --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg, rgba(252, 185, 0, 1) 0%, rgba(255, 105, 0, 1) 100%);
      --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg, rgba(255, 105, 0, 1) 0%, rgb(207, 46, 46) 100%);
      --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg, rgb(238, 238, 238) 0%, rgb(169, 184, 195) 100%);
      --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg, rgb(74, 234, 220) 0%, rgb(151, 120, 209) 20%, rgb(207, 42, 186) 40%, rgb(238, 44, 130) 60%, rgb(251, 105, 98) 80%, rgb(254, 248, 76) 100%);
      --wp--preset--gradient--blush-light-purple: linear-gradient(135deg, rgb(255, 206, 236) 0%, rgb(152, 150, 240) 100%);
      --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg, rgb(254, 205, 165) 0%, rgb(254, 45, 45) 50%, rgb(107, 0, 62) 100%);
      --wp--preset--gradient--luminous-dusk: linear-gradient(135deg, rgb(255, 203, 112) 0%, rgb(199, 81, 192) 50%, rgb(65, 88, 208) 100%);
      --wp--preset--gradient--pale-ocean: linear-gradient(135deg, rgb(255, 245, 203) 0%, rgb(182, 227, 212) 50%, rgb(51, 167, 181) 100%);
      --wp--preset--gradient--electric-grass: linear-gradient(135deg, rgb(202, 248, 128) 0%, rgb(113, 206, 126) 100%);
      --wp--preset--gradient--midnight: linear-gradient(135deg, rgb(2, 3, 129) 0%, rgb(40, 116, 252) 100%);
      --wp--preset--font-size--small: 17.3914px;
      --wp--preset--font-size--normal: 23px;
      --wp--preset--font-size--large: 26.45px;
      --wp--preset--font-size--huge: 30.4174px;
      --transition-speed: 600ms;
    }

    .has-primary-color {
      color: #1279BE !important;
    }

    .has-primary-background-color {
      background-color: #1279BE !important;
    }

    .has-secondary-color {
      color: #FFB302 !important;
    }

    .has-secondary-background-color {
      background-color: #FFB302 !important;
    }

    .has-foreground-color {
      color: #303030 !important;
    }

    .has-foreground-background-color {
      background-color: #303030 !important;
    }

    .has-background-color {
      color: #FFFFFF !important;
    }

    .has-background-background-color {
      background-color: #FFFFFF !important;
    }

    .has-tertiary-color {
      color: #C5C5C5 !important;
    }

    .has-tertiary-background-color {
      background-color: #C5C5C5 !important;
    }

    .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
      background: linear-gradient(135deg, rgba(6, 147, 227, 1) 0%, rgb(155, 81, 224) 100%) !important;
    }

    .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
      background: linear-gradient(135deg, rgb(122, 220, 180) 0%, rgb(0, 208, 130) 100%) !important;
    }

    .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
      background: linear-gradient(135deg, rgba(252, 185, 0, 1) 0%, rgba(255, 105, 0, 1) 100%) !important;
    }

    .has-luminous-vivid-orange-to-vivid-red-gradient-background {
      background: linear-gradient(135deg, rgba(255, 105, 0, 1) 0%, rgb(207, 46, 46) 100%) !important;
    }

    .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
      background: linear-gradient(135deg, rgb(238, 238, 238) 0%, rgb(169, 184, 195) 100%) !important;
    }

    .has-cool-to-warm-spectrum-gradient-background {
      background: linear-gradient(135deg, rgb(74, 234, 220) 0%, rgb(151, 120, 209) 20%, rgb(207, 42, 186) 40%, rgb(238, 44, 130) 60%, rgb(251, 105, 98) 80%, rgb(254, 248, 76) 100%) !important;
    }

    .has-blush-light-purple-gradient-background {
      background: linear-gradient(135deg, rgb(255, 206, 236) 0%, rgb(152, 150, 240) 100%) !important;
    }

    .has-blush-bordeaux-gradient-background {
      background: linear-gradient(135deg, rgb(254, 205, 165) 0%, rgb(254, 45, 45) 50%, rgb(107, 0, 62) 100%) !important;
    }

    .has-luminous-dusk-gradient-background {
      background: linear-gradient(135deg, rgb(255, 203, 112) 0%, rgb(199, 81, 192) 50%, rgb(65, 88, 208) 100%) !important;
    }

    .has-pale-ocean-gradient-background {
      background: linear-gradient(135deg, rgb(255, 245, 203) 0%, rgb(182, 227, 212) 50%, rgb(51, 167, 181) 100%) !important;
    }

    .has-electric-grass-gradient-background {
      background: linear-gradient(135deg, rgb(202, 248, 128) 0%, rgb(113, 206, 126) 100%) !important;
    }

    .has-midnight-gradient-background {
      background: linear-gradient(135deg, rgb(2, 3, 129) 0%, rgb(40, 116, 252) 100%) !important;
    }

    .has-small-font-size {
      font-size: 17.3914px !important;
    }

    .has-normal-font-size {
      font-size: 23px !important;
    }

    .has-large-font-size {
      font-size: 26.45px !important;
    }

    .has-huge-font-size {
      font-size: 30.4174px !important;
    }
  </style>
  <link rel='stylesheet' id='all-css-2-1'
    href='https://s0.wp.com/wp-content/mu-plugins/comment-likes/css/comment-likes.css?m=1407378799h&cssminify=yes'
    type='text/css' media='all' />
  <link rel='stylesheet' id='print-css-3-1'
    href='https://s0.wp.com/wp-content/themes/pub/varia/print.css?m=1571655471h&cssminify=yes' type='text/css'
    media='print' />
  <link rel='stylesheet' id='all-css-4-1'
    href='https://s0.wp.com/_static/??-eJx9jUsOwjAMRC+EsVoqWCHOkqZuGkjiKHEacXtasSkfdeeR35vBGkFzEAqCMpGnjLH0ONFMCbM8HR11zgf8j80qWYU26DcKNWr2P4IvEF0xNmSsdjAkGaksX35YAqcqCvnolCyl/xc3BYYYHGsllsNHgNEpm/bUwOuCGrwN0KsEc7tHJ+odm+U0uFCbuCcJZ0gUOQmMnPx3XtWbvzbnpmu7S3tq7i9qro7m?cssminify=yes'
    type='text/css' media='all' />
  <link crossorigin="anonymous" rel='stylesheet' id='hever-fonts-css'
    href='https://fonts.googleapis.com/css?family=PT+Sans%3A400%2C400i%2C700%2C700i&#038;subset=latin%2Clatin-ext&#038;display=swap'
    media='all' />
  <link rel='stylesheet' id='all-css-6-1'
    href='https://s0.wp.com/_static/??/wp-content/themes/pub/hever/style.css,/wp-content/mu-plugins/admin-bar/masterbar-overrides/masterbar.css?m=1617809090j&cssminify=yes'
    type='text/css' media='all' />
  <style id='jetpack-global-styles-frontend-style-inline-css'>
    :root {
      --font-headings: unset;
      --font-base: unset;
      --font-headings-default: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
      --font-base-default: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
    }
  </style>
  <link rel='stylesheet' id='all-css-8-1'
    href='https://s0.wp.com/_static/??-eJxti0EKgCAQAD+ULUaJl+gtJqbG6opr9P3o0CHqNAzMwFmEpdxcbpAOUfDwMTMU4iY2NLECB1Nj9g97y9zB/8Vko0GB5Oktn6kFlxxDGMEjrQbvYEmzVHIclNZy2i9lFDfR?cssminify=yes'
    type='text/css' media='all' />
  
  <!-- Jetpack Open Graph Tags -->
  <meta property="og:type" content="website" />
  <meta property="og:title" content="Online Education System" />
  <meta property="og:description" content="AI Driven Learning" />
  <meta property="og:url" content="https://pj-25.github.io/" />
  <meta property="og:site_name" content="Online Education System" />
  <meta property="og:image"
    content="https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg" />
  <meta property="og:image:width" content="820" />
  <meta property="og:image:height" content="460" />
  <meta property="og:locale" content="en_US" />
  <meta name="twitter:site" content="@wordpressdotcom" />
  <meta name="twitter:text:title" content="Home" />
  <meta name="twitter:image"
    content="https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg?w=640" />
  <meta name="twitter:card" content="summary_large_image" />
  <meta property="fb:app_id" content="249643311490" />
  <meta property="article:publisher" content="https://www.facebook.com/WordPresscom" />

  <!-- End Jetpack Open Graph Tags -->
  <link rel="search" type="application/opensearchdescription+xml" href="https://pj-25.github.io/osd.xml"
    title="Online Education System" />
  <link rel="search" type="application/opensearchdescription+xml" href="https://s1.wp.com/opensearch.xml"
    title="WordPress.com" />
  <meta name="application-name" content="Online Education System" />
  <meta name="msapplication-window" content="width=device-width;height=device-height" />
  <meta name="msapplication-tooltip" content="AI Driven Learning" />
  <meta name="msapplication-task"
    content="name=Edit page;action-uri=https://wordpress.com/page/onlineducationsystem.wordpress.com/5;icon-uri=https://s0.wp.com/i/icons/page.ico" />
  <meta name="msapplication-task"
    content="name=Write a post;action-uri=https://wordpress.com/post/onlineducationsystem.wordpress.com;icon-uri=https://s0.wp.com/i/icons/post.ico" />
  <meta name="msapplication-task"
    content="name=Moderate comments;action-uri=https://pj-25.github.io/wp-admin/edit-comments.php?comment_status=moderated;icon-uri=https://s0.wp.com/i/icons/comment.ico" />
  <meta name="msapplication-task"
    content="name=Upload new media;action-uri=https://pj-25.github.io/wp-admin/media-new.php;icon-uri=https://s0.wp.com/i/icons/media.ico" />
  <meta name="msapplication-task"
    content="name=Blog stats;action-uri=https://pj-25.github.io/wp-admin/index.php?page=stats;icon-uri=https://s0.wp.com/i/icons/stats.ico" />
  <meta name="description"
    content="Online Education System AI driven learning platform Learn more Features AI driven Personalized learning Analyze learning track Flexible learning Hands on projects Get new content delivered directly to your inbox." />
  <style type="text/css" media="screen">
    html {
      margin-top: 0px !important;
    }

    * html body {
      margin-top: 32px !important;
    }

    @media screen and (max-width: 782px) {
      html {
        margin-top: px !important;
      }

      * html body {
        margin-top: 46px !important;
      }
    }
  </style>
  <link rel="icon" href="https://onlineducationsystem.files.wordpress.com/2020/10/cropped-oeslogo-2.jpg?w=32"
    sizes="32x32" />
  <link rel="icon" href="https://onlineducationsystem.files.wordpress.com/2020/10/cropped-oeslogo-2.jpg?w=192"
    sizes="192x192" />
  <link rel="apple-touch-icon"
    href="https://onlineducationsystem.files.wordpress.com/2020/10/cropped-oeslogo-2.jpg?w=180" />
  <meta name="msapplication-TileImage"
    content="https://onlineducationsystem.files.wordpress.com/2020/10/cropped-oeslogo-2.jpg?w=270" />
</head>

<body
  class="page-template-default page page-id-5 logged-in admin-bar no-customize-support wp-custom-logo wp-embed-responsive customizer-styles-applied singular image-filters-enabled hide-homepage-title highlander-enabled highlander-light">


  <script type="text/javascript">
    /* <![CDATA[ */
    var clickDebugLink;

    jQuery(document).ready(function ($) {
      var single = false, w = 1000,
        supe = false;

      if (single && supe)
        w = 1385;
      else if (supe)
        w = 1200;

      // debug bar extra
      clickDebugLink = function (parent_id, obj) {

        $('#' + parent_id).children('div').hide();

        document.getElementById(obj.href.substr(obj.href.indexOf('#') + 1)).style.display = 'block';
        $(obj.href.substr(obj.href.indexOf('#'))).show()

        $(obj).parent().addClass('current').siblings('li').removeClass('current');

        return false;
      };


      // skip tap-to-hover on site switcher for mobile
      if ('ontouchstart' in window) {
        $('#wp-admin-bar-switch-site').on('touchstart', function (event) {
          if ($(window).width() > 782) {
            return;
          }
          event.stopPropagation();
          $(event.target).first('a').click();
        });
      }

    });
    /* ]]> */
  </script>
  <div class="wpcom-bubble action-bubble">
    <div class="bubble-txt"></div>
  </div>
  <script
    type="text/javascript">function hideBubble() { jQuery('body').append(jQuery('div.wpcom-bubble').removeClass('fadein')).off('click.bubble touchstart.bubble'); jQuery(document).off('scroll.bubble'); };</script>
  <script type="text/javascript">
    jQuery('#wp-admin-bar-jumptotop-button-menu a').click(function (e) {
      e.preventDefault();
      jQuery('html, body').animate({ scrollTop: 0 }, 'fast');
    });
    function hideShowTbJumpToTop() {
      var total_width = 0;
      // Calculate total width taken by items minus our button to see if it'll
      // overlap with other toolbar menus.
      jQuery('#wp-admin-bar-root-default > li').each(function () {
        var self = jQuery(this);
        if ('wp-admin-bar-jumptotop-button-menu' != self.attr('id'))
          total_width += self.width();
      });
      if (jQuery('#wp-admin-bar-jumptotop-button-menu').position()['left'] - total_width < 10) {
        jQuery('#jumptotop').animate({ 'top': '-50px' }, 'fast');
      } else if (jQuery(window).scrollTop() >= 350 && parseInt(jQuery('#jumptotop').css('top')) < 0) {
        if (jQuery('#wp-admin-bar-jumptotop-button-menu').position()['left'] - total_width < 10)
          return;
        jQuery('#jumptotop').animate({ 'top': 0 }, 'fast');
      } else if (jQuery(window).scrollTop() < 1 && parseInt(jQuery('#jumptotop').css('top')) >= 0) {
        jQuery('#jumptotop').animate({ 'top': '-50px' }, 'fast');
      }
    }
    // handle on page load if auto scrolling to a position
    hideShowTbJumpToTop();
    // bind to scrolll event
    var jumpToTopTimer = null;
    jQuery(window).scroll(function () {
      clearTimeout(jumpToTopTimer);
      jumpToTopTimer = setTimeout(jumpToTopRefresh, 150);
    });
    var jumpToTopRefresh = function () {
      hideShowTbJumpToTop();
    };
  </script>

  <nav class="navbar" role="main">
    <ul class="navbar-nav">
      <li class="logo">
        <a href="learner.jsp" class="nav-link">
            <img src="res/images/OESlogo.jpg" class="logo"
            alt="Online Education System" /></a>

      </li>
      <li class="nav-item">
        <a href="learner.jsp" class="nav-link active-link">
          <img src="res/images/home.png" alt="" width="35" height="35" style="margin-left: 1rem;">
          <span class="link-text">Home</span>
        </a>
      </li>
      <li class="nav-item">
        <a href="#" class="nav-link">
            <img src="res/images/user.png" alt="" width="35" height="35" style="margin-left: 1rem;">
          <span class="link-text">Profile:<%=userID%></span>
        </a>
      </li>
      <li class="nav-item">
        <a href="course/course.html" class="nav-link">
          <img src="res/images/online-course.png" alt="" width="35" height="35" style="margin-left: 1rem;">
          <span class="link-text">Courses</span>
        </a>
      </li>
      <li class="nav-item">
        <a href="dashboard/dashboard.html" class="nav-link">
          <img src="res/images/speedometer.png" alt="" width="35" height="35" style="margin-left: 1rem;">
          <span class="link-text">Dashboard</span>
        </a>
      </li>
      <li class="nav-item">
        <a href="contact/contact.html" class="nav-link">
          <img src="res/images/suggestion.png" alt="" width="35" height="35" style="margin-left: 1rem;">
          <span class="link-text">Contact</span>
        </a>
      </li>

      <li class="nav-item">
        <a href="about/about.html" class="nav-link">
          <img src="res/images/information.png" alt="" width="35" height="35" style="margin-left: 1rem;">
          <span class="link-text">About</span>
        </a>
      </li>
      <li class="nav-item">
        <a href="logout.jsp" class="nav-link">
          <img src="res/images/arrow.png" alt="" width="35" height="35" style="margin-left: 1rem;">
          <span class="link-text">Logout</span>
        </a>
      </li>
    </ul>
  </nav>
  <header id="masthead" class="site-header responsive-max-width has-logo has-title-and-tagline has-menu" role="banner">
    <p class="site-title"><a href="index.html" rel="home">Online Education System</a></p>

    <p class="site-description">AI Driven Learning</p>
    <nav id="site-navigation" class="main-navigation" aria-label="Main Navigation">

      <input type="checkbox" role="button" aria-haspopup="true" id="toggle" class="hide-visually">
      <label for="toggle" id="toggle-menu" class="button">
        Menu <span class="dropdown-icon open">+</span>
        <span class="dropdown-icon close">&times;</span>
        <span class="hide-visually expanded-text">expanded</span>
        <span class="hide-visually collapsed-text">collapsed</span>
      </label>
    </nav>

    <nav class="social-navigation" role="navigation" aria-label="Social Links Menu">
      <div class="menu-social-container">
        <ul id="menu-social" class="social-links-menu">
          <li id="menu-item-23" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-23"><a
              href="https://facebook.com"><span class="screen-reader-text">Facebook</span><svg class="svg-icon"
                width="26" height="26" aria-hidden="true" role="img" focusable="false" viewBox="0 0 24 24" version="1.1"
                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <path
                  d="M20.007,3H3.993C3.445,3,3,3.445,3,3.993v16.013C3,20.555,3.445,21,3.993,21h8.621v-6.971h-2.346v-2.717h2.346V9.31 c0-2.325,1.42-3.591,3.494-3.591c0.993,0,1.847,0.074,2.096,0.107v2.43l-1.438,0.001c-1.128,0-1.346,0.536-1.346,1.323v1.734h2.69 l-0.35,2.717h-2.34V21h4.587C20.555,21,21,20.555,21,20.007V3.993C21,3.445,20.555,3,20.007,3z">
                </path>
              </svg></a></li>
          <li id="menu-item-24" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-24"><a
              href="https://twitter.com"><span class="screen-reader-text">Twitter</span><svg class="svg-icon" width="26"
                height="26" aria-hidden="true" role="img" focusable="false" viewBox="0 0 24 24" version="1.1"
                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <path
                  d="M22.23,5.924c-0.736,0.326-1.527,0.547-2.357,0.646c0.847-0.508,1.498-1.312,1.804-2.27 c-0.793,0.47-1.671,0.812-2.606,0.996C18.324,4.498,17.257,4,16.077,4c-2.266,0-4.103,1.837-4.103,4.103 c0,0.322,0.036,0.635,0.106,0.935C8.67,8.867,5.647,7.234,3.623,4.751C3.27,5.357,3.067,6.062,3.067,6.814 c0,1.424,0.724,2.679,1.825,3.415c-0.673-0.021-1.305-0.206-1.859-0.513c0,0.017,0,0.034,0,0.052c0,1.988,1.414,3.647,3.292,4.023 c-0.344,0.094-0.707,0.144-1.081,0.144c-0.264,0-0.521-0.026-0.772-0.074c0.522,1.63,2.038,2.816,3.833,2.85 c-1.404,1.1-3.174,1.756-5.096,1.756c-0.331,0-0.658-0.019-0.979-0.057c1.816,1.164,3.973,1.843,6.29,1.843 c7.547,0,11.675-6.252,11.675-11.675c0-0.178-0.004-0.355-0.012-0.531C20.985,7.47,21.68,6.747,22.23,5.924z">
                </path>
              </svg></a></li>
          <li id="menu-item-25" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-25"><a
              href="https://instagram.com"><span class="screen-reader-text">Instagram</span><svg class="svg-icon"
                width="26" height="26" aria-hidden="true" role="img" focusable="false" viewBox="0 0 24 24" version="1.1"
                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <path
                  d="M12,4.622c2.403,0,2.688,0.009,3.637,0.052c0.877,0.04,1.354,0.187,1.671,0.31c0.42,0.163,0.72,0.358,1.035,0.673 c0.315,0.315,0.51,0.615,0.673,1.035c0.123,0.317,0.27,0.794,0.31,1.671c0.043,0.949,0.052,1.234,0.052,3.637 s-0.009,2.688-0.052,3.637c-0.04,0.877-0.187,1.354-0.31,1.671c-0.163,0.42-0.358,0.72-0.673,1.035 c-0.315,0.315-0.615,0.51-1.035,0.673c-0.317,0.123-0.794,0.27-1.671,0.31c-0.949,0.043-1.233,0.052-3.637,0.052 s-2.688-0.009-3.637-0.052c-0.877-0.04-1.354-0.187-1.671-0.31c-0.42-0.163-0.72-0.358-1.035-0.673 c-0.315-0.315-0.51-0.615-0.673-1.035c-0.123-0.317-0.27-0.794-0.31-1.671C4.631,14.688,4.622,14.403,4.622,12 s0.009-2.688,0.052-3.637c0.04-0.877,0.187-1.354,0.31-1.671c0.163-0.42,0.358-0.72,0.673-1.035 c0.315-0.315,0.615-0.51,1.035-0.673c0.317-0.123,0.794-0.27,1.671-0.31C9.312,4.631,9.597,4.622,12,4.622 M12,3 C9.556,3,9.249,3.01,8.289,3.054C7.331,3.098,6.677,3.25,6.105,3.472C5.513,3.702,5.011,4.01,4.511,4.511 c-0.5,0.5-0.808,1.002-1.038,1.594C3.25,6.677,3.098,7.331,3.054,8.289C3.01,9.249,3,9.556,3,12c0,2.444,0.01,2.751,0.054,3.711 c0.044,0.958,0.196,1.612,0.418,2.185c0.23,0.592,0.538,1.094,1.038,1.594c0.5,0.5,1.002,0.808,1.594,1.038 c0.572,0.222,1.227,0.375,2.185,0.418C9.249,20.99,9.556,21,12,21s2.751-0.01,3.711-0.054c0.958-0.044,1.612-0.196,2.185-0.418 c0.592-0.23,1.094-0.538,1.594-1.038c0.5-0.5,0.808-1.002,1.038-1.594c0.222-0.572,0.375-1.227,0.418-2.185 C20.99,14.751,21,14.444,21,12s-0.01-2.751-0.054-3.711c-0.044-0.958-0.196-1.612-0.418-2.185c-0.23-0.592-0.538-1.094-1.038-1.594 c-0.5-0.5-1.002-0.808-1.594-1.038c-0.572-0.222-1.227-0.375-2.185-0.418C14.751,3.01,14.444,3,12,3L12,3z M12,7.378 c-2.552,0-4.622,2.069-4.622,4.622S9.448,16.622,12,16.622s4.622-2.069,4.622-4.622S14.552,7.378,12,7.378z M12,15 c-1.657,0-3-1.343-3-3s1.343-3,3-3s3,1.343,3,3S13.657,15,12,15z M16.804,6.116c-0.596,0-1.08,0.484-1.08,1.08 s0.484,1.08,1.08,1.08c0.596,0,1.08-0.484,1.08-1.08S17.401,6.116,16.804,6.116z">
                </path>
              </svg></a></li>
          <li id="menu-item-26" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-26"><a
              href="https://pinterest.com"><span class="screen-reader-text">Pinterest</span><svg class="svg-icon"
                width="26" height="26" aria-hidden="true" role="img" focusable="false" viewBox="0 0 24 24" version="1.1"
                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <path
                  d="M12.289,2C6.617,2,3.606,5.648,3.606,9.622c0,1.846,1.025,4.146,2.666,4.878c0.25,0.111,0.381,0.063,0.439-0.169 c0.044-0.175,0.267-1.029,0.365-1.428c0.032-0.128,0.017-0.237-0.091-0.362C6.445,11.911,6.01,10.75,6.01,9.668 c0-2.777,2.194-5.464,5.933-5.464c3.23,0,5.49,2.108,5.49,5.122c0,3.407-1.794,5.768-4.13,5.768c-1.291,0-2.257-1.021-1.948-2.277 c0.372-1.495,1.089-3.112,1.089-4.191c0-0.967-0.542-1.775-1.663-1.775c-1.319,0-2.379,1.309-2.379,3.059 c0,1.115,0.394,1.869,0.394,1.869s-1.302,5.279-1.54,6.261c-0.405,1.666,0.053,4.368,0.094,4.604 c0.021,0.126,0.167,0.169,0.25,0.063c0.129-0.165,1.699-2.419,2.142-4.051c0.158-0.59,0.817-2.995,0.817-2.995 c0.43,0.784,1.681,1.446,3.013,1.446c3.963,0,6.822-3.494,6.822-7.833C20.394,5.112,16.849,2,12.289,2">
                </path>
              </svg></a></li>
          <li id="menu-item-27" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-27"><a
              href="https://wordpress.com"><span class="screen-reader-text">WordPress</span><svg class="svg-icon"
                width="26" height="26" aria-hidden="true" role="img" focusable="false" viewBox="0 0 24 24" version="1.1"
                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <path
                  d="M12.158,12.786L9.46,20.625c0.806,0.237,1.657,0.366,2.54,0.366c1.047,0,2.051-0.181,2.986-0.51 c-0.024-0.038-0.046-0.079-0.065-0.124L12.158,12.786z M3.009,12c0,3.559,2.068,6.634,5.067,8.092L3.788,8.341 C3.289,9.459,3.009,10.696,3.009,12z M18.069,11.546c0-1.112-0.399-1.881-0.741-2.48c-0.456-0.741-0.883-1.368-0.883-2.109 c0-0.826,0.627-1.596,1.51-1.596c0.04,0,0.078,0.005,0.116,0.007C16.472,3.904,14.34,3.009,12,3.009 c-3.141,0-5.904,1.612-7.512,4.052c0.211,0.007,0.41,0.011,0.579,0.011c0.94,0,2.396-0.114,2.396-0.114 C7.947,6.93,8.004,7.642,7.52,7.699c0,0-0.487,0.057-1.029,0.085l3.274,9.739l1.968-5.901l-1.401-3.838 C9.848,7.756,9.389,7.699,9.389,7.699C8.904,7.67,8.961,6.93,9.446,6.958c0,0,1.484,0.114,2.368,0.114 c0.94,0,2.397-0.114,2.397-0.114c0.485-0.028,0.542,0.684,0.057,0.741c0,0-0.488,0.057-1.029,0.085l3.249,9.665l0.897-2.996 C17.841,13.284,18.069,12.316,18.069,11.546z M19.889,7.686c0.039,0.286,0.06,0.593,0.06,0.924c0,0.912-0.171,1.938-0.684,3.22 l-2.746,7.94c2.673-1.558,4.47-4.454,4.47-7.771C20.991,10.436,20.591,8.967,19.889,7.686z M12,22C6.486,22,2,17.514,2,12 C2,6.486,6.486,2,12,2c5.514,0,10,4.486,10,10C22,17.514,17.514,22,12,22z">
                </path>
              </svg></a></li>
        </ul>
      </div>
    </nav><!-- .social-navigation -->
  </header><!-- #masthead -->

  <main>
    <div id="page" class="site">
      <a class="skip-link screen-reader-text" href="#content">Skip to content</a>

      <div id="content" class="site-content">

        <section id="primary" class="content-area">
          <main id="main" class="site-main">


            <article id="post-5" class="post-5 page type-page status-publish hentry entry">

              <header class="entry-header responsive-max-width">

                <h1 class="entry-title">Home</h1>
              </header>


              <div class="entry-content">

                <div
                  class="wp-block-cover alignfull has-background-dim-10 has-background-dim has-custom-content-position is-position-top-left is-style-bottom-wave"
                  style="background-image:url('https://onlineducationsystem.files.wordpress.com/2020/10/pexels-photo-4144923.jpeg');min-height:848px;">
                  <div class="wp-block-cover__inner-container">
                    <div
                      class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-3 column1-desktop-grid__start-10 column1-desktop-grid__row-1 column1-tablet-grid__span-8 column1-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1">
                      <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
                        <h1 class="has-text-align-center">Online Education System</h1>



                        <p class="has-text-align-center">AI driven learning platform</p>



                        <div class="wp-block-buttons aligncenter">
                          <div class="wp-block-button"><a class="wp-block-button__link"
                              href="http://learn.wordpress.com" title="learn.wordpress.com">Learn more</a></div>
                        </div>



                        <p></p>
                      </div>
                    </div>



                    <p></p>
                  </div>
                </div>



                <figure class="wp-block-jetpack-image-compare">
                  <div class="juxtapose" data-mode="horizontal"><img id="74"
                      src="https://onlineducationsystem.files.wordpress.com/2020/10/school-teacher-vector-illustration-2.jpg"
                      alt="" width="2000" height="2000" class="image-compare__image-before" /><img id="75"
                      src="https://onlineducationsystem.files.wordpress.com/2020/10/online-education-vector-concept-international-students-teacher-screen_53562-9460.jpg"
                      alt="" width="626" height="626" class="image-compare__image-after" /></div>
                </figure>



                <div class="wp-block-group alignfull has-background-background-color has-background">
                  <div class="wp-block-group__inner-container">
                    <div
                      class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-12 column1-desktop-grid__row-1 column1-tablet-grid__span-8 column1-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 are-vertically-aligned-center">
                      <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
                        <h1
                          class="has-text-align-center has-background-color has-primary-background-color has-text-color has-background">
                          <strong><span style="text-decoration:underline;"><span
                                class="uppercase">Features</span></span></strong></h1>



                        <div
                          class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-6 column1-desktop-grid__row-1 column2-desktop-grid__span-6 column2-desktop-grid__start-7 column2-desktop-grid__row-1 column1-tablet-grid__span-4 column1-tablet-grid__row-1 column2-tablet-grid__span-4 column2-tablet-grid__start-5 column2-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 column2-mobile-grid__span-4 column2-mobile-grid__row-2">
                          <div
                            class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none is-vertically-aligned-center">
                            <h2>AI driven Personalized learning</h2>
                          </div>



                          <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
                            <figure class="wp-block-image size-large is-style-default"><img data-attachment-id="98"
                                data-permalink="https://pj-25.github.io/interactive-image-1/"
                                data-orig-file="https://onlineducationsystem.files.wordpress.com/2020/10/interactive-image-1.png"
                                data-orig-size="650,662" data-comments-opened="1"
                                data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}"
                                data-image-title="interactive-image-1" data-image-description=""
                                data-medium-file="https://onlineducationsystem.files.wordpress.com/2020/10/interactive-image-1.png?w=295"
                                data-large-file="https://onlineducationsystem.files.wordpress.com/2020/10/interactive-image-1.png?w=650"
                                src="https://onlineducationsystem.files.wordpress.com/2020/10/interactive-image-1.png?w=650"
                                alt="" class="wp-image-98"
                                srcset="https://onlineducationsystem.files.wordpress.com/2020/10/interactive-image-1.png 650w, https://onlineducationsystem.files.wordpress.com/2020/10/interactive-image-1.png?w=147 147w, https://onlineducationsystem.files.wordpress.com/2020/10/interactive-image-1.png?w=295 295w"
                                sizes="(max-width: 650px) 100vw, 650px" /></figure>
                          </div>
                        </div>



                        <div
                          class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-6 column1-desktop-grid__row-1 column2-desktop-grid__span-6 column2-desktop-grid__start-7 column2-desktop-grid__row-1 column1-tablet-grid__span-4 column1-tablet-grid__row-1 column2-tablet-grid__span-4 column2-tablet-grid__start-5 column2-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 column2-mobile-grid__span-4 column2-mobile-grid__row-2 are-vertically-aligned-center">
                          <div
                            class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none is-vertically-aligned-center">
                            <figure class="wp-block-image size-large is-style-default"><img data-attachment-id="101"
                                data-permalink="https://pj-25.github.io/computer-class-1/"
                                data-orig-file="https://onlineducationsystem.files.wordpress.com/2020/10/computer-class-1.png"
                                data-orig-size="600,440" data-comments-opened="1"
                                data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}"
                                data-image-title="computer-class-1" data-image-description=""
                                data-medium-file="https://onlineducationsystem.files.wordpress.com/2020/10/computer-class-1.png?w=300"
                                data-large-file="https://onlineducationsystem.files.wordpress.com/2020/10/computer-class-1.png?w=600"
                                src="https://onlineducationsystem.files.wordpress.com/2020/10/computer-class-1.png?w=600"
                                alt="" class="wp-image-101"
                                srcset="https://onlineducationsystem.files.wordpress.com/2020/10/computer-class-1.png 600w, https://onlineducationsystem.files.wordpress.com/2020/10/computer-class-1.png?w=150 150w, https://onlineducationsystem.files.wordpress.com/2020/10/computer-class-1.png?w=300 300w"
                                sizes="(max-width: 600px) 100vw, 600px" /></figure>
                          </div>



                          <div
                            class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none is-vertically-aligned-center">
                            <div class="wp-block-jetpack-markdown">
                              <h1>Analyze learning track</h1>
                            </div>
                          </div>
                        </div>



                        <div
                          class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-6 column1-desktop-grid__row-1 column2-desktop-grid__span-6 column2-desktop-grid__start-7 column2-desktop-grid__row-1 column1-tablet-grid__span-4 column1-tablet-grid__row-1 column2-tablet-grid__span-4 column2-tablet-grid__start-5 column2-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 column2-mobile-grid__span-4 column2-mobile-grid__row-2 are-vertically-aligned-center">
                          <div
                            class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none is-vertically-aligned-center">
                            <div class="wp-block-jetpack-markdown">
                              <h1>Flexible learning</h1>
                            </div>
                          </div>



                          <div
                            class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none is-vertically-aligned-center">
                            <figure class="wp-block-image size-large is-style-default"><img data-attachment-id="103"
                                data-permalink="https://pj-25.github.io/attendancebg-1/"
                                data-orig-file="https://onlineducationsystem.files.wordpress.com/2020/10/attendancebg-1.png"
                                data-orig-size="600,500" data-comments-opened="1"
                                data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}"
                                data-image-title="attendancebg-1" data-image-description=""
                                data-medium-file="https://onlineducationsystem.files.wordpress.com/2020/10/attendancebg-1.png?w=300"
                                data-large-file="https://onlineducationsystem.files.wordpress.com/2020/10/attendancebg-1.png?w=600"
                                src="https://onlineducationsystem.files.wordpress.com/2020/10/attendancebg-1.png?w=600"
                                alt="" class="wp-image-103"
                                srcset="https://onlineducationsystem.files.wordpress.com/2020/10/attendancebg-1.png 600w, https://onlineducationsystem.files.wordpress.com/2020/10/attendancebg-1.png?w=150 150w, https://onlineducationsystem.files.wordpress.com/2020/10/attendancebg-1.png?w=300 300w"
                                sizes="(max-width: 600px) 100vw, 600px" /></figure>
                          </div>
                        </div>



                        <div
                          class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-6 column1-desktop-grid__row-1 column2-desktop-grid__span-6 column2-desktop-grid__start-7 column2-desktop-grid__row-1 column1-tablet-grid__span-4 column1-tablet-grid__row-1 column2-tablet-grid__span-4 column2-tablet-grid__start-5 column2-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 column2-mobile-grid__span-4 column2-mobile-grid__row-2 are-vertically-aligned-center">
                          <div
                            class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none is-vertically-aligned-center">
                            <figure class="wp-block-image size-large is-style-default"><img data-attachment-id="104"
                                data-permalink="https://pj-25.github.io/illus-webdesign-2/"
                                data-orig-file="https://onlineducationsystem.files.wordpress.com/2020/10/illus-webdesign-2.png"
                                data-orig-size="1712,1344" data-comments-opened="1"
                                data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}"
                                data-image-title="illus-webdesign-2" data-image-description=""
                                data-medium-file="https://onlineducationsystem.files.wordpress.com/2020/10/illus-webdesign-2.png?w=300"
                                data-large-file="https://onlineducationsystem.files.wordpress.com/2020/10/illus-webdesign-2.png?w=750"
                                src="https://onlineducationsystem.files.wordpress.com/2020/10/illus-webdesign-2.png?w=1024"
                                alt="" class="wp-image-104"
                                srcset="https://onlineducationsystem.files.wordpress.com/2020/10/illus-webdesign-2.png?w=1024 1024w, https://onlineducationsystem.files.wordpress.com/2020/10/illus-webdesign-2.png?w=150 150w, https://onlineducationsystem.files.wordpress.com/2020/10/illus-webdesign-2.png?w=300 300w, https://onlineducationsystem.files.wordpress.com/2020/10/illus-webdesign-2.png?w=768 768w, https://onlineducationsystem.files.wordpress.com/2020/10/illus-webdesign-2.png 1712w"
                                sizes="(max-width: 1024px) 100vw, 1024px" /></figure>
                          </div>



                          <div
                            class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none is-vertically-aligned-center">
                            <div class="wp-block-jetpack-markdown">
                              <h1>Hands on projects</h1>
                            </div>
                          </div>
                        </div>



                        <figure class="wp-block-image alignwide size-large is-style-rounded"><img
                            data-attachment-id="53" data-permalink="https://pj-25.github.io/e-learning-1/"
                            data-orig-file="https://onlineducationsystem.files.wordpress.com/2020/10/e-learning-1.jpg"
                            data-orig-size="2800,2000" data-comments-opened="1"
                            data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}"
                            data-image-title="e-learning-1" data-image-description=""
                            data-medium-file="https://onlineducationsystem.files.wordpress.com/2020/10/e-learning-1.jpg?w=300"
                            data-large-file="https://onlineducationsystem.files.wordpress.com/2020/10/e-learning-1.jpg?w=750"
                            src="https://onlineducationsystem.files.wordpress.com/2020/10/e-learning-1.jpg?w=1024"
                            alt="" class="wp-image-53"
                            srcset="https://onlineducationsystem.files.wordpress.com/2020/10/e-learning-1.jpg?w=1024 1024w, https://onlineducationsystem.files.wordpress.com/2020/10/e-learning-1.jpg?w=2048 2048w, https://onlineducationsystem.files.wordpress.com/2020/10/e-learning-1.jpg?w=150 150w, https://onlineducationsystem.files.wordpress.com/2020/10/e-learning-1.jpg?w=300 300w, https://onlineducationsystem.files.wordpress.com/2020/10/e-learning-1.jpg?w=768 768w"
                            sizes="(max-width: 1024px) 100vw, 1024px" /></figure>
                      </div>
                    </div>
                  </div>
                </div>



                <div class="wp-block-group alignfull has-foreground-dark-background-color has-background">
                  <div class="wp-block-group__inner-container">
                    <div
                      class="wp-block-jetpack-layout-grid alignfull column1-desktop-grid__span-3 column1-desktop-grid__start-3 column1-desktop-grid__row-1 column2-desktop-grid__span-5 column2-desktop-grid__start-6 column2-desktop-grid__row-1 column1-tablet-grid__span-4 column1-tablet-grid__row-1 column2-tablet-grid__span-4 column2-tablet-grid__start-5 column2-tablet-grid__row-1 column1-mobile-grid__span-4 column1-mobile-grid__row-1 column2-mobile-grid__span-4 column2-mobile-grid__row-2">
                      <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
                        <p class="has-text-align-left has-huge-font-size">Get new content delivered directly to your
                          inbox.</p>
                      </div>



                      <div class="wp-block-jetpack-layout-grid-column wp-block-jetpack-layout-grid__padding-none">
                        <div
                          class="wp-block-jetpack-subscriptions wp-block-jetpack-subscriptions__supports-newline wp-block-jetpack-subscriptions__use-newline">
                          <div class="jetpack_subscription_widget">
                            <form action="https://subscribe.wordpress.com" method="post" accept-charset="utf-8" id="">
                              <p id="subscribe-email">
                                <label id="subscribe-field-label" for="subscribe-field" class="screen-reader-text">
                                  Email Address: </label>

                                <input type="text" name="email"
                                  style="font-size: 16px; padding: 15px 23px 15px 23px; border-radius: 0px; border-width: 1px;"
                                  placeholder="Enter your email address" value="" id="subscribe-field" />
                              </p>

                              <p id="subscribe-submit">
                                <input type="hidden" name="action" value="subscribe" />
                                <input type="hidden" name="blog_id" value="184325330" />
                                <input type="hidden" name="source" value="https://pj-25.github.io/" />
                                <input type="hidden" name="sub-type" value="widget" />
                                <input type="hidden" name="redirect_fragment" value="488" />
                                <input type="hidden" id="_wpnonce" name="_wpnonce" value="4f9338f929" /> <button
                                  type="submit"
                                  class="has-text-color has-background-color has-background has-primary-background-color"
                                  style="font-size: 16px; padding: 15px 23px 15px 23px; margin-top: 10px; border-radius: 0px; border-width: 1px;">
                                  Subscribe </button>
                              </p>
                            </form>

                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>



                <figure class="wp-block-image size-large is-style-default"><img data-attachment-id="50"
                    data-permalink="https://pj-25.github.io/classroom-training-to-virtual-classroom-training-2/"
                    data-orig-file="https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg"
                    data-orig-size="820,460" data-comments-opened="1"
                    data-image-meta="{&quot;aperture&quot;:&quot;0&quot;,&quot;credit&quot;:&quot;&quot;,&quot;camera&quot;:&quot;&quot;,&quot;caption&quot;:&quot;&quot;,&quot;created_timestamp&quot;:&quot;0&quot;,&quot;copyright&quot;:&quot;&quot;,&quot;focal_length&quot;:&quot;0&quot;,&quot;iso&quot;:&quot;0&quot;,&quot;shutter_speed&quot;:&quot;0&quot;,&quot;title&quot;:&quot;&quot;,&quot;orientation&quot;:&quot;0&quot;}"
                    data-image-title="classroom-training-to-virtual-classroom-training-2" data-image-description=""
                    data-medium-file="https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg?w=300"
                    data-large-file="https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg?w=750"
                    src="https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg?w=820"
                    alt="" class="wp-image-50"
                    srcset="https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg 820w, https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg?w=150 150w, https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg?w=300 300w, https://onlineducationsystem.files.wordpress.com/2020/10/classroom-training-to-virtual-classroom-training-2.jpg?w=768 768w"
                    sizes="(max-width: 820px) 100vw, 820px" /></figure>



                <p></p>
              </div><!-- .entry-content -->

              <footer class="entry-footer responsive-max-width">
            </article><!-- #post-5 -->

          </main><!-- #main -->
        </section><!-- #primary -->


      </div><!-- #content -->


      <footer id="colophon" class="site-footer responsive-max-width">
        <nav class="footer-navigation" aria-label="Footer Menu">
          <div class="menu-social-container">
            <ul id="menu-social-1" class="footer-menu">
              <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-23"><a
                  href="https://facebook.com">Facebook</a></li>
              <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-24"><a
                  href="https://twitter.com">Twitter</a></li>
              <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-25"><a
                  href="https://instagram.com">Instagram</a></li>
              <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-26"><a
                  href="https://pinterest.com">Pinterest</a></li>
              <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-27"><a
                  href="https://wordpress.com">WordPress</a></li>
            </ul>
          </div>
        </nav><!-- .footer-navigation -->


        <div class="site-info">
          <a class="site-name" href="https://pj-25.github.io/" rel="home">Online Education System</a><span
            class="comma">,</span>
          <a href="https://wordpress.com/?ref=footer_custom_powered" rel="nofollow">Website Powered by GitHub.io</a>.
        </div><!-- .site-info -->
      </footer><!-- #colophon -->

    </div><!-- #page -->

    <!--  -->
    <script type="text/javascript">
      /* <![CDATA[ */
      jQuery(document).ready(function ($) {
        function doFollowingHover() {
          $('#wp-admin-bar-follow > a').unbind('.unfollow');

          $('#wp-admin-bar-follow > a').bind('mouseover.unfollow', function () {

            $(this).html("Unfollow").parent('li').addClass('unfollow');
          });
          $('#wp-admin-bar-follow > a').bind('mouseout.unfollow', function () {
            $(this).html("Following").parent('li').removeClass('unfollow');
          });
        }
        doFollowingHover();

        $('#wp-admin-bar-follow > a').click(function (e) {
          $('#wp-admin-bar-follow > a').unbind('.unfollow');

          e.preventDefault();

          var link = $(this), li = $('#wp-admin-bar-follow'), timeout = 0;

          if (li.hasClass('subscribed')) {
            li.removeClass('subscribed').removeClass('unfollow');
            link.html("Follow");

            $('body').append($('div.wpcom-bubble').removeClass('fadein')).off('click.bubble');

            var action = 'ab_unsubscribe_from_blog';
          } else {
            li.addClass('subscribed').removeClass('unfollow');
            link.html("Following");

            var left = 131 - link.width();
            li.append($('div.wpcom-bubble').css({ left: '-' + left + 'px' }));
            $('div.bubble-txt', 'div.wpcom-bubble').html("New posts from this blog will now appear in \u003Ca target=\u0022_blank\u0022 href=\u0022http:\/\/wordpress.com\/\u0022\u003Eyour reader\u003C\/a\u003E. You can manage email alerts from your \u003Ca target=\u0022_blank\u0022 href=\u0022http:\/\/wordpress.com\/following\/edit\/\u0022\u003Esubscriptions page\u003C\/a\u003E.");

            $('div.wpcom-bubble.action-bubble').addClass('fadein');

            setTimeout(function () {
              $('body').on('click.bubble touchstart.bubble', function (e) {
                if (!$(e.target).hasClass('wpcom-bubble') && !$(e.target).parents('div.wpcom-bubble').length)
                  hideBubble();
              });
              setTimeout(hideBubble, 15000);
            }, 500);

            var action = 'ab_subscribe_to_blog';
            $('#wp-admin-bar-follow > a').bind('mouseout.shift', function () {
              doFollowingHover();
              $(this).unbind('.shift');
            });
          }

          var nonce = link.attr('href').split('_wpnonce=');
          nonce = nonce[1];

          $.post("https:\/\/onlineducationsystem.wordpress.com\/wp-admin\/admin-ajax.php", {
            'action': action,
            '_wpnonce': nonce,
            'source': 'admin_bar',
            'blog_id': 184325330
          });
        });
      });
      /* ]]> */
    </script>
    <script src='//0.gravatar.com/js/gprofiles.js?ver=202116y' id='grofiles-cards-js'></script>
    <script id='wpgroho-js-extra'>
      var WPGroHo = { "my_hash": "dc96104f74994a618deff85a429e8fd2" };
    </script>
    <script type='text/javascript'
      src='https://s0.wp.com/wp-content/mu-plugins/gravatar-hovercards/wpgroho.js?m=1610363240h'></script>

    <script>
      // Initialize and attach hovercards to all gravatars
      (function () {
        function init() {
          if (typeof Gravatar === 'undefined') {
            return;
          }

          if (typeof Gravatar.init !== 'function') {
            return;
          }

          Gravatar.profile_cb = function (hash, id) {
            WPGroHo.syncProfileData(hash, id);
          };

          Gravatar.my_hash = WPGroHo.my_hash;
          Gravatar.init('body', '#wp-admin-bar-my-account');
        }

        if (document.readyState !== 'loading') {
          init();
        } else {
          document.addEventListener('DOMContentLoaded', init);
        }
      })();
    </script>

    <div style="display:none">
      <div class="grofile-hash-map-dc96104f74994a618deff85a429e8fd2">
      </div>
    </div>
    <div id="report-form-window" style="display:none;"></div>
    <script>
      window.addEventListener("load", function (event) {
        var link = document.createElement("link");
        link.href = "https://s0.wp.com/wp-content/mu-plugins/actionbar/actionbar.css?v=20201002";
        link.type = "text/css";
        link.rel = "stylesheet";
        document.head.appendChild(link);

        var script = document.createElement("script");
        script.src = "https://s0.wp.com/wp-content/mu-plugins/actionbar/actionbar.js?v=20201002";
        script.defer = true;
        document.body.appendChild(script);
      });
    </script>


    <div id="carousel-reblog-box">
      <form action="#" name="carousel-reblog">
        <label for="carousel-reblog-content" id="carousel-reblog-lblogcontent" class="screen-reader-text">Add your
          thoughts here... (optional)</label>
        <textarea id="carousel-reblog-content" name="carousel-reblog-content"
          placeholder="Add your thoughts here... (optional)"></textarea>
        <label for="carousel-reblog-to-blog-id" id="carousel-reblog-lblogid">Post to</label>
        <select name="carousel-reblog-to-blog-id" id="carousel-reblog-to-blog-id">
          <option value="184325330">Online Education System</option>
          <option value="184359813">Site Title</option>
        </select>

        <div class="submit">
          <span class="canceltext"><a href="#" class="cancel">Cancel</a></span>
          <input type="submit" name="carousel-reblog-submit" class="button" id="carousel-reblog-submit"
            value="Reblog Post" />
          <input type="hidden" id="carousel-reblog-blog-id" value="184325330" />
          <input type="hidden" id="carousel-reblog-blog-url" value="https://onlineducationsystem.wordpress.com" />
          <input type="hidden" id="carousel-reblog-blog-title" value="Online Education System" />
          <input type="hidden" id="carousel-reblog-post-url" value="" />
          <input type="hidden" id="carousel-reblog-post-title" value="" />
        </div>

        <input type="hidden" id="_wpnonce" name="_wpnonce" value="02c9aaf5c1" /><input type="hidden"
          name="_wp_http_referer" value="/" />
      </form>

      <div class="arrow"></div>
    </div>

    <div class="jp-carousel-wrap jp-carousel-transitions" itemscope itemtype="https://schema.org/ImageGallery"
      style="display: none;">
      <div class="jp-carousel-overlay"></div>
      <div class="jp-carousel"></div>
      <div class="jp-carousel-fadeaway"></div>
      <div class="jp-carousel-info">
        <div class="jp-carousel-photo-info">
          <h2 class="jp-carousel-caption" itemprop="caption description"></h2>
        </div>
        <div class="jp-carousel-info-columns">
          <div class="jp-carousel-left-column-wrapper">
            <div class="jp-carousel-titleanddesc"></div>
            <!-- Intentional duplicate -->
            <div class="jp-carousel-photo-info">
              <h2 class="jp-carousel-caption" itemprop="caption description"></h2>
            </div>
            <div id="jp-carousel-comment-form-container">
              <form id="jp-carousel-comment-form">
                <textarea name="comment" class="jp-carousel-comment-form-field jp-carousel-comment-form-textarea"
                  id="jp-carousel-comment-form-comment-field" placeholder="Write a Comment..."></textarea>
                <div id="jp-carousel-comment-form-submit-and-info-wrapper">
                  <div id="jp-carousel-comment-form-commenting-as">
                    <p id="jp-carousel-commenting-as">
                      Commenting as prashant joshi </p>
                  </div>
                  <input type="submit" name="submit" class="jp-carousel-comment-form-button"
                    id="jp-carousel-comment-form-button-submit" value="Post Comment" />
                  <span id="jp-carousel-comment-form-spinner">&nbsp;</span>
                  <div id="jp-carousel-comment-post-results"></div>
                </div>
              </form>
            </div>
            <div class="jp-carousel-comments"></div>
            <div id="jp-carousel-comments-loading">
              <span>Loading Comments...</span>
            </div>
          </div>
          <div class="jp-carousel-image-meta">
            <div class="jp-carousel-buttons">
              <a class="jp-carousel-commentlink" href="#">Comment</a>
            </div>
            <ul class="jp-carousel-image-exif" style="display: none;"></ul>
            <a class="jp-carousel-image-download" style="display: none;"></a>
            <div class="jp-carousel-image-map" style="display: none;"></div>
          </div>
        </div>
      </div>
      <div class="jp-carousel-next-button" style="display: none;">
        <span></span>
      </div>
      <div class="jp-carousel-previous-button" style="display: none;">
        <span></span>
      </div>
      <div class="jp-carousel-close-hint"><span>&times;</span></div>
    </div>

    <div class="widget widget_eu_cookie_law_widget">
      <div class="hide-on-button ads-active" data-hide-timeout="30" data-consent-expiration="180" id="eu-cookie-law">
        <form method="post">
          <input type="submit" value="Close and accept" class="accept" />

          Privacy &amp; Cookies: This site uses cookies. By continuing to use this website, you agree to their use.
          <br />
          To find out more, including how to control cookies, see here:
          <a href="https://automattic.com/cookies" rel="nofollow">
            Cookie Policy </a>
        </form>
      </div>
    </div>
    <link rel='stylesheet' id='all-css-0-2'
      href='https://s0.wp.com/_static/??-eJyVj0sOwjAMRC9EMGUBZIE4CkqMidzmpzih4vYEqUXsEEvPzHuSYc4KU6wUK2TfHEcB1/ppqThlfcJJYKSaDU7Km2dqVbnCN1iqe+nwFkU28GUKTa2yhYUrR1whDsZRH4dsCsGDaf7XIM0KFs6VU1/8MqApqQn5zyNr8IYu4TwchpPea33cjS9RrWYY?cssminify=yes'
      type='text/css' media='all' />
    <script id='thickbox-js-extra'>
      var thickboxL10n = { "next": "Next >", "prev": "< Prev", "image": "Image", "of": "of", "close": "Close", "noiframes": "This feature requires inline frames. You have iframes disabled or your browser does not support them.", "loadingAnimation": "https:\/\/s0.wp.com\/wp-includes\/js\/thickbox\/loadingAnimation.gif" };
    </script>
    <script id='comment-like-js-extra'>
      var comment_like_text = { "loading": "Loading..." };
    </script>
    <script id='coblocks-lightbox-js-extra'>
      var coblocksLigthboxData = { "closeLabel": "Close Gallery", "leftLabel": "Previous", "rightLabel": "Next" };
    </script>
    <script id='notes-rest-common-js-extra'>
      var wpNotesArgs = { "cacheBuster": "@automattic\/jetpack-blocks@13.1.0-12669-g727d23c131v2", "iframeUrl": "https:\/\/widgets.wp.com\/notifications\/", "iframeAppend": "2", "iframeScroll": "no", "wide": "1" };
    </script>
    <script id='tos-report-form-js-extra'>
      var wpcom_tos_report_form = { "ajaxurl": "\/wp-admin\/admin-ajax.php", "isLoggedoutUser": "", "post_ID": "5", "current_url": "https:\/\/onlineducationsystem.wordpress.com", "report_this_content": "Report this content" };
    </script>
    <script id='jetpack-block-image-compare-js-extra'>
      var Jetpack_Block_Assets_Base_Url = { "url": "https:\/\/s0.wp.com\/wp-content\/mu-plugins\/jetpack\/_inc\/blocks\/" };
      var imageCompareHandle = { "msg": "Slide to compare images" };
    </script>
    <script id='jetpack-carousel-js-extra'>
      var jetpackCarouselStrings = { "widths": [370, 700, 1000, 1200, 1400, 2000], "is_logged_in": "1", "lang": "en", "ajaxurl": "https:\/\/onlineducationsystem.wordpress.com\/wp-admin\/admin-ajax.php", "nonce": "5d48b5a6d8", "display_exif": "1", "display_comments": "1", "display_geo": "1", "single_image_gallery": "1", "single_image_gallery_media_file": "", "background_color": "black", "comment": "Comment", "post_comment": "Post Comment", "write_comment": "Write a Comment...", "loading_comments": "Loading Comments...", "download_original": "View full size <span class=\"photo-size\">{0}<span class=\"photo-size-times\">\u00d7<\/span>{1}<\/span>", "no_comment_text": "Please be sure to submit some text with your comment.", "no_comment_email": "Please provide an email address to comment.", "no_comment_author": "Please provide your name to comment.", "comment_post_error": "Sorry, but there was an error posting your comment. Please try again later.", "comment_approved": "Your comment was approved.", "comment_unapproved": "Your comment is in moderation.", "camera": "Camera", "aperture": "Aperture", "shutter_speed": "Shutter Speed", "focal_length": "Focal Length", "copyright": "Copyright", "comment_registration": "0", "require_name_email": "1", "login_url": "https:\/\/onlineducationsystem.wordpress.com\/wp-login.php?redirect_to=https%3A%2F%2Fonlineducationsystem.wordpress.com%2F", "blog_id": "184325330", "meta_data": ["camera", "aperture", "shutter_speed", "focal_length", "copyright"], "reblog": "Reblog", "reblogged": "Reblogged", "reblog_add_thoughts": "Add your thoughts here... (optional)", "reblogging": "Reblogging...", "post_reblog": "Post Reblog", "stats_query_args": "blog=184325330&v=wpcom&tz=5&user=1&user_id=178154122&subd=onlineducationsystem", "is_public": "1", "reblog_enabled": "" };
    </script>
    <script type='text/javascript'
      src='https://s0.wp.com/_static/??-eJylk9lywjAMRX+oxiTThT50+ikdJxaJEm/jJYG/rwwNpDRQOn1hsHSv5BzJfHSstiaCibwLXMKANbjdqgsPnFJoapUkhJyLLdZ9ZXenP0ui1g7g8VCPdWGl0SyphKQEq4SfC6Zr6MScSg2amY7ytdXs7LvuIZ3O3RX2x2YKKx5GdPAX07fApfHsqpSt+8DLVbFeFVxiiEfzMU7upo0zUgudR5QNxMAhUdb2CEyJkUfQTokIF/EllslI8KG2Hq7RrkQel4El2JTWKURRt7fwGJuvcvhlmYw1bCh/1Z+mdVscbWAenPWRba3Xl+e71kOLEMHnVtHT14YlDHQEXYG8hukwvQGMtHndmLNqv0WllqhNF2gSHSvwDcv8+UBb8Eh7UCVUkp6CpdVAGs+P+d/lx2Jj/mGX9F48CLlfrjHD2EF0BI1/EA3+tdGoRQN51k7kygjjrdcjvE0B1FSJTQHyvOu34rnYvL6U5dO6+wQgf6Ke'></script>
    <script type='text/javascript'>
      ('fetch' in window) || document.write('<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-fetch.min.js?m=1612197847h&#038;ver=3.0.0"></scr' + 'ipt>'); (document.contains) || document.write('<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-node-contains.min.js?m=1540208548h&#038;ver=3.42.0"></scr' + 'ipt>'); (window.DOMRect) || document.write('<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-dom-rect.min.js?m=1612197847h&#038;ver=3.42.0"></scr' + 'ipt>'); (window.URL && window.URL.prototype && window.URLSearchParams) || document.write('<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-url.min.js?m=1585663916h&#038;ver=3.6.4"></scr' + 'ipt>'); (window.FormData && window.FormData.prototype.keys) || document.write('<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-formdata.min.js?m=1550600082h&#038;ver=3.0.12"></scr' + 'ipt>'); (Element.prototype.matches && Element.prototype.closest) || document.write('<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-element-closest.min.js?m=1540208548h&#038;ver=2.0.2"></scr' + 'ipt>'); ('objectFit' in document.documentElement.style) || document.write('<script src="https://s0.wp.com/wp-includes/js/dist/vendor/wp-polyfill-object-fit.min.js?m=1615384028h&#038;ver=2.3.4"></scr' + 'ipt>');
      ("objectFit" in document.documentElement.style) || document.write('<script src="https://s0.wp.com/wp-content/plugins/gutenberg-core/v10.4.1/vendor/object-fit-polyfill.min.5f0c4c73.js?m=1618439079h&#038;ver=2.3.5"></scr' + 'ipt>');
    </script>
    <script type='text/javascript'>
      wp.i18n.setLocaleData({ 'text direction\u0004ltr': ['ltr'] });
      wp.i18n.setLocaleData({ 'text direction\u0004ltr': ['ltr'] }, 'default');
    </script>
    <script>
      /(trident|msie)/i.test(navigator.userAgent) && document.getElementById && window.addEventListener && window.addEventListener("hashchange", function () { var t, e = location.hash.substring(1); /^[A-z0-9_-]+$/.test(e) && (t = document.getElementById(e)) && (/^(?:a|select|input|button|textarea)$/i.test(t.tagName) || (t.tabIndex = -1), t.focus()) }, !1);
    </script>
    <script type="text/javascript">
      // <![CDATA[
      (function () {
        try {
          if (window.external && 'msIsSiteMode' in window.external) {
            if (window.external.msIsSiteMode()) {
              var jl = document.createElement('script');
              jl.type = 'text/javascript';
              jl.async = true;
              jl.src = '/wp-content/plugins/ie-sitemode/custom-jumplist.php';
              var s = document.getElementsByTagName('script')[0];
              s.parentNode.insertBefore(jl, s);
            }
          }
        } catch (e) { }
      })();
      // ]]>
    </script>
    <script src="//stats.wp.com/w.js?61" defer></script>
    <script type="text/javascript">
      _tkq = window._tkq || [];
      _stq = window._stq || [];
      _tkq.push(['identifyUser', 178154122, 'joshiprashantjp25']);
      _tkq.push(['storeContext', { 'blog_id': '184325330', 'blog_tz': '5', 'user_lang': 'en', 'blog_lang': 'en' }]);
      _stq.push(['view', { 'blog': '184325330', 'v': 'wpcom', 'tz': '5', 'user': '1', 'user_id': '178154122', 'post': '5', 'subd': 'onlineducationsystem' }]);
      _stq.push(['extra', { 'crypt': 'UE40eW5QN0p8M2Y/RE1zNDZ8S252Wis9XUQyb3YrcUVIU2R0VH5TcUpqcF9NWi1bMDJfLy90VXNvY2U3ZFZ1RWlDZ2dfWmwuT1t4W0UvdX4lUm9+NF9sW3RyTnVMTE18M3hUMkhTVkcxNWh4Jml3dS1mZHpSWVh0dDdvbDNQb3xweEoyZXxOZkE2azlDUV1+UkZBMk09STFRZV8lX3JhS2QtdWVLT2RnaHpfNmJ1MyZfYzErYjZrdGJbSDR5Tiw0ckF0WjcmWTk/dXp8UG9fblJOdDdFN2tqQX53SS01VG9WZEFycnB3Vy1VcE9mWFZUcUpsd3NhQ0g5THxFVTEyNXhhanBHaExTdyZUaUVDVHpP' }]);
    </script>
    <noscript><img src="https://pixel.wp.com/b.gif?v=noscript"
        style="height:1px;width:1px;overflow:hidden;position:absolute;bottom:1px;" alt="" /></noscript>
    <script>
      if ('object' === typeof wpcom_mobile_user_agent_info) {

        wpcom_mobile_user_agent_info.init();
        var mobileStatsQueryString = "";

        if (false !== wpcom_mobile_user_agent_info.matchedPlatformName)
          mobileStatsQueryString += "&x_" + 'mobile_platforms' + '=' + wpcom_mobile_user_agent_info.matchedPlatformName;

        if (false !== wpcom_mobile_user_agent_info.matchedUserAgentName)
          mobileStatsQueryString += "&x_" + 'mobile_devices' + '=' + wpcom_mobile_user_agent_info.matchedUserAgentName;

        if (wpcom_mobile_user_agent_info.isIPad())
          mobileStatsQueryString += "&x_" + 'ipad_views' + '=' + 'views';

        if ("" != mobileStatsQueryString) {
          new Image().src = document.location.protocol + '//pixel.wp.com/g.gif?v=wpcom-no-pv' + mobileStatsQueryString + '&baba=' + Math.random();
        }

      }
    </script>
  </main>
</body>

</html>