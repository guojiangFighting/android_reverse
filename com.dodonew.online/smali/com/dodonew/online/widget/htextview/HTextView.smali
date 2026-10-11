.class public Lcom/dodonew/online/widget/htextview/HTextView;
.super Landroid/widget/TextView;
.source "HTextView.java"


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private defStyle:I

.field private mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/widget/htextview/HTextView;->init(Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/dodonew/online/widget/htextview/HTextView;->init(Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/dodonew/online/widget/htextview/HTextView;->init(Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dodonew/online/widget/htextview/HTextView;->attrs:Landroid/util/AttributeSet;

    .line 48
    iput p2, p0, Lcom/dodonew/online/widget/htextview/HTextView;->defStyle:I

    .line 49
    invoke-virtual {p0}, Lcom/dodonew/online/widget/htextview/HTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dodonew/online/R$styleable;->HTextView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 51
    .local v0, "animateType":I
    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/dodonew/online/widget/htextview/HTextView;->initHText(Landroid/util/AttributeSet;I)V

    .line 86
    return-void

    .line 53
    :pswitch_0
    new-instance v2, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;

    invoke-direct {v2}, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 56
    :pswitch_1
    new-instance v2, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;

    invoke-direct {v2}, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 59
    :pswitch_2
    new-instance v2, Lcom/dodonew/online/widget/htextview/animatetext/FallText;

    invoke-direct {v2}, Lcom/dodonew/online/widget/htextview/animatetext/FallText;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 62
    :pswitch_3
    new-instance v2, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;

    invoke-direct {v2}, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 65
    :pswitch_4
    new-instance v2, Lcom/dodonew/online/widget/htextview/animatetext/LineText;

    invoke-direct {v2}, Lcom/dodonew/online/widget/htextview/animatetext/LineText;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 68
    :pswitch_5
    new-instance v2, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;

    invoke-direct {v2}, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 71
    :pswitch_6
    new-instance v2, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;

    invoke-direct {v2}, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 74
    :pswitch_7
    new-instance v2, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;

    invoke-direct {v2}, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;-><init>()V

    iput-object v2, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initHText(Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    invoke-interface {v0, p0, p1, p2}, Lcom/dodonew/online/widget/htextview/animatetext/IHText;->init(Lcom/dodonew/online/widget/htextview/HTextView;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method


# virtual methods
.method public animateText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/htextview/animatetext/IHText;->animateText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/htextview/animatetext/IHText;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method public reset(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    invoke-interface {v0, p1}, Lcom/dodonew/online/widget/htextview/animatetext/IHText;->reset(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setAnimateType(Lcom/dodonew/online/widget/htextview/HTextViewType;)V
    .locals 2
    .param p1, "type"    # Lcom/dodonew/online/widget/htextview/HTextViewType;

    .prologue
    .line 107
    sget-object v0, Lcom/dodonew/online/widget/htextview/HTextView$1;->$SwitchMap$com$dodonew$online$widget$htextview$HTextViewType:[I

    invoke-virtual {p1}, Lcom/dodonew/online/widget/htextview/HTextViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->attrs:Landroid/util/AttributeSet;

    iget v1, p0, Lcom/dodonew/online/widget/htextview/HTextView;->defStyle:I

    invoke-direct {p0, v0, v1}, Lcom/dodonew/online/widget/htextview/HTextView;->initHText(Landroid/util/AttributeSet;I)V

    .line 135
    return-void

    .line 109
    :pswitch_0
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/ScaleText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 112
    :pswitch_1
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/EvaporateText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 115
    :pswitch_2
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/FallText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/FallText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 118
    :pswitch_3
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/PixelateText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 121
    :pswitch_4
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/SparkleText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 124
    :pswitch_5
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/LineText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/LineText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 127
    :pswitch_6
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/TyperText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 130
    :pswitch_7
    new-instance v0, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;

    invoke-direct {v0}, Lcom/dodonew/online/widget/htextview/animatetext/RainBowText;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/widget/htextview/HTextView;->mIHText:Lcom/dodonew/online/widget/htextview/animatetext/IHText;

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
