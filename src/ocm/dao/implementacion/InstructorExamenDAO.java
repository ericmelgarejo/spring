/**
 * 
 */
package ocm.dao.implementacion;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import ocm.dao.interfaces.IInstructorExamenDAO;
import ocm.vo.EventoVO;
import ocm.vo.InscripcionVO;

/**
 * @author Eric
 *
 */
@Repository
public class InstructorExamenDAO implements IInstructorExamenDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public ArrayList<EventoVO> consultaEventosInstructor(EventoVO evento) throws Exception {
		// TODO Auto-generated method stub
		ArrayList<EventoVO> listaPaises = new ArrayList<EventoVO>();
		String sql = "select * from eventos";
		
		try {
			listaPaises = (ArrayList<EventoVO>) jdbcTemplate.query(sql, new RowMapper<EventoVO>() {
				
				public EventoVO mapRow(final ResultSet result,
						final int rowNum) throws SQLException{
						EventoVO evento = new EventoVO();
						evento.setId_evento(result.getInt("id"));
						evento.setNombre(result.getString("nombre"));
												
						return evento;
				}
			});
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}
		return listaPaises;
	}

	@Override
	public ArrayList<InscripcionVO> consultaInscritosEventoInstructor(InscripcionVO inscripcion) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
