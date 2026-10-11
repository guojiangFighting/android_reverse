.class public Lcom/dodonew/online/widget/htextview/util/BestBlur;
.super Ljava/lang/Object;
.source "BestBlur.java"


# static fields
.field public static final MAX_SUPPORTED_BLUR_PIXELS:I = 0x19


# instance fields
.field private mRS:Landroid/renderscript/RenderScript;

.field private mSIBlur:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mSIGrey:Landroid/renderscript/ScriptIntrinsicColorMatrix;

.field private mTmp1:Landroid/renderscript/Allocation;

.field private mTmp2:Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mSIBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 46
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicColorMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mSIGrey:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    .line 47
    return-void
.end method

.method private doBlur(FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "input"    # Landroid/renderscript/Allocation;
    .param p3, "output"    # Landroid/renderscript/Allocation;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mSIBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 90
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mSIBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 91
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mSIBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 92
    return-void
.end method

.method private doDesaturate(FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 9
    .param p1, "normalizedAmount"    # F
    .param p2, "input"    # Landroid/renderscript/Allocation;
    .param p3, "output"    # Landroid/renderscript/Allocation;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3f1645a2    # 0.587f

    const v6, 0x3e991687    # 0.299f

    const v5, 0x3de978d5    # 0.114f

    const/4 v4, 0x0

    .line 95
    new-instance v0, Landroid/renderscript/Matrix3f;

    const/16 v1, 0x9

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-static {v8, v6, p1}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->interpolate(FFF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4, v6, p1}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->interpolate(FFF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v4, v6, p1}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->interpolate(FFF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    .line 97
    invoke-static {v4, v7, p1}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->interpolate(FFF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v8, v7, p1}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->interpolate(FFF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x5

    invoke-static {v4, v7, p1}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->interpolate(FFF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x6

    .line 99
    invoke-static {v4, v5, p1}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->interpolate(FFF)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4, v5, p1}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->interpolate(FFF)F

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v8, v5, p1}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->interpolate(FFF)F

    move-result v3

    aput v3, v1, v2

    invoke-direct {v0, v1}, Landroid/renderscript/Matrix3f;-><init>([F)V

    .line 100
    .local v0, "m":Landroid/renderscript/Matrix3f;
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mSIGrey:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setColorMatrix(Landroid/renderscript/Matrix3f;)V

    .line 101
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mSIGrey:Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-virtual {v1, p2, p3}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 102
    return-void
.end method


# virtual methods
.method public blurBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # F
    .param p3, "desaturateAmount"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 50
    if-nez p1, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, "dest":Landroid/graphics/Bitmap;
    cmpl-float v1, p2, v3

    if-nez v1, :cond_2

    cmpl-float v1, p3, v3

    if-eqz v1, :cond_0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    if-eqz v1, :cond_4

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V
    :try_end_0
    .catch Landroid/renderscript/RSInvalidStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    .line 71
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    .line 73
    cmpl-float v1, p2, v3

    if-lez v1, :cond_5

    cmpl-float v1, p3, v3

    if-lez v1, :cond_5

    .line 74
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    invoke-direct {p0, p2, v1, v2}, Lcom/dodonew/online/widget/htextview/util/BestBlur;->doBlur(FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 75
    invoke-static {v3, v4, p3}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->constrain(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    invoke-direct {p0, v1, v2, v3}, Lcom/dodonew/online/widget/htextview/util/BestBlur;->doDesaturate(FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 76
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 77
    :cond_5
    cmpl-float v1, p2, v3

    if-lez v1, :cond_6

    .line 78
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    invoke-direct {p0, p2, v1, v2}, Lcom/dodonew/online/widget/htextview/util/BestBlur;->doBlur(FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 79
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 81
    :cond_6
    invoke-static {v3, v4, p3}, Lcom/dodonew/online/widget/htextview/util/MathUtil;->constrain(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    invoke-direct {p0, v1, v2, v3}, Lcom/dodonew/online/widget/htextview/util/BestBlur;->doDesaturate(FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 82
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mSIBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 106
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp1:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mTmp2:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/util/BestBlur;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 113
    return-void
.end method
