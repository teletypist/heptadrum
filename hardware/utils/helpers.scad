/**
 * Helper utilities
 */

$ex = 1.0;

module etranslate(trans) {
    translate([ for (i = trans) $ex*i]) children();
}

function hypot(x, y) = sqrt(x*x + y*y);
