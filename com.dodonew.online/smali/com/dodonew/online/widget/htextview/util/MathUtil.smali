.class public Lcom/dodonew/online/widget/htextview/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "v"    # F

    .prologue
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static floorEven(I)I
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 37
    and-int/lit8 v0, p0, -0x2

    return v0
.end method

.method public static intDivideRoundUp(II)I
    .locals 4
    .param p0, "num"    # I
    .param p1, "divisor"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 51
    if-lez p0, :cond_0

    move v3, v1

    :goto_0
    if-lez p1, :cond_1

    :goto_1
    mul-int v0, v3, v1

    .line 52
    .local v0, "sign":I
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    return v1

    .end local v0    # "sign":I
    :cond_0
    move v3, v2

    .line 51
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static interpolate(FFF)F
    .locals 1
    .param p0, "x1"    # F
    .param p1, "x2"    # F
    .param p2, "f"    # F

    .prologue
    .line 26
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static isEven(I)Z
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 45
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maxDistanceToCorner(IIIIII)F
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "maxDistance":F
    sub-int v1, p0, p2

    int-to-double v2, v1

    sub-int v1, p1, p3

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 58
    sub-int v1, p0, p4

    int-to-double v2, v1

    sub-int v1, p1, p3

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 59
    sub-int v1, p0, p2

    int-to-double v2, v1

    sub-int v1, p1, p5

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 60
    sub-int v1, p0, p4

    int-to-double v2, v1

    sub-int v1, p1, p5

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 61
    return v0
.end method

.method public static roundMult4(I)I
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 41
    add-int/lit8 v0, p0, 0x2

    and-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public static uninterpolate(FFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "x2"    # F
    .param p2, "v"    # F

    .prologue
    .line 30
    sub-float v0, p1, p0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t reverse interpolate with domain size of 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method
