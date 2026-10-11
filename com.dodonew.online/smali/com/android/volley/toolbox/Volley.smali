.class public Lcom/android/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "volley"

.field private static cacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/volley/toolbox/Volley;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/HttpStack;

    .prologue
    .line 50
    const/4 v4, 0x0

    .line 51
    .local v4, "isOk":Z
    const/4 v10, 0x0

    sput-object v10, Lcom/android/volley/toolbox/Volley;->cacheDir:Ljava/io/File;

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "cacheRoot":Ljava/io/File;
    const-string v10, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "cString":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1    # "cacheRoot":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v1    # "cacheRoot":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    .line 59
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v10, ".nomedia"

    invoke-direct {v6, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v6, "nomedia":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "cString":Ljava/lang/String;
    .end local v6    # "nomedia":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 73
    :cond_1
    new-instance v10, Ljava/io/File;

    const-string v11, "volley"

    invoke-direct {v10, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v10, Lcom/android/volley/toolbox/Volley;->cacheDir:Ljava/io/File;

    .line 75
    const-string v9, "volley/0"

    .line 77
    .local v9, "userAgent":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 79
    .local v3, "info":Landroid/content/pm/PackageInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 83
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    :goto_1
    if-nez p1, :cond_2

    .line 84
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x9

    if-lt v10, v11, :cond_4

    .line 85
    new-instance p1, Lcom/android/volley/toolbox/HurlStack;

    .end local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    invoke-direct {p1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 93
    .restart local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    :cond_2
    :goto_2
    new-instance v5, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v5, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 95
    .local v5, "network":Lcom/android/volley/Network;
    new-instance v8, Lcom/android/volley/RequestQueue;

    new-instance v10, Lcom/android/volley/toolbox/DiskBasedCache;

    sget-object v11, Lcom/android/volley/toolbox/Volley;->cacheDir:Ljava/io/File;

    invoke-direct {v10, v11}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v10, v5}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 96
    .local v8, "queue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v8}, Lcom/android/volley/RequestQueue;->start()V

    .line 98
    return-object v8

    .line 62
    .end local v5    # "network":Lcom/android/volley/Network;
    .end local v8    # "queue":Lcom/android/volley/RequestQueue;
    .end local v9    # "userAgent":Ljava/lang/String;
    .restart local v0    # "cString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "cString":Ljava/lang/String;
    .restart local v9    # "userAgent":Ljava/lang/String;
    :cond_4
    new-instance p1, Lcom/android/volley/toolbox/HttpClientStack;

    .end local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    invoke-static {v9}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v10

    invoke-direct {p1, v10}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    .restart local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    goto :goto_2

    .line 80
    :catch_1
    move-exception v10

    goto :goto_1
.end method
