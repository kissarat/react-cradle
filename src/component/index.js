import React from 'react';
import * as PropTypes from 'prop-types';

export default function Component({className = 'component', children}) {
    return <p className={className}>{children}</p>
}

Component.propTypes = {
    className: PropTypes.string
};

Component.defaultProps = {
    className: ''
};
