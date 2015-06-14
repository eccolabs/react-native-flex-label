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
    numberOfLines: React.PropTypes.number,
    fontFamily: React.PropTypes.string,
    fontSize: React.PropTypes.number,
    fontWeight: React.PropTypes.oneOf(
        ['normal' /*default*/, 'bold',
            '100', '200', '300', '400', '500', '600', '700', '800', '900']
    ),
    fontStyle: React.PropTypes.oneOf(['normal', 'italic']),
    lineHeight: React.PropTypes.number,
    color: React.PropTypes.string,
}

var RCTFlexLabel = requireNativeComponent('RCTFlexLabel', FlexLabel);

module.exports = FlexLabel;