.class public Lcom/dodonew/online/widget/htextview/animatetext/TyperText;
.super Lcom/dodonew/online/widget/htextview/animatetext/HText;
.source "TyperText.java"


# instance fields
.field private currentLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;-><init>()V

    return-void
.end method


# virtual methods
.method protected animatePrepare(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 26
    return-void
.end method

.method protected animateStart(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->currentLength:I

    .line 20
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->invalidate()V

    .line 21
    return-void
.end method

.method protected drawFrame(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->currentLength:I

    iget v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->startX:F

    iget v5, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->startY:F

    iget-object v6, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 32
    iget v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->currentLength:I

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 33
    iget v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->currentLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->currentLength:I

    .line 34
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/dodonew/online/widget/htextview/HTextView;->postInvalidateDelayed(J)V

    .line 36
    :cond_0
    return-void
.end method

.method protected initVariables()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method
