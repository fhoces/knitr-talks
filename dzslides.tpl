<!DOCTYPE html>
<head>
<meta charset="utf-8">
$for(author-meta)$
  <meta name="author" content="$author-meta$" />
$endfor$
$if(date-meta)$
  <meta name="dcterms.date" content="$date-meta$" />
$endif$
  <title>$if(title-prefix)$$title-prefix$ - $endif$$if(pagetitle)$$pagetitle$$endif$</title>
$if(highlighting-css)$
  <style type="text/css">
$highlighting-css$
  </style>
$endif$
$if(css)$
$for(css)$
  <link rel="stylesheet" href="$css$" $if(html5)$$else$type="text/css" $endif$/>
$endfor$
$else$
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet'>
<style>
  html { background-color: black; }
  body { background-color: white; border-radius: 12px}
  /* A section is a slide. It's size is 800x600, and this will never change */
  section {
      font-family: 'Oswald', arial, serif;
      font-size: 20pt;
    }
  address, blockquote, dl, fieldset, form, h1, h2, h3, h4, h5, h6, hr, ol, p, pre, table, ul, dl { padding: 10px 20px 10px 20px; }
  h1, h2, h3 {
    text-align: center;
    margin: 10pt 10pt 20pt 10pt;
  }
  ul, ol {
    margin: 10px 10px 10px 50px;
  }
  section.titleslide h1 { margin-top: 200px; }
  h1.title { margin-top: 150px; }
  h1 { font-size: 180%; }
  h2 { font-size: 120%; }
  h3 { font-size: 100%; }
  q { quotes: "“" "”" "‘" "’"; }
  blockquote, q {
    display: block;
    width: 90%;
    height: 100%;
    background-color: black;
    color: white;
    padding: 50px;
  }

  /* Figures are displayed full-page, with the caption on
     top of the image/video */
  figure {
    background-color: black;
    text-align: center;
  }
  img {
    max-width: 100%;
  }
  figcaption {
    margin: 70px;
  }
  pre {
    max-width: 100%;
    max-height: 380px;
    overflow: auto;
  }
  footer {
    position: absolute;
    bottom: 0;
    width: 100%;
    padding: 40px;
    text-align: right;
    background-color: #F3F4F8;
    border-top: 1px solid #CCC;
  }

  /* Transition effect */
  /* Feel free to change the transition effect for original
     animations. See here:
     https://developer.mozilla.org/en/CSS/CSS_transitions
     How to use CSS3 Transitions: */
  section {
      -moz-transition: left 400ms linear 0s;
      -webkit-transition: left 400ms linear 0s;
      -ms-transition: left 400ms linear 0s;
      transition: left 400ms linear 0s;
  }

  /* Before */
  section { left: -150%; }
  /* Now */
  section[aria-selected] { left: 0; }
  /* After */
  section[aria-selected] ~ section { left: +150%; }

  /* Incremental elements */

  /* By default, visible */
  .incremental > * { opacity: 1; }

  /* The current item */
  .incremental > *[aria-selected] { color: red; opacity: 1; }

  /* The items to-be-selected */
  .incremental > *[aria-selected] ~ * { opacity: 0.2; }
</style>
$endif$
$if(math)$
  $math$
$endif$
$for(header-includes)$
  $header-includes$
$endfor$
</head>
<body>
$if(title)$
<section>
  <h1 class="title">$title$</h1>
$for(author)$
  <h2 class="author">$author$</h2>
$endfor$
  <h3 class="date">$date$</h3>
</section>
$endif$
$for(include-before)$
$include-before$
$endfor$
$body$
$for(include-after)$
$include-after$
$endfor$
$dzslides-core$
</body>
</html>
