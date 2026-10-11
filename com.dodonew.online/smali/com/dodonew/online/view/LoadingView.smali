.class public Lcom/dodonew/online/view/LoadingView;
.super Landroid/widget/LinearLayout;
.source "LoadingView.java"


# instance fields
.field context:Landroid/content/Context;

.field inflater:Landroid/view/LayoutInflater;

.field public pb:Landroid/widget/ProgressBar;

.field public tv_txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/dodonew/online/view/LoadingView;->context:Landroid/content/Context;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/view/LoadingView;->inflater:Landroid/view/LayoutInflater;

    .line 28
    iget-object v0, p0, Lcom/dodonew/online/view/LoadingView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030096

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    invoke-direct {p0}, Lcom/dodonew/online/view/LoadingView;->initView()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0d01e0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dodonew/online/view/LoadingView;->tv_txt:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0d01df

    invoke-virtual {p0, v0}, Lcom/dodonew/online/view/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/dodonew/online/view/LoadingView;->pb:Landroid/widget/ProgressBar;

    .line 38
    return-void
.end method
