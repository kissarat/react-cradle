import React from 'react';
import * as PropTypes from 'prop-types';
import Slider from 'react-slick';

export default function Component({className = 'component', children}) {
    return <div className={className}>
        <Slider
            infinite={false}
            variableWidth={true}
            centerMode={true}
        >{children}</Slider>
    </div>
}

Component.propTypes = {
    className: PropTypes.string
};

Component.defaultProps = {
    className: ''
};
