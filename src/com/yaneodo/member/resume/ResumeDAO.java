package com.yaneodo.member.resume;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.yaneodo.DBUtil;
import com.yaneodo.jobnotice.JobNoticeDTO;
import com.yaneodo.member.MemberDTO;


public class ResumeDAO {
	
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ResumeDAO() {
		//DB 연결
		conn = DBUtil.open();
	}
	
	
	public void close() {
		try {
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	
	
	// 회원번호에 해당하는 이력서목록 반환
	public ArrayList<ResumeDTO> list(String seq) {
	
		try {
			
			String sql = String.format("select * from tblResume where customerSeq = ?");

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, seq);
			rs = pstat.executeQuery();

			//ResultSet -> ArrayList<DTO>
			ArrayList<ResumeDTO> list = new ArrayList<ResumeDTO>();

			while (rs.next()) {
				
				ResumeDTO dto = new ResumeDTO();
				
				dto.setResumeSeq(rs.getString("resumeSeq"));
				dto.setCustomerSeq(rs.getString("customerSeq"));
				dto.setWriteDate(rs.getString("writeDate"));
				dto.setEditDate(rs.getString("editDate"));
				dto.setOrgfileName(rs.getString("orgfileName"));
				dto.setFileName(rs.getString("fileName"));
				dto.setIntroduce(rs.getString("introduce"));
				
				
				list.add(dto);
			
			} 
			
			return list;
			
		
		} catch (Exception e) {
			System.out.println(e);
		}

		return null;
	}

	/**
	 * Company/volunteer/view 서블릿에서 이력서 경력정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<ExperienceDTO> getExperienceList(String rseq) {
		
		try {
			
			String sql = "select * from tblExperience where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<ExperienceDTO> list = new ArrayList<ExperienceDTO>();
			
			while (rs.next()) {

				ExperienceDTO dto = new ExperienceDTO();
				
				dto.setExperienceseq(rs.getString("experienceseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setCompany(rs.getString("company"));
				dto.setField(rs.getString("field"));
				dto.setJob(rs.getString("job"));
				dto.setStartdate(rs.getString("startdate").substring(0,11));
				dto.setEnddate(rs.getString("enddate").substring(0,11));
			
				list.add(dto);
			
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * Company/volunteer/view 서블릿에서 이력서 학력정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<EducationDTO> getEducationList(String rseq) {
		
		try {
			
			String sql = "select * from tblEducation where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<EducationDTO> list = new ArrayList<EducationDTO>();
			
			while (rs.next()) {

				EducationDTO dto = new EducationDTO();
				
				dto.setEducationseq(rs.getString("educationseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setSchooltype(rs.getString("schooltype"));
				dto.setSchoolname(rs.getString("schoolname"));
				dto.setMajor(rs.getString("major"));
				dto.setStartdate(rs.getString("startdate").substring(0,11));
				dto.setEnddate(rs.getString("enddate").substring(0,11));
				dto.setState(rs.getString("state"));
				
			
				list.add(dto);
			
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * Company/volunteer/view 서블릿에서 이력서 자격증 정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<CertificateDTO> getCertificateList(String rseq) {
		try {
			
			String sql = "select * from tblCertificate where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<CertificateDTO> list = new ArrayList<CertificateDTO>();
			
			while (rs.next()) {

				CertificateDTO dto = new CertificateDTO();
				
				dto.setCertificateseq(rs.getString("certificateseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setType(rs.getString("type"));
				dto.setGrade(rs.getString("grade"));
				dto.setGetdate(rs.getString("getdate").substring(0, 11));
				dto.setAgency(rs.getString("agency"));

				list.add(dto);
			
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}


	/**
	 * Company/volunteer/view 서블릿에서 이력서의 외국어 정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<LanguageDTO> getLanguageList(String rseq) {
		try {
			
			String sql = "select * from tblLanguage where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<LanguageDTO> list = new ArrayList<LanguageDTO>();
			
			while (rs.next()) {

				LanguageDTO dto = new LanguageDTO();
				
				dto.setLanguageseq(rs.getString("languageseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setLanguagetype(rs.getString("languagetype"));
				dto.setGrade(rs.getString("grade"));


				list.add(dto);	
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * Company/volunteer/view 서블릿에서 이력서의 교육 및 대외활동 정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<TrainingDTO> getTrainingList(String rseq) {
		try {
			
			String sql = "select * from tblTraining where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<TrainingDTO> list = new ArrayList<TrainingDTO>();
			
			while (rs.next()) {

				TrainingDTO dto = new TrainingDTO();
				
				dto.setTrainingseq(rs.getString("trainingseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setType(rs.getString("type"));
				dto.setName(rs.getString("name"));
				dto.setStartDate(rs.getString("startdate").substring(0,11));
				dto.setEnddate(rs.getString("enddate").substring(0,11));
				dto.setAgency(rs.getString("agency"));
				

				list.add(dto);	
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * Company/volunteer/view 서블릿에서 이력서의 해외연수 정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<AbroadDTO> getAbroadList(String rseq) {
		try {
			
			String sql = "select * from tblAbroad where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<AbroadDTO> list = new ArrayList<AbroadDTO>();
			
			while (rs.next()) {

				AbroadDTO dto = new AbroadDTO();
				
				dto.setAbroadseq(rs.getString("abroadseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setCountry(rs.getString("country"));
				dto.setType(rs.getString("type"));
				dto.setStartDate(rs.getString("startdate").substring(0,11));
				dto.setEndDate(rs.getString("enddate").substring(0, 11));
				dto.setNote(rs.getString("note"));
	
				list.add(dto);	
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * Company/volunteer/view 서블릿에서 이력서의 수상내역 정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<AwardDTO> getAwardList(String rseq) {
		try {
			
			String sql = "select * from tblAward where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<AwardDTO> list = new ArrayList<AwardDTO>();
			
			while (rs.next()) {

				AwardDTO dto = new AwardDTO();
				
				dto.setAwardseq(rs.getString("awardseq"));
				dto.setResumeSeq(rs.getString("resumeseq"));
				dto.setAwardname(rs.getString("awardname"));
				dto.setGetdate(rs.getString("getdate").substring(0,11));
				dto.setAgency(rs.getString("agency"));
	
				list.add(dto);	
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * Company/volunteer/view 서블릿에서 이력서의 취업 우대사항 정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<PreferenceDTO> getPreferenceList(String rseq) {
		try {
			
			String sql = "select * from tblPreference where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<PreferenceDTO> list = new ArrayList<PreferenceDTO>();
			
			while (rs.next()) {

				PreferenceDTO dto = new PreferenceDTO();
				
				dto.setPreferenceseq(rs.getString("preferenceseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setType(rs.getString("type"));
				dto.setNote(rs.getString("note"));
	
				list.add(dto);	
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}

	/**
	 * Company/volunteer/view 서블릿에서 이력서의 포트폴리오 정보를 리턴받는다
	 * @param resq 이력서 번호
	 * @return
	 */
	public ArrayList<PortfolioDTO> getPortfolioList(String rseq) {
		try {
			
			String sql = "select * from tblPortfolio where resumeseq = ?";
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, rseq);
			
			rs = pstat.executeQuery();
			
			ArrayList<PortfolioDTO> list = new ArrayList<PortfolioDTO>();
			
			while (rs.next()) {

				PortfolioDTO dto = new PortfolioDTO();
				
				dto.setPortfolioseq(rs.getString("portfolioseq"));
				dto.setResumeseq(rs.getString("resumeseq"));
				dto.setPfile(rs.getString("pfile"));
				dto.setUrl(rs.getString("url"));
	
				list.add(dto);	
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return null;
	}


	
	
}
