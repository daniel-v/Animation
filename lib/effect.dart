/*!
 * CompatibleAnimation
 *
 * Copyright (C) 2014, Daniel V
 * Licensed under the MIT License.
 * http://www.opensource.org/licenses/mit-license.php
 */

library effect;

import 'dart:html';

import 'compatible_animation.dart';

part 'src/effect/slide.dart';

Element _createWrapper(Element element) {
  // Return parent if already wrapped.
  if (element.parent != null && element.parent.classes.contains('animation-effect-wrapper')) return element.parent;

  var wrapper = new DivElement()
    ..classes.add('animation-effect-wrapper');

  wrapper.style
      ..background = 'transparent'
      ..border = 'none'
      ..margin = '0'
      ..padding = '0';

  var parent = element.parent;

  wrapper.children.add(element);

  parent.children.add(wrapper);

  return wrapper;
}