<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="jefersoncunha.com" name="author"/>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.blue_grey-indigo.min.css" />

<style>
    body::before {
        background-size: cover;
        background-attachment: fixed;
        content: '';
        will-change: transform;
        z-index: -1;
        left: 0;
        right: 0;
        bottom: 0;
        top: 0;
        position: fixed;
    }
    a:link {
        text-decoration: none;
    }

    a:visited {
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    a:active {
        text-decoration: underline;
    }

    .home_link{
        color: white;
    }
    .home_link a:link, a:hover, a:active{
        color: white;
        text-decoration: none;
    }

    .moonbase{
        color: #212121;
    }
    .moonbase a:link, a:hover, a:active{
        color: #000;
        text-decoration: none;
    }



    @media (max-width: 512px)  and (min-resolution: 1.5dppx),
    (max-width: 1024px) and (max-resolution: 1.5dppx) {
        body::before {
            background-image: url('images/bg_1024.jpg');
        }
    }
    @media (min-width: 513px)  and (max-width: 1024px) and (min-resolution: 1.5dppx),
    (min-width: 1025px) and (max-width: 2048px) and (max-resolution: 1.5dppx)  {
        body::before {
            background-image: url('images/bg_2048.jpg');
        }
    }
    @media (min-width: 1025px) and (min-resolution: 1.5dppx),
    (min-width: 2049px) and (max-resolution: 1.5dppx) {
        body::before {
            background-image: url('images/bg_2880.jpg');
        }
    }
    body .demo-blog {
        font-family: 'Roboto', 'Helvetica', sans-serif;
    }

    .demo-blog .demo-blog__posts {
        max-width: 900px;
        padding: 0;
        display: flex;
        width: 100%;
        margin: 0 auto;
        flex-shrink: 0;
    }

    .demo-blog.mdl-layout .mdl-layout__content {
        padding-top: 100px;
        position: relative;
        -webkit-overflow-scrolling: touch;
    }
    .demo-blog .mdl-card {
        display: flex;
        flex-direction: column;
        align-items: stretch;
        min-height: 500px;
    }
    .demo-blog .mdl-card__title {
        padding: 16px;
        flex-grow: 1;
    }
    .demo-blog .mdl-card__media {
        box-sizing: border-box;
        background-size: cover;
        padding: 24px;
        display: flex;
        flex-grow: 1;
        flex-direction: row;
        align-items: flex-end;
        cursor: pointer;
        background-color: rgb(96, 125, 139);
    }
    .demo-blog .mdl-card__media a,
    .demo-blog .mdl-card__title a {
        color: inherit;
    }
    .demo-blog .mdl-card__supporting-text {
        width: 100%;
        padding: 16px;
        min-height: 64px;
        display: flex;
        align-items: center;
    }
    .demo-blog .mdl-card__supporting-text strong {
        font-weight: 800;
    }
    .demo-blog .mdl-card__media ~ .mdl-card__supporting-text {
        min-height: 64px;
    }
    .demo-blog .mdl-card__supporting-text:not(:last-child) {
        box-sizing: border-box;
        min-height: 76px;
    }
    .demo-blog:not(.demo-blog--blogpost) .mdl-card__supporting-text ~ .mdl-card__supporting-text {
        border-top: 1px solid rgba(0,0,0,0.1);
    }

    .demo-blog .mdl-card__actions:first-child {
        margin-left: 0;
    }
    .demo-blog .meta {
        box-sizing: border-box;
        padding: 16px;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: flex-start;
        height: auto;
    }
    .demo-blog .meta > .meta__favorites{
        flex-direction: row;
        margin: 0 8px;
        font-size: 13px;
        font-weight: 500;
    }
    .demo-blog .meta > .meta__favorites .material-icons {
        font-size: 2em;
        cursor: pointer;
        margin-left: 12px;
    }
    .demo-blog .mdl-card .meta.meta--fill {
        justify-content: space-between;
    }
    .demo-blog .meta > *:first-child {
        margin-right: 16px;
    }
    .demo-blog .meta > * {
        display: flex;
        flex-direction: column;
    }
    .demo-blog.is-small-screen .demo-blog__posts > .mdl-card.coffee-pic {
        order: 0;
    }
    .demo-blog.is-small-screen .demo-blog__posts > .mdl-card.something-else {
        order: -1;
    }
    .demo-blog .coffee-pic .mdl-card__media {
        background-image: url('images/coffee.jpg');
    }
    .demo-blog .something-else .mdl-card__media {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .demo-blog .something-else > button {
        position: absolute;
        top: 0;
        right: 28px;
        transform: translate(0px, -28px);
    }
    .demo-blog .something-else .mdl-card__media {
        font-size: 13px;
        font-weight: 500;
        border-top-left-radius: 2px;
        border-top-right-radius: 2px;
    }
    .demo-blog .something-else .mdl-card__media img {
        width: 64px;
        height: 64px;
        margin-bottom: 10px;
    }
    .demo-blog .something-else .mdl-card__supporting-text {
        background-color: #F5F5F5;
        border-bottom-left-radius: 2px;
        border-bottom-right-radius: 2px;
    }
    .demo-blog .on-the-road-again .mdl-card__media {
        background-image: url('images/road.jpg');
    }
    .demo-blog .shopping .mdl-card__media {
        background-image: url('images/shopping.jpg');
    }
    .demo-blog .demo-blog__posts > .demo-nav {
        margin: 12px 15px;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        align-items: center;
        color: white;
        font-weight: 500;
    }
    .demo-blog .demo-blog__posts > .demo-nav > .demo-nav__button {
        color: white;
        text-decoration: none;
    }
    .demo-blog .demo-blog__posts > .demo-nav .mdl-button {
        color: rgba(0,0,0,0.54);
        background-color: white;
    }
    .demo-blog .demo-blog__posts > .demo-nav > .demo-nav__button:first-child .mdl-button {
        margin-right: 16px;
    }
    .demo-blog .demo-blog__posts > .demo-nav > .demo-nav__button:last-child .mdl-button {
        margin-left: 16px;
    }
    .demo-blog .mdl-card > a {
        color: inherit;
        text-decoration: none;
        font-weight: inherit;
    }
    .demo-blog .mdl-card h3 {
        margin: 0;
    }
    .demo-blog .mdl-card h3 a {
        text-decoration: none;
    }
    .demo-blog .mdl-card h3.quote:before, .demo-blog .mdl-card h3.quote:after {
        display: block;
        font-size: 3em;
        margin-top: 0.5em;
    }
    .demo-blog .mdl-card h3.quote:before {
        content: '“';
    }
    .demo-blog .mdl-card h3.quote:after {
        content: '”';
    }
    .demo-blog--blogpost .custom-header {
        background-color: transparent;
    }
    .demo-blog--blogpost .demo-blog__posts > .mdl-card .mdl-card__media {
        min-height: 300px;
    }
    .demo-blog--blogpost .comments {
        background-color: #EEE;
    }
    .demo-blog--blogpost .meta > * {
        align-items: center;
    }
    .demo-blog--blogpost .meta + .mdl-card__supporting-text {
        border: 0;
        display: flex;
        flex-direction: column;
    }
    .demo-blog--blogpost .meta + .mdl-card__supporting-text p {
        max-width: 512px;
        margin: 16px auto;
        font-size: 16px;
        line-height: 28px;
        text-align: justify;
    }

    .demo-blog--blogpost .comments {
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: stretch;
        padding: 32px;
        box-sizing: border-box;
    }
    .demo-blog--blogpost .comments > form {
        display: flex;
        flex-direction: row;
        margin-bottom: 16px;
    }
    .demo-blog--blogpost .comments > form .mdl-textfield {
        flex-grow: 1;
        margin-right: 16px;
        color: rgb(97, 97, 97);
    }
    /* Workaround for Firefox.
     * User agent stylesheet kept overwriting the font in FF only.
     */
    .demo-blog--blogpost .comments > form .mdl-textfield .mdl-textfield__input {
        font-family: 'Roboto', 'Helvetica', sans-serif;
    }
    .demo-blog--blogpost .comments > form .mdl-textfield input,
    .demo-blog--blogpost .comments > form .mdl-textfield textarea {
        resize: none;
    }
    .demo-blog--blogpost .comments > form button {
        margin-top: 20px;
        background-color: rgba(0, 0, 0, 0.24);
        color: white;
    }
    .demo-blog--blogpost .comments .comment {
        display: flex;
        flex-direction: column;
        align-items: stretch;
    }
    .demo-blog--blogpost .comments .comment > .comment__header {
        display: flex;
        flex-direction: row;
        align-items: center;
        margin-bottom: 16px;
    }
    .demo-blog--blogpost .comments .comment > .comment__header > .comment__avatar {
        width: 48px;
        height: 48px;
        border-radius: 24px;
        margin-right: 16px;
    }
    .demo-blog--blogpost .comments .comment > .comment__header > .comment__author {
        flex-grow: 1;
        display: flex;
        flex-direction: column;
    }
    .demo-blog--blogpost .comments .comment > .comment__text {
        line-height: 1.5em;
    }
    .demo-blog--blogpost .comments .comment > .comment__actions {
        display: flex;
        flex-direction: row;
        justify-content: flex-start;
        align-items: center;
        font-size: 0.8em;
        margin-top: 16px;
    }
    .demo-blog--blogpost .comments .comment > .comment__actions button {
        margin-right: 16px;
        color: rgba(0, 0, 0, 0.24);
    }
    .demo-blog--blogpost .comments .comment > .comment__answers {
        padding-top: 32px;
        padding-left: 48px;
    }

    .demo-blog--blogpost .demo-back {
        position: absolute;
        top: 16px;
        left: 16px;
        color: white;
        z-index: 9999;
    }
    .demo-blog .section-spacer {
        flex-grow: 1;
    }
    .demo-blog .something-else {
        overflow: visible;
        z-index: 10;
    }
    .demo-blog .amazing .mdl-card__title {
        background-color: #263238;
    }
    .demo-blog .minilogo {
        width: 44px;
        height: 44px;
        background-image: url('images/avatar.png');
        background-position: center;
        background-repeat: no-repeat;
        background-size: 50%;
        border-radius: 22px;
        background-color: #F5F5F5;
    }

    /* Fixes for IE 10 */
    .mdl-grid {
        display: flex !important;
    }

    .social-btn {
        background-position: center;
        background-size: contain;
        background-repeat: no-repeat;
        background-color: transparent;
        margin: 0 16px;
        width: 24px;
        height: 24px;
        cursor: pointer;
        opacity: 0.46;
        border-radius: 2px;
    }
    .social-btn__twitter {
        background-image: url('https://www.gstatic.com/images/icons/material/system/2x/post_twitter_black_24dp.png');
    }
    .social-btn__blogger {
        background-image: url('https://www.gstatic.com/images/icons/material/system/2x/post_facebook_black_24dp.png');
    }
    .social-btn__gplus {
        background-image: url('https://www.gstatic.com/images/icons/material/system/2x/post_gplus_black_24dp.png');
    }
    .social-btn__share {
        color: rgba(0, 0, 0, 0.54);
        background: transparent;
    }

    .demo-blog .mdl-mini-footer {
        margin-top: 80px;
        height: 120px;
        padding: 40px;
        align-items: center;
        background-color: white;
        box-sizing: border-box;
    }

    $color: (
    text: rgba(0,0,0,.7),
    text--medium: #727272,
    text--light: #B6B6B6,
    line: #e0e0e0,
    primary: #03A9F4,
    primary--light: #B3E5FC,
    primary--dark: #0288d1,
    accent: #ff5722,
    nav-background: #37474F,
    nav-background--child: darken(#37474F, 3%),
    nav-background--hover: #455A64,
    nav-color: transparentize(#fff, .3),
    nav-color--hover: #fff,
    nav-header-background: darken(#37474F, 5%),
    nav-header-color: #fff,
    nav-line: #455A64
    );

    html, body {
        font-family: 'Roboto', 'Helvetica', sans-serif;
    }

    .l-split {
        display: flex;
        justify-content: space-between;

    div {
    &:nth-child(2) {
         font-size: 12px;
         color: transparentize(map-get($color, 'nav-color'), .3);
     }
    }
    }

    // ┌──────────────────────────────────┐
    //   LAYOUT AND HEADER
    // └──────────────────────────────────┘

       .mdl-layout-title__meta {
           display: block;
           font-size: 12px;
           line-height: 1.6em;

    @media (min-width: 1024px) {
        display: none;
    }
    }

    .mdl-layout__header {
        color: map-get($color, 'nav-header-color');
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;

    .mdl-layout__header-row {
        padding: 0 16px 0 60px;
    }

    .mdl-layout__drawer-button {
        color: map-get($color, 'nav-header-color');
    }

    .mdl-button--user {
        color: map-get($color, 'nav-header-color');
        text-transform: none;
        padding: 0 8px;

    span {
        display: none;
    }

    &::after {
         font-family: 'Material Icons';
         font-feature-settings: 'liga';
         font-size: 24px;
         content: 'expand_more';
         vertical-align: middle;
         line-height: 1em;
     }

    img {
        width: 30px;
        height: 30px;
        border-radius: 50%;
        margin: 0 -.2em 0 .2em;
        vertical-align: middle;
    }
    }

    @media (min-width: 600px) {
        .mdl-button--user span {
            display: inline;
        }
    }
    }

    .mdl-layout__tab {
        color: transparentize(map-get($color, 'nav-header-color'), .3);
        transition: color 150ms ease-in-out;

    &:hover,
    &:focus,
     .mdl-layout.is-upgraded &.is-active {
                                  color: map-get($color, 'nav-header-color');
                              }
    }

    .mdl-menu .mdl-menu__item {
        display: flex;
        align-items: center;
    }

    .mdl-menu__item--flex {
        height: auto;
        line-height: 1.4;
        padding: 8px 16px
    }

    .mdl-menu__link {
        display: flex;
        flex-direction: row;
        align-items: center;
        text-decoration: none;
        color: map-get($color, 'text');
        font-weight: 400;
        -webkit-font-smoothing: subpixel-antialiased;
        -moz-osx-font-smoothing: auto;

    i {
        margin-right: 16px;
    }
    }

    .md-menu__divider {
        border-top: 1px solid map-get($color, 'line');
        margin-top: 8px;
    }

    .mdl-layout__tab-bar {
    @media (min-width: 1034px) {
        padding-left: 40px;
    }
    }

    // hide navigation icons
       .mdl-layout__tab-bar-button {
           color: map-get($color, 'nav-color');
           display: none;
       }

    .mdl-layout__section {
        padding: 0 16px;

    @media (min-width: 1034px) {
        padding: 0 40px;
    }
    }

    // ┌──────────────────────────────────┐
    //   DRAWER
    // └──────────────────────────────────┘

       .mdl-navheader {
           background: map-get($color, 'nav-header-background');
           display: flex;
           flex-direction: column;
           justify-content: flex-end;
           z-index: 2;
           text-align: center;

    .mdl-navheader__meta {
        display: block;
        font-size: 12px;
    }
    }

    .mdl-navheader__brand {
        padding: 12px 16px;
        background: map-get($color, 'nav-background');
        text-align: center;

    img {
        vertical-align: middle;
        width: auto;
        height: 24px;
        margin: 0 auto;
    }
    }

    .m-navheader__user {
        padding: 16px;

    img {
        display: inline-block;
        width: 70px;
        height: 70px;
        border-radius: 50%;
        margin: 0 0 8px;
    }

    @media (min-width: 1034px) {
        text-align: center;
    }
    }

    .mdl-layout__drawer {
        background: map-get($color, 'nav-background');
        color: map-get($color, 'nav-color');
        border: none;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;

    // iOS Safari specific workaround
       .mdl-menu__container {
           z-index: -1;
       }

    .mdl-navigation {
        flex-grow: 1;
        padding-top: 0;
        z-index: -2;
    }
    }

    .mdl-navigation__list {
        list-style: none;
        margin: 0;
        padding: 0;

    .has-subnav {
    > .mdl-navigation__link::after {
          font-family: 'Material Icons';
          font-feature-settings: 'liga';
          font-size: 24px;
          content: 'expand_more';

          display: flex;
          margin-left: auto;
      }
    }

    .mdl-navigation__list {
        display: none;
        background: map-get($color, 'nav-background--child');
        border-top: 1px solid map-get($color, 'nav-line');
        border-bottom: 1px solid map-get($color, 'nav-line');
        padding: 6px 0;

    i {
        font-size: 20px;
        line-height: 1em;
        vertical-align: middle;
        margin: 4px 19px 0 2px;
    }
    }

    .is-opened .mdl-navigation__list {
        display: block;
    }
    }

    .mdl-navigation__link {
    .mdl-layout__drawer .mdl-navigation & {
        display: flex !important;
        flex-direction: row;
    //align-items: center;
        align-items: stretch;
        padding: 8px 8px 8px 16px;
        color: map-get($color, 'nav-color');

    &:hover,
    &:focus {
     //background: map-get($color, 'nav-background--hover');
         background: none;
         color: map-get($color, 'nav-color--hover');
     }

    .has-subnav &.is-active {
                     background: map-get($color, 'nav-background--hover');
                     color: map-get($color, 'nav-color--hover');

    &:after {
         content: 'expand_less';
     }
    }
    }

    i {
        vertical-align: middle;
        margin-right: 16px;
    }
    }

    .mdl-navigation__divider {
        margin-top: 8px;
        padding-top: 8px;
        border-top: 1px solid map-get($color, 'nav-line');
    }

    .mdl-navigation__list .is-opened {
    > .mdl-navigation__link {
          background: map-get($color, 'nav-hover');
      }

    + .mdl-navigation__divider {
          margint-top: 0;
          padding-top: 0;
          border-top: 0;
      }
    }

    .mdl-navigation__footer {
        padding: 16px;

    .mdl-layout__drawer .mdl-navigation & {
    .mdl-navigation__link {
        padding: 8px 0;
    }
    }
    }

    .m-linechart {
        display: flex;
        flex-direction: row;
        align-items: center;
        margin: 8px 0 16px;
    }

    .m-linechart__lower,
    .m-linechart__upper {
        flex: 1;
        height: 5px;
    }

    .m-linechart__lower {
        background: map-get($color, 'primary');
    }

    .m-linechart__dot {
        display: none;
        flex: 0 0 auto;
        width: 16px;
        height: 16px;
        border-radius: 50%;
        background: map-get($color, 'primary');
    }

    .m-linechart__upper {
        background: map-get($color, 'text');
    }

    .m-button--clean {
        display: block;
        border: 1px solid map-get($color, 'nav-color');
        color: map-get($color, 'nav-color');
        text-decoration: none;
        text-align: center;
        line-height: 2.4em;
        border-radius: 2px;
        background: transparent;
        transition: background;

    &:hover {
         background: transparentize(map-get($color, 'nav-color'), .6);
     }
    }

    /*layout */

    .mdl-layout__content {
        background: #EEE;
    }

    .demo-layout-waterfall .mdl-layout__header-row .mdl-navigation__link:last-of-type {
        padding-right: 0;
    }

    .blog-grid {
        max-width: 900px;
        padding: 0;
        margin: 0 auto;
        width: 100%;
        display: flex;
        flex-shrink: 0;
    }


    /*CARDS --------------- */


    /* Event card */

    .demo-card-event.mdl-card {
        background: #3E4EB8;
    }

    .demo-card-event > .mdl-card__actions {
        border-color: rgba(255, 255, 255, 0.2);
    }

    .demo-card-event > .mdl-card__title {
        align-items: flex-start;
    }

    .demo-card-event > .mdl-card__title > h4 {
        margin-top: 0;
    }

    .demo-card-event > .mdl-card__actions {
        display: flex;
        box-sizing: border-box;
        align-items: center;
    }

    .demo-card-event > .mdl-card__actions > .material-icons {
        padding-right: 10px;
    }

    .demo-card-event > .mdl-card__title,
    .demo-card-event > .mdl-card__actions,
    .demo-card-event > .mdl-card__actions > .mdl-button {
        color: #fff;
    }



    /* TODO: Hover and Focus state.
   *       Fix position of mobile search button.
   */
    .mdh-expandable-search {
        margin: 0 50px;
        align-items: center;
        justify-content: center;
    }

    .mdh-expandable-search form {
        max-width: 600px;
    }

    .mdh-expandable-search,
    .mdh-expandable-search form,
    .mdh-expandable-search input {
        /* Cross browser flex-grow */
        -webkit-box-flex: 1;
        -webkit-flex-grow: 1;
        -ms-flex-positive: 1;
        flex-grow: 1;
    }

    .mdh-expandable-search,
    .mdh-expandable-search form {
        /* Cross browser inline-flex */
        display: -webkit-inline-box;
        display: -webkit-inline-flex;
        display: -moz-inline-box;
        display: -ms-inline-flexbox;
        display: inline-flex;
    }

    /* Position search icon */
    .mdh-expandable-search .material-icons {
        position: relative;
        right: -40px;
        margin-left: -24px; /* Remove the blank space left behind by the icon being relatively positioned */
    }

    .mdh-expandable-search input {
        outline: none;
        border: none;
        font-size: 16px;
        color: #FFFFFF;
        background-color: #78909C;
        padding: 0px 35px 0px 70px;
        height: 40px;
        line-height: 40px; /* TODO: This was recommended for cross browser compatability of input height, check if its actually needed in modern browsers */

        border-radius: 5px 5px 5px 5px;
        -moz-border-radius: 5px 5px 5px 5px;
        -webkit-border-radius: 5px 5px 5px 5px;
    }

    .mdh-expandable-search input::-webkit-input-placeholder { /* WebKit browsers */
        color:    #FFFFFF;
    }
    .mdh-expandable-search input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
        color:    #FFFFFF;
        opacity:  1; /* Firefox gives the placeholder a reduced opacity so we have to increase it */
    }
    .mdh-expandable-search input::-moz-placeholder { /* Mozilla Firefox 19+ */
        color:    #FFFFFF;
        opacity:  1; /* Firefox gives the placeholder a reduced opacity so we have to increase it */
    }
    .mdh-expandable-search input:-ms-input-placeholder { /* Internet Explorer 10+ */
        color:    #FFFFFF;
    }


    /* Bug fix: https://github.com/google/material-design-lite/issues/1078
     * To much padding on the left of header when the menu button is hidden */
    @media screen and (min-width: 851px) {
        .mdl-layout__header-row {
            padding: 0 40px 0 40px;
        }
    }

    /* Bug fix for badges being in the wrong location */
    .mdl-badge[data-badge]:after {
        right: -7px;
        top: -8px;
    }

    .mdl-card__actions {
        display: flex;
        box-sizing:border-box;
        align-items: center;
    }
    .mdl-card__actions > .mdl-button--icon {
        margin-right: 3px;
        margin-left: 3px;
    }
    .demo-blog--blogpost .comments .comment {
        display: flex;
        flex-direction: column;
        align-items: stretch;
        border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        margin-top: 30px;
    }

</style>