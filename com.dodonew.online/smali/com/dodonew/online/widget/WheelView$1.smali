.class Lcom/dodonew/online/widget/WheelView$1;
.super Landroid/graphics/drawable/Drawable;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/dodonew/online/widget/WheelView$1;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 255
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$1;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v0}, Lcom/dodonew/online/widget/WheelView;->access$100(Lcom/dodonew/online/widget/WheelView;)[I

    move-result-object v6

    .line 256
    .local v6, "areaBorder":[I
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$1;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v0}, Lcom/dodonew/online/widget/WheelView;->access$200(Lcom/dodonew/online/widget/WheelView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    int-to-float v1, v0

    aget v0, v6, v4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$1;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v0}, Lcom/dodonew/online/widget/WheelView;->access$200(Lcom/dodonew/online/widget/WheelView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    int-to-float v3, v0

    aget v0, v6, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$1;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v0}, Lcom/dodonew/online/widget/WheelView;->access$300(Lcom/dodonew/online/widget/WheelView;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$1;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v0}, Lcom/dodonew/online/widget/WheelView;->access$200(Lcom/dodonew/online/widget/WheelView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    int-to-float v1, v0

    aget v0, v6, v7

    int-to-float v2, v0

    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$1;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v0}, Lcom/dodonew/online/widget/WheelView;->access$200(Lcom/dodonew/online/widget/WheelView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    int-to-float v3, v0

    aget v0, v6, v7

    int-to-float v4, v0

    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$1;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v0}, Lcom/dodonew/online/widget/WheelView;->access$300(Lcom/dodonew/online/widget/WheelView;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 258
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 263
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 268
    return-void
.end method
