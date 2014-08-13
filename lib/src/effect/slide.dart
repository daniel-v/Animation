/*!
 * CompatibleAnimation
 *
 * Copyright (C) 2014, Daniel V
 * Licensed under the MIT License.
 * http://www.opensource.org/licenses/mit-license.php
 */

part of effect;

CompatibleAnimation slideOut(Element element, {String direction: 'right', duration: 1000, Easing easing}) {
  var wrapper = _createWrapper(element);
  wrapper.style
    ..overflow = 'hidden'
    ..width = '${element.clientWidth}px'
    ..height = '${element.clientHeight}px'
    ..position = 'relative';

  return animate(element, properties: {'left': element.clientWidth});
}

CompatibleAnimation slideIn(Element element, {String direction: 'right', duration: 1000, Easing easing}) {
  var wrapper = _createWrapper(element);
  wrapper.style
    ..overflow = 'hidden'
    ..width = '${element.clientWidth}px'
    ..height = '${element.clientHeight}px'
    ..position = 'relative';

  element.style.left = '${element.clientWidth}px';

  return animate(element, properties: {'left': 0});
}

CompatibleAnimation fadeOut(Element element, {duration: 500, Easing easing}) {
  return animate(element, properties: {'opacity': 0}, duration: duration, easing: easing);
}

CompatibleAnimation fadeIn(Element element, {duration: 500, Easing easing}) {
  element.style.opacity = '0';
  return animate(element, properties: {'opacity': 1}, duration: duration, easing: easing);
}