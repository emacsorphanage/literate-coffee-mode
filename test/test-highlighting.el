;;; test-highlighting.el --- highlighting test for literate-coffee-mode

;; Copyright (C) 2014 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'ert)
(require 'literate-coffee-mode)

(ert-deftest highlighting-slash ()
  "Regression test for #5"
  (with-litcoffee-temp-buffer
    "    console.log '/', foo"
    (forward-cursor-on "foo")
    (should (not (eq (face-at-point) 'font-lock-string-face)))))

;;; test-highlighting.el ends here
