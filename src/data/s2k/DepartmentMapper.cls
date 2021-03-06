/** This is free and unencumbered software released into the public domain.
    Anyone is free to copy, modify, publish, use, compile, sell, or
    distribute this software, either in source code form or as a compiled
    binary, for any purpose, commercial or non-commercial, and by any
    means.  **/
 /*------------------------------------------------------------------------
    File        : DepartmentMapper
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : pjudge
    Created     : 2017-10-30
    Notes       : * 
  ----------------------------------------------------------------------*/
block-level on error undo, throw.

using data.s2k.DepartmentRecord.
using data.shared.BufferMapper.
using data.shared.IRecord.

class data.s2k.DepartmentMapper inherits BufferMapper:
    
    constructor public DepartmentMapper(input pBuffer as handle):
        super(pBuffer, 
              // we want to create department records
              get-class(DepartmentRecord)).
    end constructor.
    
    constructor public DepartmentMapper():
        this-object(buffer Department:handle). 
    end constructor.
    
end class.
