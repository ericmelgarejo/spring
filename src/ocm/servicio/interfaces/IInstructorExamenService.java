/**
 * 
 */
package ocm.servicio.interfaces;

import java.util.ArrayList;

import ocm.vo.EventoVO;

/**
 * @author Eric
 *
 */
public interface IInstructorExamenService {
	public ArrayList<EventoVO> consultaEventosInstructor(EventoVO evento) throws Exception; 
	
}
