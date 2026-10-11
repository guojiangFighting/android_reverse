.class public Lcom/dodonew/online/widget/MultiStateView;
.super Landroid/widget/FrameLayout;
.source "MultiStateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/MultiStateView$ViewState;
    }
.end annotation


# static fields
.field private static final CONTENT_VIEW:I = 0x0

.field private static final EMPTY_VIEW:I = 0x2

.field private static final ERROR_VIEW:I = 0x1

.field private static final LOADING_VIEW:I = 0x3

.field private static final UNKNOWN_VIEW:I = -0x1


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEmptyView:Landroid/view/View;

.field private mErrorView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLoadingView:Landroid/view/View;

.field private mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/MultiStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dodonew/online/widget/MultiStateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    iput-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    .line 57
    invoke-direct {p0, p2}, Lcom/dodonew/online/widget/MultiStateView;->init(Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 61
    invoke-virtual {p0}, Lcom/dodonew/online/widget/MultiStateView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-virtual {p0}, Lcom/dodonew/online/widget/MultiStateView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/dodonew/online/R$styleable;->MultiStateView:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 67
    .local v3, "loadingViewResId":I
    if-le v3, v7, :cond_0

    .line 68
    iget-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    .line 69
    iget-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    iget-object v6, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/dodonew/online/widget/MultiStateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 74
    .local v1, "emptyViewResId":I
    if-le v1, v7, :cond_1

    .line 75
    iget-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v1, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    .line 76
    iget-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    iget-object v6, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/dodonew/online/widget/MultiStateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 81
    .local v2, "errorViewResId":I
    if-le v2, v7, :cond_2

    .line 82
    iget-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v2, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    .line 83
    iget-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    iget-object v6, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/dodonew/online/widget/MultiStateView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :cond_2
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 88
    .local v4, "viewState":I
    if-eq v4, v7, :cond_3

    .line 89
    packed-switch v4, :pswitch_data_0

    .line 108
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void

    .line 91
    :pswitch_0
    sget-object v5, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    iput-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    goto :goto_0

    .line 95
    :pswitch_1
    sget-object v5, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    iput-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    goto :goto_0

    .line 99
    :pswitch_2
    sget-object v5, Lcom/dodonew/online/widget/MultiStateView$ViewState;->EMPTY:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    iput-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    goto :goto_0

    .line 103
    :pswitch_3
    sget-object v5, Lcom/dodonew/online/widget/MultiStateView$ViewState;->LOADING:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    iput-object v5, p0, Lcom/dodonew/online/widget/MultiStateView;->mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isValidContentView(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    if-eq v1, p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 209
    sget-object v0, Lcom/dodonew/online/widget/MultiStateView$1;->$SwitchMap$com$dodonew$online$widget$MultiStateView$ViewState:[I

    iget-object v1, p0, Lcom/dodonew/online/widget/MultiStateView;->mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    if-nez v0, :cond_a

    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Content View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Loading View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_3
    :goto_0
    return-void

    .line 225
    :pswitch_2
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Empty View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_6
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 240
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 245
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_8
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 247
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_9
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_a
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 262
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_b
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 264
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :cond_c
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/MultiStateView;->isValidContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/MultiStateView;->isValidContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 138
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/MultiStateView;->isValidContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    .line 158
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 159
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/MultiStateView;->isValidContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    .line 144
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/MultiStateView;->isValidContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/MultiStateView;->isValidContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    .line 166
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "preventRequestLayout"    # Z

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/MultiStateView;->isValidContentView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    .line 175
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method public getView(Lcom/dodonew/online/widget/MultiStateView$ViewState;)Landroid/view/View;
    .locals 2
    .param p1, "state"    # Lcom/dodonew/online/widget/MultiStateView$ViewState;

    .prologue
    .line 179
    sget-object v0, Lcom/dodonew/online/widget/MultiStateView$1;->$SwitchMap$com$dodonew$online$widget$MultiStateView$ViewState:[I

    invoke-virtual {p1}, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    goto :goto_0

    .line 190
    :pswitch_3
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewState()Lcom/dodonew/online/widget/MultiStateView$ViewState;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 114
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content view is not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/dodonew/online/widget/MultiStateView;->setView()V

    .line 117
    return-void
.end method

.method public setViewForState(ILcom/dodonew/online/widget/MultiStateView$ViewState;)V
    .locals 1
    .param p1, "layoutRes"    # I
    .param p2, "state"    # Lcom/dodonew/online/widget/MultiStateView$ViewState;

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dodonew/online/widget/MultiStateView;->setViewForState(ILcom/dodonew/online/widget/MultiStateView$ViewState;Z)V

    .line 335
    return-void
.end method

.method public setViewForState(ILcom/dodonew/online/widget/MultiStateView$ViewState;Z)V
    .locals 3
    .param p1, "layoutRes"    # I
    .param p2, "state"    # Lcom/dodonew/online/widget/MultiStateView$ViewState;
    .param p3, "switchToState"    # Z

    .prologue
    .line 327
    iget-object v1, p0, Lcom/dodonew/online/widget/MultiStateView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/dodonew/online/widget/MultiStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/widget/MultiStateView;->mInflater:Landroid/view/LayoutInflater;

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/widget/MultiStateView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0, p2, p3}, Lcom/dodonew/online/widget/MultiStateView;->setViewForState(Landroid/view/View;Lcom/dodonew/online/widget/MultiStateView$ViewState;Z)V

    .line 331
    return-void
.end method

.method public setViewForState(Landroid/view/View;Lcom/dodonew/online/widget/MultiStateView$ViewState;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/dodonew/online/widget/MultiStateView$ViewState;

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/dodonew/online/widget/MultiStateView;->setViewForState(Landroid/view/View;Lcom/dodonew/online/widget/MultiStateView$ViewState;Z)V

    .line 323
    return-void
.end method

.method public setViewForState(Landroid/view/View;Lcom/dodonew/online/widget/MultiStateView$ViewState;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/dodonew/online/widget/MultiStateView$ViewState;
    .param p3, "switchToState"    # Z

    .prologue
    .line 287
    sget-object v0, Lcom/dodonew/online/widget/MultiStateView$1;->$SwitchMap$com$dodonew$online$widget$MultiStateView$ViewState:[I

    invoke-virtual {p2}, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_0
    if-eqz p3, :cond_0

    .line 318
    invoke-virtual {p0, p2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 319
    :cond_0
    return-void

    .line 289
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/MultiStateView;->removeView(Landroid/view/View;)V

    .line 291
    :cond_1
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    .line 292
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mLoadingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/MultiStateView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/MultiStateView;->removeView(Landroid/view/View;)V

    .line 298
    :cond_2
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/MultiStateView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/MultiStateView;->removeView(Landroid/view/View;)V

    .line 305
    :cond_3
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    .line 306
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mErrorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/MultiStateView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 310
    :pswitch_3
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/MultiStateView;->removeView(Landroid/view/View;)V

    .line 312
    :cond_4
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    .line 313
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/MultiStateView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V
    .locals 1
    .param p1, "state"    # Lcom/dodonew/online/widget/MultiStateView$ViewState;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dodonew/online/widget/MultiStateView;->mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    if-eq p1, v0, :cond_0

    .line 203
    iput-object p1, p0, Lcom/dodonew/online/widget/MultiStateView;->mViewState:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    .line 204
    invoke-direct {p0}, Lcom/dodonew/online/widget/MultiStateView;->setView()V

    .line 206
    :cond_0
    return-void
.end method
