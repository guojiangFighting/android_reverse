.class public Lcom/dodonew/online/view/TipsView;
.super Landroid/widget/LinearLayout;
.source "TipsView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isClick:Z

.field private memberNo:Ljava/lang/String;

.field private netBar:Lcom/dodonew/online/bean/NetBar;

.field private textView:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/view/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/view/TipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object p1, p0, Lcom/dodonew/online/view/TipsView;->context:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    invoke-direct {p0, p2}, Lcom/dodonew/online/view/TipsView;->init(Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/view/TipsView;->initView()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/view/TipsView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/TipsView;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/dodonew/online/view/TipsView;->isClick:Z

    return v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/view/TipsView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/TipsView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dodonew/online/view/TipsView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/view/TipsView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/TipsView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dodonew/online/view/TipsView;->memberNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dodonew/online/view/TipsView;)Lcom/dodonew/online/bean/NetBar;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/view/TipsView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dodonew/online/view/TipsView;->netBar:Lcom/dodonew/online/bean/NetBar;

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/dodonew/online/view/TipsView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/R$styleable;->TipsView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dodonew/online/view/TipsView;->isClick:Z

    .line 48
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f0d024c

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/TipsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/TipsView;->tvName:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0d024d

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/TipsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/TipsView;->textView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/TipsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/dodonew/online/view/TipsView$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/view/TipsView$1;-><init>(Lcom/dodonew/online/view/TipsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public setMemberNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "memberNo"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dodonew/online/view/TipsView;->memberNo:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNetBar(Lcom/dodonew/online/bean/NetBar;)V
    .locals 2
    .param p1, "netBar"    # Lcom/dodonew/online/bean/NetBar;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dodonew/online/view/TipsView;->netBar:Lcom/dodonew/online/bean/NetBar;

    .line 70
    iget-object v0, p0, Lcom/dodonew/online/view/TipsView;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 1
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dodonew/online/view/TipsView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method
