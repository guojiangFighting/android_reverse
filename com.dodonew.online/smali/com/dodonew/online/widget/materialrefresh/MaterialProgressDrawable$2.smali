.class Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    iget-boolean v12, v12, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v12, :cond_0

    .line 316
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    move/from16 v0, p1

    invoke-static {v12, v0, v13}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->access$200(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;FLcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;)V

    .line 352
    :goto_0
    return-void

    .line 321
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    .line 322
    invoke-virtual {v12}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v16

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    .line 321
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 323
    .local v5, "minProgressArc":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v12}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v8

    .line 324
    .local v8, "startingEndTrim":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v12}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v10

    .line 325
    .local v10, "startingTrim":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v12}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v9

    .line 329
    .local v9, "startingRotation":F
    const v12, 0x3f4ccccd    # 0.8f

    sub-float v4, v12, v5

    .line 331
    .local v4, "minArc":F
    invoke-static {}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v12

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v12, v4

    add-float v2, v8, v12

    .line 332
    .local v2, "endTrim":F
    const v12, 0x3f4ccccd    # 0.8f

    .line 333
    invoke-static {}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v13, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v7, v10, v12

    .line 335
    .local v7, "startTrim":F
    sub-float v11, v2, v7

    .line 337
    .local v11, "sweepTrim":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_1

    .line 338
    const/high16 v12, 0x3f000000    # 0.5f

    add-float v2, v7, v12

    .line 341
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v12, v2}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v12, v7}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 345
    const/high16 v12, 0x3e800000    # 0.25f

    mul-float v12, v12, p1

    add-float v6, v9, v12

    .line 346
    .local v6, "rotation":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->val$ring:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;

    invoke-virtual {v12, v6}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 348
    const/high16 v12, 0x43100000    # 144.0f

    mul-float v12, v12, p1

    const/high16 v13, 0x44340000    # 720.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    .line 349
    invoke-static {v14}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->access$500(Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;)F

    move-result v14

    const/high16 v15, 0x40a00000    # 5.0f

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float v3, v12, v13

    .line 350
    .local v3, "groupRotation":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable$2;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;

    invoke-virtual {v12, v3}, Lcom/dodonew/online/widget/materialrefresh/MaterialProgressDrawable;->setRotation(F)V

    goto/16 :goto_0
.end method
