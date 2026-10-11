.class public Lcom/dodonew/online/widget/MWebView;
.super Landroid/webkit/WebView;
.source "MWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/MWebView$MyChromeClient;,
        Lcom/dodonew/online/widget/MWebView$MyWebviewCient;,
        Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;
    }
.end annotation


# instance fields
.field private frameLayout:Landroid/widget/FrameLayout;

.field private myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private myView:Landroid/view/View;

.field public onLoadFinishListener:Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/MWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v0, p0, Lcom/dodonew/online/widget/MWebView;->myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 31
    iput-object v0, p0, Lcom/dodonew/online/widget/MWebView;->myView:Landroid/view/View;

    .line 44
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/MWebView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/MWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/MWebView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/MWebView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/MWebView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView;->myView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/widget/MWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/MWebView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dodonew/online/widget/MWebView;->myView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/MWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/MWebView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView;->myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/widget/MWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/MWebView;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dodonew/online/widget/MWebView;->myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 49
    invoke-virtual {p0}, Lcom/dodonew/online/widget/MWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 50
    .local v5, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v5, v9}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/dodonew/online/widget/MWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080085

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 52
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/dodonew/online/widget/MWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 58
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 59
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 60
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 61
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 62
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 63
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 64
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 65
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 66
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 67
    invoke-virtual {v5, v8}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 68
    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 69
    invoke-virtual {p0, v9}, Lcom/dodonew/online/widget/MWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 70
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-lt v6, v7, :cond_0

    .line 71
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 72
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 74
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

    .line 75
    if-eqz v3, :cond_0

    .line 76
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

    .line 86
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 88
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

    .line 89
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    const-string v6, "setUserAgent"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 90
    .local v4, "method1":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
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

    .line 99
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "method1":Ljava/lang/reflect/Method;
    :goto_2
    const-string v6, "yang"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "         setUserAgentString"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 102
    new-instance v6, Lcom/dodonew/online/widget/MWebView$MyWebviewCient;

    invoke-direct {v6, p0}, Lcom/dodonew/online/widget/MWebView$MyWebviewCient;-><init>(Lcom/dodonew/online/widget/MWebView;)V

    invoke-virtual {p0, v6}, Lcom/dodonew/online/widget/MWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 103
    new-instance v6, Lcom/dodonew/online/widget/MWebView$MyChromeClient;

    invoke-direct {v6, p0}, Lcom/dodonew/online/widget/MWebView$MyChromeClient;-><init>(Lcom/dodonew/online/widget/MWebView;)V

    invoke-virtual {p0, v6}, Lcom/dodonew/online/widget/MWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 104
    return-void

    .line 55
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/MWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto/16 :goto_0

    .line 78
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1

    .line 82
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 92
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "clazz":Ljava/lang/Class;
    :catch_3
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 94
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 96
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getOnLoadFinishListener()Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dodonew/online/widget/MWebView;->onLoadFinishListener:Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 183
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 185
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 187
    return-void
.end method

.method public setFrameLayout(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/dodonew/online/widget/MWebView;->frameLayout:Landroid/widget/FrameLayout;

    .line 200
    return-void
.end method

.method public setOnLoadFinishListener(Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;)V
    .locals 0
    .param p1, "onLoadFinishListener"    # Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dodonew/online/widget/MWebView;->onLoadFinishListener:Lcom/dodonew/online/widget/MWebView$OnLoadFinishListener;

    .line 195
    return-void
.end method
