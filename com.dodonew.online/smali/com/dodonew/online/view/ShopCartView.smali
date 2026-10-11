.class public Lcom/dodonew/online/view/ShopCartView;
.super Landroid/widget/FrameLayout;
.source "ShopCartView.java"


# instance fields
.field private btnPay:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private tvTotalParice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/dodonew/online/view/ShopCartView;->context:Landroid/content/Context;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    invoke-direct {p0}, Lcom/dodonew/online/view/ShopCartView;->initView()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object p1, p0, Lcom/dodonew/online/view/ShopCartView;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    invoke-direct {p0}, Lcom/dodonew/online/view/ShopCartView;->initView()V

    .line 32
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0d0245

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/ShopCartView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/ShopCartView;->tvTotalParice:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0d00e9

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/ShopCartView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dodonew/online/view/ShopCartView;->btnPay:Landroid/widget/Button;

    .line 38
    return-void
.end method


# virtual methods
.method public setTotalParice(Ljava/lang/String;)V
    .locals 1
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dodonew/online/view/ShopCartView;->tvTotalParice:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method
