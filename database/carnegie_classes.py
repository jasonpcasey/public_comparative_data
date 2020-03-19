# coding=utf-8

from sqlalchemy import Column, String, Integer

from .base import Base

class CarnegieClass(Base):
    """ map to a table name in db """
    __tablename__ = "carnegie_classes"

    """ create columns """
    unitid = Column(Integer, primary_key = True)
    basic_code = Column(Integer, nullable = False)
    carnegie_class = Column(String(255), nullable = False)

    def __init__(self, unitid, basic_code, carnegie_class):
        """ method for instantiating object """
        self.unitid = unitid
        self.basic_code = basic_code
        self.carnegie_class = carnegie_class

    def __repr__(self):
        """ produces human-readable object call """
        return (
            f'{self.__class__.__name__}('
            f'unitid={self.unitid!r}, '
            f'basic_code={self.basic_code!r}, '
            f'carnegie_class={self.carnegie_class!r})'
            )
