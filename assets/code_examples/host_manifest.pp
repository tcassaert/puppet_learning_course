...
if $trusted['extensions']['pp_role'] {
  include "roles::${trusted['extensions']['pp_role']}"
} else {
  lookup('classes', Array[String], 'unique',
    ['roles::node']).include

}
...
