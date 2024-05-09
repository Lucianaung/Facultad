class EstadosSonido {

  EstadosSonido() {
  }

  void estado0() {
    habla.amp(0.45);
    notificacion.amp(0.07);
    interferencia.amp(0.0);
    cortocircuito.amp(0.0);
  }

  void estado1() {
    habla.amp(0.35);
    notificacion.amp(0.18);
    interferencia.amp(0.0);
    cortocircuito.amp(0.0);
  }

  void estado2() {
    habla.amp(0.3);
    notificacion.amp(0.2);
    notificacion.rate(1.2);
    interferencia.amp(0.07);
    cortocircuito.amp(0.02);
  }

  void estado3() {
    habla.amp(0.3);
    habla.rate(1.2);
    notificacion.amp(0.255);
    notificacion.rate(1.4);
    interferencia.amp(0.094);
    cortocircuito.amp(0.025);
  }

  void estado4() {
    habla.amp(0.3); //reemplazar por robot1
    habla.rate(1.3);
    notificacion.amp(0.3);
    notificacion.rate(1.6);
    interferencia.amp(0.13);
    cortocircuito.amp(0.05);
  }

  void estado5() {
    habla.amp(0.3); //reemplazar por robot2
    habla.rate(1.4);
    notificacion.amp(0.35);
    notificacion.rate(1.8);
    interferencia.amp(0.25);
    cortocircuito.amp(0.18);
  }

  void estado6() {
    habla.amp(0.3); //reemplazar por robot2
    habla.rate(1.5);
    notificacion.amp(0.43);
    notificacion.rate(2);
    interferencia.amp(0.32);
    cortocircuito.amp(0.33);
  }
}
