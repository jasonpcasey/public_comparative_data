# coding=utf-8

from sqlalchemy import Column, ForeignKey, Index, String, Integer, Date, Numeric

from .base import Base

class IpedsStudentAid(Base):
    """ map to a table name in db """
    __tablename__ = "ipeds_student_aid"

    """ create columns """
    id = Column(Integer, primary_key = True)
    unitid = Column(Integer, nullable = False)
    date_key = Column(Date, ForeignKey('date_dimension.date_key'), nullable = False)
    total_undergraduates = Column(Integer, nullable = False, default = 0)
    full_time_freshman_cohort = Column(Integer, nullable = False, default = 0)
    total_number = Column(Integer, nullable = False, default = 0)
    total_on_campus = Column(Integer, nullable = False, default = 0)
    total_off_campus_with_family = Column(Integer, nullable = False, default = 0)
    total_off_campus_not_with_family = Column(Integer, nullable = False, default = 0)
    total_living_arrangement_unknown = Column(Integer, nullable = False, default = 0)
    cohort_paying_indistrict = Column(Integer, nullable = False, default = 0)
    cohort_paying_instate = Column(Integer, nullable = False, default = 0)
    cohort_paying_outstate = Column(Integer, nullable = False, default = 0)
    cohort_paying_unknown = Column(Integer, nullable = False, default = 0)
    awarded_grant_aid = Column(Integer, nullable = False, default = 0)
    total_grant_aid = Column(Numeric, nullable = False, default = 0)
    awarded_federal_grants = Column(Integer, nullable = False, default = 0)
    total_federal_grants = Column(Numeric, nullable = False, default = 0)
    awarded_state_local_grants = Column(Integer, nullable = False, default = 0)
    total_state_local_grants = Column(Numeric, nullable = False, default = 0)
    awarded_institutional_grants = Column(Integer, nullable = False, default = 0)
    total_institutional_grants = Column(Numeric, nullable = False, default = 0)
    awarded_federal_student_loans = Column(Integer, nullable = False, default = 0)
    total_federal_student_loans = Column(Numeric, nullable = False, default = 0)
    awarded_other_student_loans = Column(Integer, nullable = False, default = 0)
    total_other_student_loans = Column(Numeric, nullable = False, default = 0)

    """ Unique index constraint """
    __table_args__ = (Index('idx_ipeds_student_aid_keys',
                            'unitid',
                            'date_key',
                            unique = True), )

    def __init__(self, unitid, date_key, total_undergraduates, full_time_freshman_cohort,
                 total_number, total_on_campus, total_off_campus_with_family, 
                 total_off_campus_not_with_family, total_living_arrangement_unknown,
                 cohort_paying_indistrict, cohort_paying_instate, cohort_paying_outstate,
                 cohort_paying_unknown, awarded_grant_aid, total_grant_aid, awarded_federal_grants,
                 total_federal_grants, awarded_state_local_grants, total_state_local_grants,
                 awarded_institutional_grants, total_institutional_grants, 
                 awarded_federal_student_loans, total_federal_student_loans, 
                 awarded_other_student_loans, total_other_student_loans):
        """ method for instantiating object """
        self.unitid = unitid
        self.date_key = date_key
        self.total_undergraduates = total_undergraduates
        self.full_time_freshman_cohort = full_time_freshman_cohort
        self.total_number = total_number
        self.total_on_campus = total_on_campus
        self.total_off_campus_with_family = total_off_campus_with_family
        self.total_off_campus_not_with_family = total_off_campus_not_with_family
        self.total_living_arrangement_unknown = total_living_arrangement_unknown
        self.cohort_paying_indistrict = cohort_paying_indistrict
        self.cohort_paying_instate = cohort_paying_instate
        self.cohort_paying_outstate = cohort_paying_outstate
        self.cohort_paying_unknown = cohort_paying_unknown
        self.awarded_grant_aid = awarded_grant_aid
        self.total_grant_aid = total_grant_aid
        self.awarded_federal_grants = awarded_federal_grants
        self.total_federal_grants = total_federal_grants
        self.awarded_state_local_grants = awarded_state_local_grants
        self.total_state_local_grants = total_state_local_grants
        self.awarded_institutional_grants = awarded_institutional_grants
        self.total_institutional_grants = total_institutional_grants
        self.awarded_federal_student_loans = awarded_federal_student_loans
        self.total_federal_student_loans = total_federal_student_loans
        self.awarded_other_student_loans = awarded_other_student_loans
        self.total_other_student_loans = total_other_student_loans


    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'date_key={self.date_key!r}, '
            f'total_undergraduates={self.total_undergraduates!r}, '
            f'full_time_freshman_cohort={self.full_time_freshman_cohort!r}, '
            f'total_number={self.total_number!r}, '
            f'total_on_campus={self.total_on_campus!r}, '
            f'total_off_campus_with_family={self.total_off_campus_with_family!r}, '
            f'total_off_campus_not_with_family={self.total_off_campus_not_with_family!r}, '
            f'total_living_arrangement_unknown={self.total_living_arrangement_unknown!r}, '
            f'cohort_paying_indistrict={self.cohort_paying_indistrict!r}, '
            f'cohort_paying_instate={self.cohort_paying_instate!r}, '
            f'cohort_paying_outstate={self.cohort_paying_outstate!r}, '
            f'cohort_paying_unknown={self.cohort_paying_unknown!r}, '
            f'awarded_grant_aid={self.awarded_grant_aid!r}, '
            f'total_grant_aid={self.total_grant_aid!r}, '
            f'awarded_federal_grants={self.awarded_federal_grants!r}, '
            f'total_federal_grants={self.total_federal_grants!r}, '
            f'awarded_state_local_grants={self.awarded_state_local_grants!r}, '
            f'total_state_local_grants={self.total_state_local_grants!r}, '
            f'awarded_institutional_grants={self.awarded_institutional_grants!r}, '
            f'total_institutional_grants={self.total_institutional_grants!r}, '
            f'awarded_federal_student_loans={self.awarded_federal_student_loans!r}, '
            f'total_federal_student_loans={self.total_federal_student_loans!r}, '
            f'awarded_other_student_loans={self.awarded_other_student_loans!r}, '
            f'total_other_student_loans={self.total_other_student_loans!r})'
        )
