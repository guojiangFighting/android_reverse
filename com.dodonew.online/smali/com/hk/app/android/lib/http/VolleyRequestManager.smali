.class public Lcom/hk/app/android/lib/http/VolleyRequestManager;
.super Ljava/lang/Object;
.source "VolleyRequestManager.java"


# static fields
.field private static cacheDir:Ljava/io/File;

.field private static mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/volley/Request;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 88
    :cond_0
    sget-object v0, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 89
    return-void
.end method

.method public static cancelAll(Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/Object;

    .prologue
    .line 96
    sget-object v0, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/hk/app/android/lib/http/VolleyRequestManager;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static getImageLoader()Lcom/android/volley/toolbox/ImageLoader;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RequestQueue not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/HttpStack;
    .param p2, "isDebug"    # Z

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 44
    sput-boolean p2, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 45
    invoke-static {p0}, Lcom/hk/app/android/lib/http/VolleyRequestManager;->innerInit(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isDebug"    # Z

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 38
    sput-boolean p1, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 39
    invoke-static {p0}, Lcom/hk/app/android/lib/http/VolleyRequestManager;->innerInit(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private static innerInit(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {}, Lcom/android/volley/toolbox/Volley;->getCacheDir()Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/hk/app/android/lib/http/VolleyRequestManager;->cacheDir:Ljava/io/File;

    .line 50
    const-string v2, "UTF-8"

    invoke-static {v2}, Lcom/hk/app/android/lib/http/VolleyRequestManager;->setDefaultParseCharset(Ljava/lang/String;)V

    .line 52
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 53
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 55
    .local v1, "memClass":I
    const/high16 v2, 0x100000

    mul-int/2addr v2, v1

    div-int/lit8 v0, v2, 0x8

    .line 56
    .local v0, "cacheSize":I
    new-instance v2, Lcom/android/volley/toolbox/ImageLoader;

    sget-object v3, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v4, Lcom/hk/app/android/lib/http/BitmapLruCache;

    invoke-direct {v4, v0}, Lcom/hk/app/android/lib/http/BitmapLruCache;-><init>(I)V

    invoke-direct {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    sput-object v2, Lcom/hk/app/android/lib/http/VolleyRequestManager;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 57
    return-void
.end method

.method public static setDefaultParseCharset(Ljava/lang/String;)V
    .locals 0
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 60
    sput-object p0, Lcom/android/volley/toolbox/HttpHeaderParser;->DEFAULT_PARSE_CHARSET:Ljava/lang/String;

    .line 61
    return-void
.end method
