package ar.utn.dds.copiame.evaluador_copia;

import ar.utn.dds.copiame.ParDocumentos;
import ar.utn.dds.copiame.revision_documento.RevisionDocumento;

import java.util.List;

public class EvaluadorDeCopiaAutomatico implements EvaluadorDeCopia {

	@Override
	public void procesar(List<ParDocumentos> pares) {
		
		for (ParDocumentos parDocumentos : pares) {
			RevisionDocumento rd = new RevisionDocumento(parDocumentos);
			rd.setValorCopia(parDocumentos.distancia());
			parDocumentos.addRevision(rd);
		}

	}

}
