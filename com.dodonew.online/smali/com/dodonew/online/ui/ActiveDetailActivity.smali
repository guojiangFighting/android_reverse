.class public Lcom/dodonew/online/ui/ActiveDetailActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "ActiveDetailActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private actId:Ljava/lang/String;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private para:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private webView:Lcom/dodonew/online/widget/BaseWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->para:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/ActiveDetailActivity;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/ActiveDetailActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/ActiveDetailActivity;Lcom/dodonew/online/bean/Active;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/ActiveDetailActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/Active;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/ActiveDetailActivity;->setActiveData(Lcom/dodonew/online/bean/Active;)V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    new-instance v1, Lcom/dodonew/online/ui/ActiveDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/ActiveDetailActivity$1;-><init>(Lcom/dodonew/online/ui/ActiveDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/BaseWebView;->setOnLoadFinishListener(Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;)V

    .line 63
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "\u6d3b\u52a8\u8be6\u60c5"

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->setNavigationIcon(I)V

    .line 47
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 48
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/widget/BaseWebView;

    iput-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    .line 49
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {p0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/BaseWebView;->setBackgroundColor(I)V

    .line 50
    invoke-virtual {p0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "actId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->actId:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->actId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->actId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->queryActiveDetail(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method private queryActiveDetail(Ljava/lang/String;)V
    .locals 7
    .param p1, "actid"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lcom/dodonew/online/ui/ActiveDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/ActiveDetailActivity$2;-><init>(Lcom/dodonew/online/ui/ActiveDetailActivity;)V

    .line 67
    invoke-virtual {v0}, Lcom/dodonew/online/ui/ActiveDetailActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 68
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->para:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->para:Ljava/util/Map;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->para:Ljava/util/Map;

    const-string v1, "actid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "http://api.dodovip.com/api/oth/actvity/info"

    .line 73
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/ActiveDetailActivity$3;

    invoke-direct {v4, p0}, Lcom/dodonew/online/ui/ActiveDetailActivity$3;-><init>(Lcom/dodonew/online/ui/ActiveDetailActivity;)V

    iget-object v6, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->para:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->requestNetwork(Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method private requestNetwork(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 93
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method private setActiveData(Lcom/dodonew/online/bean/Active;)V
    .locals 6
    .param p1, "obj"    # Lcom/dodonew/online/bean/Active;

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/dodonew/online/bean/Active;->getActiTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Active;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Active;->getNetBarName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dodonew/online/bean/Active;->getActiContext()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/dodonew/online/util/Utils;->formatWebContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    const-string v1, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->setContentView(I)V

    .line 40
    invoke-direct {p0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->initView()V

    .line 41
    invoke-direct {p0}, Lcom/dodonew/online/ui/ActiveDetailActivity;->initEvent()V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 119
    iget-object v1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/BaseWebView;->stopLoading()V

    .line 121
    iget-object v1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/BaseWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 122
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/BaseWebView;->removeAllViews()V

    .line 126
    iget-object v1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/BaseWebView;->destroy()V

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dodonew/online/ui/ActiveDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    .line 129
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 113
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 107
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 108
    return-void
.end method
