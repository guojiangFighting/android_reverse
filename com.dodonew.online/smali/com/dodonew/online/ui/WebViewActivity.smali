.class public Lcom/dodonew/online/ui/WebViewActivity;
.super Lcom/dodonew/online/base/TitleActivity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/ui/WebViewActivity$MyChromeClient;,
        Lcom/dodonew/online/ui/WebViewActivity$MyWebviewCient;
    }
.end annotation


# instance fields
.field private chromeClient:Landroid/webkit/WebChromeClient;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private net_url:Ljava/lang/String;

.field private progressbar:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/dodonew/online/base/TitleActivity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 42
    iput-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 213
    return-void
.end method

.method static synthetic access$002(Lcom/dodonew/online/ui/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/ui/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/dodonew/online/ui/WebViewActivity;->net_url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dodonew/online/ui/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/ui/WebViewActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity;->progressbar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected findViewById()V
    .locals 5

    .prologue
    .line 57
    const v2, 0x7f0d0250

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/dodonew/online/ui/WebViewActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 58
    const v2, 0x7f0d0251

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 59
    const v2, 0x7f0d00cf

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/dodonew/online/ui/WebViewActivity;->progressbar:Landroid/widget/ProgressBar;

    .line 60
    invoke-virtual {p0}, Lcom/dodonew/online/ui/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 62
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dodonew/online/ui/WebViewActivity;->net_url:Ljava/lang/String;

    .line 63
    const-string v2, "yang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dodonew/online/ui/WebViewActivity;->net_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     net_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/dodonew/online/ui/WebViewActivity;->setTitle(Ljava/lang/String;)V

    .line 66
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/dodonew/online/ui/WebViewActivity;->setNavigationIcon(I)V

    .line 68
    .end local v1    # "title":Ljava/lang/String;
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

    .line 72
    iget-object v6, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 73
    .local v5, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 74
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    .line 75
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 80
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 81
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 82
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 83
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 84
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 85
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 86
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 87
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 88
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 89
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 90
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 91
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 92
    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 93
    iget-object v6, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v9}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 94
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-lt v6, v7, :cond_0

    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 96
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 98
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

    .line 99
    if-eqz v3, :cond_0

    .line 100
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

    .line 110
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 112
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

    .line 113
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    const-string v6, "setUserAgent"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 114
    .local v4, "method1":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
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

    .line 124
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "method1":Ljava/lang/reflect/Method;
    :goto_2
    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v7, Lcom/dodonew/online/ui/WebViewActivity$MyWebviewCient;

    invoke-direct {v7, p0}, Lcom/dodonew/online/ui/WebViewActivity$MyWebviewCient;-><init>(Lcom/dodonew/online/ui/WebViewActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 126
    new-instance v6, Lcom/dodonew/online/ui/WebViewActivity$MyChromeClient;

    invoke-direct {v6, p0}, Lcom/dodonew/online/ui/WebViewActivity$MyChromeClient;-><init>(Lcom/dodonew/online/ui/WebViewActivity;)V

    iput-object v6, p0, Lcom/dodonew/online/ui/WebViewActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 127
    iget-object v6, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/dodonew/online/ui/WebViewActivity;->chromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 128
    iget-object v6, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/dodonew/online/ui/WebViewActivity;->net_url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 129
    return-void

    .line 77
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_1
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto/16 :goto_0

    .line 102
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 106
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "clazz":Ljava/lang/Class;
    :catch_3
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 118
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 120
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/dodonew/online/base/TitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0300d8

    invoke-virtual {p0, v0}, Lcom/dodonew/online/ui/WebViewActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/dodonew/online/ui/WebViewActivity;->findViewById()V

    .line 50
    invoke-virtual {p0}, Lcom/dodonew/online/ui/WebViewActivity;->initView()V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 54
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onDestroy()V

    .line 206
    iget-object v1, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 207
    iget-object v1, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 208
    iget-object v1, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x37

    invoke-virtual {p0, v1, v0}, Lcom/dodonew/online/ui/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 241
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/dodonew/online/base/TitleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 183
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onPause()V

    .line 185
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 186
    iget-object v1, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 187
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 201
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Lcom/dodonew/online/base/TitleActivity;->onResume()V

    .line 162
    :try_start_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 163
    iget-object v1, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/WebViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    .line 164
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 178
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
