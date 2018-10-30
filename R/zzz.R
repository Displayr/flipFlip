# This is a hook function that is called when a package is attached
# (i.e. \code{library} or \code{require} is called).
# See \code{?.onAttach} for more details

.onAttach <- function(...)
{
    attach_flip()
}
