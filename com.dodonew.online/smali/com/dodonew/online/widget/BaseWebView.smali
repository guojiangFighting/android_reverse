.class public Lcom/dodonew/online/widget/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;,
        Lcom/dodonew/online/widget/BaseWebView$MyWebviewCient;,
        Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;,
        Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;
    }
.end annotation


# static fields
.field private static final APP_CACAHE_DIRNAME:Ljava/lang/String; = "/webcache"


# instance fields
.field private context:Landroid/content/Context;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private myView:Landroid/view/View;

.field public onLoadFinishListener:Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;

.field private onProgressChangedListener:Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dodonew/online/widget/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object v0, p0, Lcom/dodonew/online/widget/BaseWebView;->myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 36
    iput-object v0, p0, Lcom/dodonew/online/widget/BaseWebView;->myView:Landroid/view/View;

    .line 53
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/BaseWebView;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/dodonew/online/widget/BaseWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/BaseWebView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dodonew/online/widget/BaseWebView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/BaseWebView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView;->myView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dodonew/online/widget/BaseWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/BaseWebView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/widget/BaseWebView;->myView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dodonew/online/widget/BaseWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/BaseWebView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView;->myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dodonew/online/widget/BaseWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/dodonew/online/widget/BaseWebView;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dodonew/online/widget/BaseWebView;->myCallBack:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dodonew/online/widget/BaseWebView;)Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/dodonew/online/widget/BaseWebView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView;->onProgressChangedListener:Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 58
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 59
    .local v6, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080085

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 61
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 67
    :goto_0
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 68
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 69
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 70
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 71
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 73
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 74
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 75
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 76
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 78
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/webcache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "cacheDirPath":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v6, v9}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 86
    sget-object v7, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 87
    invoke-virtual {p0, v10}, Lcom/dodonew/online/widget/BaseWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 88
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xf

    if-lt v7, v8, :cond_0

    .line 89
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 90
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 92
    .local v4, "method":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v7, "setAllowUniversalAccessFromFileURLs"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 93
    if-eqz v4, :cond_0

    .line 94
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 106
    .local v1, "clazz":Ljava/lang/Class;
    :try_start_1
    const-string v7, "setPluginsEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 107
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    const-string v7, "setUserAgent"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 108
    .local v5, "method1":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    .line 118
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "method1":Ljava/lang/reflect/Method;
    :goto_2
    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v7

    .line 117
    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 119
    new-instance v7, Lcom/dodonew/online/widget/BaseWebView$MyWebviewCient;

    invoke-direct {v7, p0}, Lcom/dodonew/online/widget/BaseWebView$MyWebviewCient;-><init>(Lcom/dodonew/online/widget/BaseWebView;)V

    invoke-virtual {p0, v7}, Lcom/dodonew/online/widget/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    new-instance v7, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;

    invoke-direct {v7, p0}, Lcom/dodonew/online/widget/BaseWebView$MyChromeClient;-><init>(Lcom/dodonew/online/widget/BaseWebView;)V

    invoke-virtual {p0, v7}, Lcom/dodonew/online/widget/BaseWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    return-void

    .line 64
    .end local v0    # "cacheDirPath":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_1
    invoke-virtual {p0}, Lcom/dodonew/online/widget/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto/16 :goto_0

    .line 96
    .restart local v0    # "cacheDirPath":Ljava/lang/String;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 99
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 110
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "clazz":Ljava/lang/Class;
    :catch_3
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 112
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 114
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public clearWebViewCache(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    :try_start_0
    const-string v3, "webview.db"

    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 224
    const-string v3, "webviewCache.db"

    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/webcache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "appCacheDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/webviewCache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, "webviewCacheDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/BaseWebView;->deleteFile(Ljava/io/File;)V

    .line 237
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    invoke-virtual {p0, v0}, Lcom/dodonew/online/widget/BaseWebView;->deleteFile(Ljava/io/File;)V

    .line 240
    :cond_1
    return-void

    .line 225
    .end local v0    # "appCacheDir":Ljava/io/File;
    .end local v2    # "webviewCacheDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 248
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 257
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 261
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 253
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 254
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/dodonew/online/widget/BaseWebView;->deleteFile(Ljava/io/File;)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    const-string v2, "yang"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete file no exists "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOnLoadFinishListener()Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dodonew/online/widget/BaseWebView;->onLoadFinishListener:Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;

    return-object v0
.end method

.method public setFrameLayout(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/dodonew/online/widget/BaseWebView;->frameLayout:Landroid/widget/FrameLayout;

    .line 214
    return-void
.end method

.method public setOnLoadFinishListener(Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;)V
    .locals 0
    .param p1, "onLoadFinishListener"    # Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dodonew/online/widget/BaseWebView;->onLoadFinishListener:Lcom/dodonew/online/widget/BaseWebView$OnLoadFinishListener;

    .line 205
    return-void
.end method

.method public setOnProgressChangedListener(Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;)V
    .locals 0
    .param p1, "onProgressChangedListener"    # Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/dodonew/online/widget/BaseWebView;->onProgressChangedListener:Lcom/dodonew/online/widget/BaseWebView$OnProgressChangedListener;

    .line 209
    return-void
.end method
