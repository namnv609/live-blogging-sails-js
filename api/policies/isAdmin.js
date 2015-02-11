module.exports = function(req, res, next) {
    if (req.session.isAdmin) {
        return next();
    } else {
        return res.forbidden();
    }
}