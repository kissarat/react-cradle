import React from 'react';
import * as PropTypes from 'prop-types';
import { Carousel } from 'react-responsive-carousel';

export default function Component({className = 'component', children}) {
    return <div className={className}>
        <Carousel>{children}</Carousel>
    </div>
}

Component.propTypes = {
    className: PropTypes.string
};

Component.defaultProps = {
    className: ''
};
