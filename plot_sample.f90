program plot_sample
  use plot
  implicit none

  integer, parameter:: n = 10
  integer, parameter:: iunit = 10
  double precision, parameter:: pi = 3.1415926535

  integer:: i
  double precision:: rand, y

  open(iunit, file="./plot.dat", status="unknown")

  do i=1, n
    call random_number(rand)
    rand = 2*rand - 1
    y = sin(pi*rand)

    write(iunit, *) rand, ", ", y
  end do

  close(iunit)

  call plot_options(file_name="plot", title="plot sapmle", xlabel="x", ylabel="y")
  call plot_graph(file_name="plot", dat_file_name="plot")
  call plot_graph(file_name="plot", dat_file_name="plot", option="with lines")
  call plot_open("plot")

end program plot_sample
