/**
 * Created by wes on 6/9/15.
 */

var React = require('react-native'),
    { requireNativeComponent } = React;

class FlexLabel extends React.Component {
    render() {
        return <RCTFlexLabel {...this.props} />;
    }
}

FlexLabel.propTypes = {
    text: React.PropTypes.string,
    verticalAlign: React.PropTypes.string, //React.PropTypes.oneOf(['top', 'middle', 'bottom']),
    numberOfLines: React.PropTypes.number
}

var RCTFlexLabel = requireNativeComponent('RCTFlexLabel', FlexLabel);

module.exports = FlexLabel;