package ar.utn.dds.copiame.revision_documento;

import ar.utn.dds.copiame.ParDocumentos;

public class RevisionDocumentoManual extends RevisionDocumento {

	private Revisor revisor;
	
	public RevisionDocumentoManual(ParDocumentos par, Revisor revisor) {
		super(par);
		this.revisor = revisor;
	}

	public Revisor getRevisor() {
		return revisor;
	}

	public void setRevisor(Revisor revisor) {
		this.revisor = revisor;
	}
	
	
	
}
