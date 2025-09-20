import React from 'react'
import propTypes from 'proptypes'

const PropTypeComp = ({
    name, 
    usn 
}) => {
  return (
    <div>
      
    </div>
  )
}

PropTypeComp.propTypes = {
    name: propTypes.string,
    usn : propTypes.number.isRequired
}

export default PropTypeComp
