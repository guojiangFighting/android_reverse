.class public abstract Lcom/dodonew/online/widget/htextview/animatetext/HText;
.super Ljava/lang/Object;
.source "HText.java"

# interfaces
.implements Lcom/dodonew/online/widget/htextview/animatetext/IHText;


# instance fields
.field protected differentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/widget/htextview/animatetext/CharacterDiffResult;",
            ">;"
        }
    .end annotation
.end field

.field protected gaps:[F

.field protected mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

.field protected mOldPaint:Landroid/graphics/Paint;

.field protected mOldText:Ljava/lang/CharSequence;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mText:Ljava/lang/CharSequence;

.field protected mTextSize:F

.field protected oldGaps:[F

.field protected oldStartX:F

.field protected startX:F

.field protected startY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->gaps:[F

    .line 23
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->oldGaps:[F

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->differentList:Ljava/util/List;

    .line 35
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->oldStartX:F

    .line 36
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->startX:F

    .line 37
    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->startY:F

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/htextview/animatetext/HText;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/htextview/animatetext/HText;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;->prepareAnimate()V

    return-void
.end method

.method private prepareAnimate()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 83
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mTextSize:F

    .line 85
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->gaps:[F

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->oldGaps:[F

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldText:Ljava/lang/CharSequence;

    .line 96
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->oldStartX:F

    .line 97
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v2}, Lcom/dodonew/online/widget/htextview/HTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mText:Ljava/lang/CharSequence;

    .line 98
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->startX:F

    .line 99
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->startY:F

    .line 101
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->differentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 102
    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->differentList:Ljava/util/List;

    iget-object v2, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/dodonew/online/widget/htextview/util/CharacterUtils;->diff(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    return-void
.end method


# virtual methods
.method protected abstract animatePrepare(Ljava/lang/CharSequence;)V
.end method

.method protected abstract animateStart(Ljava/lang/CharSequence;)V
.end method

.method public animateText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/widget/htextview/HTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldText:Ljava/lang/CharSequence;

    .line 72
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mText:Ljava/lang/CharSequence;

    .line 73
    invoke-direct {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;->prepareAnimate()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/htextview/animatetext/HText;->animatePrepare(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/htextview/animatetext/HText;->animateStart(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method protected abstract drawFrame(Landroid/graphics/Canvas;)V
.end method

.method public init(Lcom/dodonew/online/widget/htextview/HTextView;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "hTextView"    # Lcom/dodonew/online/widget/htextview/HTextView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 45
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/htextview/HTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mText:Ljava/lang/CharSequence;

    .line 56
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mOldText:Ljava/lang/CharSequence;

    .line 58
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mTextSize:F

    .line 60
    invoke-virtual {p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText;->initVariables()V

    .line 61
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    new-instance v1, Lcom/dodonew/online/widget/htextview/animatetext/HText$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/widget/htextview/animatetext/HText$1;-><init>(Lcom/dodonew/online/widget/htextview/animatetext/HText;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/dodonew/online/widget/htextview/HTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    return-void
.end method

.method protected abstract initVariables()V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/htextview/animatetext/HText;->drawFrame(Landroid/graphics/Canvas;)V

    .line 80
    return-void
.end method

.method public reset(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/dodonew/online/widget/htextview/animatetext/HText;->animatePrepare(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/animatetext/HText;->mHTextView:Lcom/dodonew/online/widget/htextview/HTextView;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/htextview/HTextView;->invalidate()V

    .line 108
    return-void
.end method
