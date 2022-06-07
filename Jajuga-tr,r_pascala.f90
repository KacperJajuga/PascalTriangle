PROGRAM Jajuga_tr_pascala

    !Kacper Jajuga, kierunek: informatyka, rok I, semestr II

  INTEGER n, f, i, j, k
  
  OPEN(10,file='Jajuga-tr,r_pascala.txt')
  
  WRITE(*,*) 'Program wyslietla pierwsze 15 wierszy Trojkata Pascala'
  
  n = 14 !zmienna pomocna przy wyswietlaniu trojkata

  DO i = 0, n
    f=1 !poczatek trojkata
    DO j = 1, n - i
      WRITE(*,'(A)',advance='NO') '    ' !wyswietlanie pustych miejsc, ktore stworza trojkat
      WRITE(10,'(A)',advance='NO') '    '
    END DO !j
    DO k = 0, i
      WRITE(*,'(I8)',advance='NO') f !wyswietlanie kolejnych liczb w trojkacie
      WRITE(10,'(I8)',advance='NO') f
      f = f * (i - k)/(k + 1) !obliczanie kolejnych liczb w trojkacie
    END DO !k
    WRITE(*,*) !oddzielanie kolejnych wierszy
    wRITE(*,*) !niewymagana instrukcja, napisalem tylko dla celow estetycznych
    WRITE(10,*)
    WRITE(10,*)
  END DO !i
  
  WRITE(*,*) 'Aby zakonczyc program nacisnij ENTER'
  READ(*,*)
  CLOSE(10)
  STOP
END PROGRAM Jajuga_tr_pascala
