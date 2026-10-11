.class public Lcom/dodonew/online/ui/PlayVideoActivity;
.super Lcom/dodonew/online/base/BaseActivity;
.source "PlayVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;,
        Lcom/dodonew/online/ui/PlayVideoActivity$MyWebviewCient;
    }
.end annotation


# instance fields
.field private chromeClient:Landroid/webkit/WebChromeClient;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private myView:Landroid/view/View;

.field private net_url:Ljava/lang/String;

.field private progressbar:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/dodonew/online/base/BaseActivity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 41
    iput-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->myView:Landroid/view/View;

    .line 42
    iput-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 43
    iput-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 220
    return-void
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/PlayVideoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/PlayVideoActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->net_url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/PlayVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->progressbar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/PlayVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->myView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/ui/PlayVideoActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/PlayVideoActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->myView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/PlayVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/PlayVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dodonew/online/ui/PlayVideoActivity;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/PlayVideoActivity;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/dodonew/online/ui/PlayVideoActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/PlayVideoActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected findViewById()V
    .locals 2

    .prologue
    .line 58
    const v1, 0x7f0d0250

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 59
    const v1, 0x7f0d0251

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    .line 60
    const v1, 0x7f0d00cf

    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/PlayVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->progressbar:Landroid/widget/ProgressBar;

    .line 61
    invoke-virtual {p0}, Lcom/dodonew/online/ui/PlayVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 63
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->net_url:Ljava/lang/String;

    .line 65
    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 69
    iget-object v6, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 70
    .local v5, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/dodonew/online/ui/PlayVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080085

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 72
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    .line 73
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 78
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 79
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 80
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 81
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 82
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 83
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 84
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 85
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 86
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 87
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 88
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 89
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 90
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/dodonew/online/ui/PlayVideoActivity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 93
    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 94
    iget-object v6, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 95
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-lt v6, v7, :cond_0

    .line 96
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 97
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 99
    .local v3, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v6, "setAllowUniversalAccessFromFileURLs"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_0

    .line 101
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_1
    const-string v6, "setPluginsEnabled"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 114
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    const-string v6, "setUserAgent"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 115
    .local v4, "method1":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    .line 125
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "method1":Ljava/lang/reflect/Method;
    :goto_2
    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 126
    iget-object v6, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    new-instance v7, Lcom/dodonew/online/ui/PlayVideoActivity$MyWebviewCient;

    invoke-direct {v7, p0}, Lcom/dodonew/online/ui/PlayVideoActivity$MyWebviewCient;-><init>(Lcom/dodonew/online/ui/PlayVideoActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 127
    new-instance v6, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;

    invoke-direct {v6, p0}, Lcom/dodonew/online/ui/PlayVideoActivity$MyChromeClient;-><init>(Lcom/dodonew/online/ui/PlayVideoActivity;)V

    iput-object v6, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 128
    iget-object v6, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 129
    iget-object v6, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->net_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 130
    return-void

    .line 75
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_1
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto/16 :goto_0

    .line 103
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "clazz":Ljava/lang/Class;
    :catch_3
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 119
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 121
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/dodonew/online/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0300d8

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/PlayVideoActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/dodonew/online/ui/PlayVideoActivity;->findViewById()V

    .line 51
    invoke-virtual {p0}, Lcom/dodonew/online/ui/PlayVideoActivity;->initView()V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 55
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onDestroy()V

    .line 218
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 271
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/dodonew/online/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 192
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onPause()V

    .line 194
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 195
    iget-object v1, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 196
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 210
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 169
    invoke-super {p0}, Lcom/dodonew/online/base/BaseActivity;->onResume()V

    .line 171
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 172
    iget-object v1, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/PlayVideoActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 173
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 187
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
