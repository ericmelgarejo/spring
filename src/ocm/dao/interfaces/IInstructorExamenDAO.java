/**
 * 
 */
package ocm.dao.interfaces;

import java.util.ArrayList;

import ocm.vo.EventoVO;

/**
 * @author Eric
 *
 */
public interface IInstructorExamenDAO {
	public ArrayList<EventoVO> consultaEventosInstructor(EventoVO evento) throws Exception; 
}
