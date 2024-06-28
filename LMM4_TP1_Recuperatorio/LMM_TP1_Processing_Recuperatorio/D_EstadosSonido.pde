class EstadosSonido {

  EstadosSonido() {
  }

  void estado0() {
    habla0.amp(0.45);
    habla0.rate(1);

    habla1.amp(0.0);
    habla1.rate(1.0);

    habla2.amp(0.0);
    habla2.rate(1.0);

    habla3.amp(0.0);
    habla3.rate(1.0);

    notificacion1.amp(0.08);
    notificacion1.rate(1);

    notificacion2.amp(0);
    notificacion2.rate(1);

    notificacion3.amp(0);
    notificacion3.rate(1);

    interferencia.amp(0.0);
    cortocircuito.amp(0.0);
  }

  void estado1() {
    habla0.amp(0.35);
    habla0.rate(1);

    habla1.amp(0.0);
    habla1.rate(1.0);

    habla2.amp(0.0);
    habla2.rate(1.0);

    habla3.amp(0.0);
    habla3.rate(1.0);

    notificacion1.amp(0.18);
    notificacion1.rate(1);

    interferencia.amp(0.0);
    cortocircuito.amp(0.0);
  }

  void estado2() {
    habla0.amp(0);
    habla2.rate(1.0);

    habla1.amp(0.3);
    habla1.rate(1);

    habla2.amp(0.0);
    habla2.rate(1.0);

    habla3.amp(0.0);
    habla3.rate(1.0);

    notificacion1.amp(0.2);
    notificacion1.rate(1.2);

    interferencia.amp(0.07);
    cortocircuito.amp(0.02);
  }

  void estado3() {
    habla1.amp(0.3);
    habla1.rate(1);

    notificacion1.amp(0);
    notificacion1.rate(1);

    notificacion2.amp(0.2);
    notificacion2.rate(1.2);

    notificacion3.amp(0);
    notificacion3.rate(1);

    interferencia.amp(0.094);
    cortocircuito.amp(0.025);
  }

  void estado4() {
    habla1.amp(0);

    habla2.amp(0.3);
    habla2.rate(1.3);

    notificacion1.amp(0);
    notificacion1.rate(1);

    notificacion2.amp(0.28);
    notificacion2.rate(1.25);

    interferencia.amp(0.13);
    cortocircuito.amp(0.05);
  }

  void estado5() {
    habla2.amp(0.3);
    habla2.rate(1.4);

    habla3.amp(0.0);
    habla3.rate(1.0);

    notificacion1.amp(0);
    notificacion1.rate(1);

    notificacion2.amp(0);
    notificacion2.rate(1);

    notificacion3.amp(0.35);
    notificacion3.rate(1.8);

    interferencia.amp(0.25);
    cortocircuito.amp(0.18);
  }

  void estado6() {
    habla3.amp(0.3);
    habla3.rate(1.5);

    notificacion3.amp(0.43);
    notificacion3.rate(1.8);

    interferencia.amp(0.32);
    cortocircuito.amp(0.33);
  }
}
