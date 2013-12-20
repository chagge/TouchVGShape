// mgdblpt.h: 定义双精度点和辅助函数
// Copyright (c) 2004-2013, Zhang Yungui
// License: LGPL, https://github.com/rhcad/touchvg

#ifndef TOUCHVG_MGDBLPT_H
#define TOUCHVG_MGDBLPT_H

#include <math.h>

struct pointd {
    double x, y;

    double length() const {
        return sqrt(x*x + y*y);
    }
    double lengthSquare() const {
        return x*x + y*y;
    }
    double distanceSquare(const pointd& v) const {
        return (x - v.x) * (x - v.x) + (y - v.y) * (y - v.y);
    }
    double distance(const pointd& v) const {
        return sqrt(distanceSquare(v));
    }
    double dotProduct(const pointd& v) const {
        return (x * v.x + y * v.y);
    }
    double crossProduct(const pointd& v) const {
        return (x * v.y - y * v.x);
    }

    pointd operator-(const pointd& v) const
    {
        pointd ret = { x - v.x, y - v.y };
        return ret;
    }
    pointd operator+(const pointd& v) const
    {
        pointd ret = { x + v.x, y + v.y };
        return ret;
    }
    pointd operator*(double d) const
    {
        pointd ret = { x * d, y * d };
        return ret;
    }
    friend pointd operator*(double d, const pointd& v)
    {
        pointd ret = { v.x * d, v.y * d };
        return ret;
    }
};

#endif // TOUCHVG_MGDBLPT_H
