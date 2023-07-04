module mod_prec
use ISO_FORTRAN_ENV

implicit none

integer(kind=int8), parameter :: is = int8, id = int16, il = int32 , ix = int64
integer(kind=int8), parameter :: rs = real32, rd = real64, rl = real128

integer(kind=int8), parameter :: wp = rd

!Parametros de la Funcion
integer(il), parameter   :: n = 2
real(kind=wp), parameter :: k1 = 1.0_wp
real(kind=wp), parameter :: k2 = 0.002_wp
real(kind=wp), parameter :: k3 = 1.0_wp

!Parametros del problema de valor inicial
real(wp)                                :: a = 0.0_wp
real(wp)                                :: b = 60.0_wp
real(wp)                                :: h = 0.01_wp

end module mod_prec
