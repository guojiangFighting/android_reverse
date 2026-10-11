.class public Lcom/dodonew/online/ui/NewsDetailActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "NewsDetailActivity.java"


# instance fields
.field private DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field private imgUrl:Ljava/lang/String;

.field private multiStateView:Lcom/dodonew/online/widget/MultiStateView;

.field private news:Lcom/dodonew/online/bean/News;

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

.field private pb:Landroid/widget/ProgressBar;

.field private request:Lcom/dodonew/online/http/JsonRequest;

.field private webView:Lcom/dodonew/online/widget/BaseWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/ui/NewsDetailActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NewsDetailActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->pb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/NewsDetailActivity;)Lcom/dodonew/online/widget/MultiStateView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NewsDetailActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/NewsDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NewsDetailActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/ui/NewsDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NewsDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->imgUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/NewsDetailActivity;)Lcom/dodonew/online/bean/News;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/NewsDetailActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->news:Lcom/dodonew/online/bean/News;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/NewsDetailActivity;Lcom/dodonew/online/bean/News;)V
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/NewsDetailActivity;
    .param p1, "x1"    # Lcom/dodonew/online/bean/News;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/dodonew/online/ui/NewsDetailActivity;->setNewsData(Lcom/dodonew/online/bean/News;)V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    new-instance v1, Lcom/dodonew/online/ui/NewsDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/NewsDetailActivity$1;-><init>(Lcom/dodonew/online/ui/NewsDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/BaseWebView;->setOnLoadFinishListener(Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;)V

    .line 105
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    new-instance v1, Lcom/dodonew/online/ui/NewsDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/NewsDetailActivity$2;-><init>(Lcom/dodonew/online/ui/NewsDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/BaseWebView;->setOnProgressChangedListener(Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;)V

    .line 111
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 85
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NewsDetailActivity;->setTitle(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NewsDetailActivity;->setNavigationIcon(I)V

    .line 87
    invoke-direct {p0}, Lcom/dodonew/online/ui/NewsDetailActivity;->setOptionsOnClick()V

    .line 88
    const v1, 0x7f0d00cf

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->pb:Landroid/widget/ProgressBar;

    .line 89
    const v1, 0x7f0d0090

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/MultiStateView;

    iput-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->multiStateView:Lcom/dodonew/online/widget/MultiStateView;

    .line 90
    const v1, 0x7f0d00ce

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/NewsDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/widget/BaseWebView;

    iput-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    .line 91
    invoke-virtual {p0}, Lcom/dodonew/online/ui/NewsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "newsId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "newsId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/NewsDetailActivity;->queryNewsDetail(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method private queryNewsDetail(Ljava/lang/String;)V
    .locals 7
    .param p1, "newsId"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Lcom/dodonew/online/ui/NewsDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/dodonew/online/ui/NewsDetailActivity$4;-><init>(Lcom/dodonew/online/ui/NewsDetailActivity;)V

    .line 142
    invoke-virtual {v0}, Lcom/dodonew/online/ui/NewsDetailActivity$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    .line 143
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->para:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->para:Ljava/util/Map;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->para:Ljava/util/Map;

    const-string v1, "newsId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v2, "http://api.dodovip.com/api/news/detail"

    .line 148
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/dodonew/online/http/JsonRequest;

    const-string v3, ""

    new-instance v4, Lcom/dodonew/online/ui/NewsDetailActivity$5;

    invoke-direct {v4, p0}, Lcom/dodonew/online/ui/NewsDetailActivity$5;-><init>(Lcom/dodonew/online/ui/NewsDetailActivity;)V

    new-instance v5, Lcom/dodonew/online/ui/NewsDetailActivity$6;

    invoke-direct {v5, p0}, Lcom/dodonew/online/ui/NewsDetailActivity$6;-><init>(Lcom/dodonew/online/ui/NewsDetailActivity;)V

    iget-object v6, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/dodonew/online/http/JsonRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    .line 164
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->para:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/dodonew/online/ui/NewsDetailActivity;->requestNetwork(Ljava/util/Map;)V

    .line 165
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
    .line 173
    .local p1, "para":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-virtual {v0, p1}, Lcom/dodonew/online/http/JsonRequest;->addRequestMap(Ljava/util/Map;)V

    .line 174
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->request:Lcom/dodonew/online/http/JsonRequest;

    invoke-static {v0, p0}, Lcom/dodonew/online/DodonewOnlineApplication;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method private setNewsData(Lcom/dodonew/online/bean/News;)V
    .locals 6
    .param p1, "obj"    # Lcom/dodonew/online/bean/News;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->news:Lcom/dodonew/online/bean/News;

    .line 179
    invoke-virtual {p1}, Lcom/dodonew/online/bean/News;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dodonew/online/bean/News;->getNewtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dodonew/online/bean/News;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/dodonew/online/bean/News;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/dodonew/online/util/Utils;->formatWebContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->news:Lcom/dodonew/online/bean/News;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/News;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/dodonew/online/widget/BaseWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method

.method private setOptionsOnClick()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/dodonew/online/ui/NewsDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/dodonew/online/ui/NewsDetailActivity$3;-><init>(Lcom/dodonew/online/ui/NewsDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 138
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/NewsDetailActivity;->setContentView(I)V

    .line 80
    invoke-direct {p0}, Lcom/dodonew/online/ui/NewsDetailActivity;->initView()V

    .line 81
    invoke-direct {p0}, Lcom/dodonew/online/ui/NewsDetailActivity;->initEvent()V

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/dodonew/online/ui/NewsDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 230
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/BaseWebView;->stopLoading()V

    .line 232
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/BaseWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 233
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/BaseWebView;->removeAllViews()V

    .line 237
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Lcom/dodonew/online/widget/BaseWebView;->destroy()V

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    .line 241
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 212
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 213
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 216
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 225
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 198
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/NewsDetailActivity;->webView:Lcom/dodonew/online/widget/BaseWebView;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 201
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 209
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
