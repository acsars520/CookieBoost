include(cmake/system.cmake)

macro(cookie_copy_files dst src)
    set(__dst_path dst)
    set(__src_file src)

    if(NOT EXISTS ${__src_file})
        message(FATAL_ERROR "The source path does not exist: ${__src_file}")
        return()
    endif()

    if(NOT EXISTS ${__dst_path})
        file(MAKE_DIRECTORY ${__dst_path})
    endif()

    foreach(__file ${ARGN}) 
        if(NOT EXISTS ${__file})
            message(FATAL_ERROR "The file does not exist: ${__file}")
            continue()
        endif()

        list(APPEND __src_file ${__file})
    endforeach()
    
    file(COPY ${__src_file} DESTINATION ${__dst_path})
endmacro()