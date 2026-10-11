.class public Lcom/mob/commons/appcollector/PackageCollector;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/appcollector/PackageCollector$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/commons/appcollector/PackageCollector;

.field private static b:Lcom/mob/tools/utils/FileLocker;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private g:Lcom/mob/commons/appcollector/a;

.field private h:Lcom/mob/tools/network/NetworkHelper;

.field private i:Landroid/content/pm/PackageManager;

.field private j:Lcom/mob/tools/utils/DeviceHelper;

.field private k:Landroid/content/IntentFilter;

.field private l:Lcom/mob/commons/appcollector/PackageCollector$a;

.field private m:Landroid/os/Handler;

.field private n:Landroid/content/Context;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mob/tools/utils/FileLocker;

    invoke-direct {v0}, Lcom/mob/tools/utils/FileLocker;-><init>()V

    sput-object v0, Lcom/mob/commons/appcollector/PackageCollector;->b:Lcom/mob/tools/utils/FileLocker;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "http://cca.mob.com:80/ca"

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->c:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    aput-object v1, v0, v4

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->d:[Ljava/lang/String;

    iput v4, p0, Lcom/mob/commons/appcollector/PackageCollector;->e:I

    iput v3, p0, Lcom/mob/commons/appcollector/PackageCollector;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->n:Landroid/content/Context;

    iput-object p2, p0, Lcom/mob/commons/appcollector/PackageCollector;->o:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->k:Landroid/content/IntentFilter;

    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->h:Lcom/mob/tools/network/NetworkHelper;

    new-instance v0, Lcom/mob/commons/appcollector/PackageCollector$a;

    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->n:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/mob/commons/appcollector/PackageCollector$a;-><init>(Lcom/mob/commons/appcollector/PackageCollector;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->l:Lcom/mob/commons/appcollector/PackageCollector$a;

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/commons/appcollector/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mob/commons/appcollector/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->g:Lcom/mob/commons/appcollector/a;

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->j:Lcom/mob/tools/utils/DeviceHelper;

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->i:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/mob/commons/appcollector/b;

    const-string v1, "mob.pkc"

    invoke-direct {v0, p0, v1}, Lcom/mob/commons/appcollector/b;-><init>(Lcom/mob/commons/appcollector/PackageCollector;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->m:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->m:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/appcollector/PackageCollector;)Lcom/mob/commons/appcollector/PackageCollector$a;
    .locals 1

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->l:Lcom/mob/commons/appcollector/PackageCollector$a;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->i:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-direct {p0, v3}, Lcom/mob/commons/appcollector/PackageCollector;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "pkg"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "name"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/mob/commons/appcollector/PackageCollector;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "version"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private a(I)Z
    .locals 1

    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    const/16 v8, 0x7530

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "plat"

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->j:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device"

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->j:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getDeviceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->j:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serialno"

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->j:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getSerialno()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mac"

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->j:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->j:Lcom/mob/tools/utils/DeviceHelper;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "list"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "appkey"

    iget-object v4, p0, Lcom/mob/commons/appcollector/PackageCollector;->o:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mob/commons/appcollector/PackageCollector;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "0000000000000000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v3, "m"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v5}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    iput v8, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    iput v8, v5, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->h:Lcom/mob/tools/network/NetworkHelper;

    const-string v1, "http://cca.mob.com:80/ca"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v2, "> uploadApps list resp: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/NLog;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v6

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move v0, v7

    goto :goto_0
.end method

.method static synthetic b(Lcom/mob/commons/appcollector/PackageCollector;)Ljava/util/HashMap;
    .locals 1

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->a()Ljava/util/HashMap;

    move-result-object v2

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->l:Lcom/mob/commons/appcollector/PackageCollector$a;

    invoke-virtual {v0}, Lcom/mob/commons/appcollector/PackageCollector$a;->a()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->g:Lcom/mob/commons/appcollector/a;

    invoke-virtual {v1}, Lcom/mob/commons/appcollector/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    const-string v1, "UNINSTALL"

    invoke-direct {p0, v3}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->l:Lcom/mob/commons/appcollector/PackageCollector$a;

    invoke-virtual {v1}, Lcom/mob/commons/appcollector/PackageCollector$a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->g:Lcom/mob/commons/appcollector/a;

    invoke-virtual {v1}, Lcom/mob/commons/appcollector/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    :try_start_1
    const-string v1, "APPS_INCR"

    invoke-direct {p0, v2}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->l:Lcom/mob/commons/appcollector/PackageCollector$a;

    invoke-virtual {v1, v0}, Lcom/mob/commons/appcollector/PackageCollector$a;->a(Ljava/util/HashMap;)V

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->c()V

    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private c()V
    .locals 6

    const-wide/16 v4, 0x3e8

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->l:Lcom/mob/commons/appcollector/PackageCollector$a;

    invoke-virtual {v0}, Lcom/mob/commons/appcollector/PackageCollector$a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->g:Lcom/mob/commons/appcollector/a;

    invoke-virtual {v1}, Lcom/mob/commons/appcollector/a;->c()I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mob/commons/appcollector/PackageCollector;->g:Lcom/mob/commons/appcollector/a;

    invoke-virtual {v2}, Lcom/mob/commons/appcollector/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v4

    add-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    :try_start_0
    const-string v0, "APPS_ALL"

    iget-object v1, p0, Lcom/mob/commons/appcollector/PackageCollector;->l:Lcom/mob/commons/appcollector/PackageCollector$a;

    invoke-virtual {v1}, Lcom/mob/commons/appcollector/PackageCollector$a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->l:Lcom/mob/commons/appcollector/PackageCollector$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/mob/commons/appcollector/PackageCollector$a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/mob/commons/appcollector/PackageCollector;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->b()V

    return-void
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-class v1, Lcom/mob/commons/appcollector/PackageCollector;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".pkg_lock"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lcom/mob/commons/appcollector/PackageCollector;->b:Lcom/mob/tools/utils/FileLocker;

    invoke-virtual {v2, v0}, Lcom/mob/tools/utils/FileLocker;->setLockFile(Ljava/lang/String;)V

    sget-object v0, Lcom/mob/commons/appcollector/PackageCollector;->b:Lcom/mob/tools/utils/FileLocker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mob/tools/utils/FileLocker;->lock(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mob/commons/appcollector/PackageCollector;

    invoke-direct {v0, p0, p1}, Lcom/mob/commons/appcollector/PackageCollector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    :cond_1
    invoke-static {}, Lcom/mob/commons/appcollector/PackageCollector;->unregister()V

    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    iget-object v2, v2, Lcom/mob/commons/appcollector/PackageCollector;->d:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    iget-object v2, v2, Lcom/mob/commons/appcollector/PackageCollector;->k:Landroid/content/IntentFilter;

    sget-object v3, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    iget-object v3, v3, Lcom/mob/commons/appcollector/PackageCollector;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_3
    sget-object v0, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    iget-object v0, v0, Lcom/mob/commons/appcollector/PackageCollector;->k:Landroid/content/IntentFilter;

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v0, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    iget-object v0, v0, Lcom/mob/commons/appcollector/PackageCollector;->n:Landroid/content/Context;

    sget-object v2, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    sget-object v3, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    iget-object v3, v3, Lcom/mob/commons/appcollector/PackageCollector;->k:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    sget-object v0, Lcom/mob/commons/appcollector/PackageCollector;->b:Lcom/mob/tools/utils/FileLocker;

    invoke-virtual {v0}, Lcom/mob/tools/utils/FileLocker;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return v4
.end method

.method public static declared-synchronized unregister()V
    .locals 3

    const-class v1, Lcom/mob/commons/appcollector/PackageCollector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    iget-object v0, v0, Lcom/mob/commons/appcollector/PackageCollector;->n:Landroid/content/Context;

    sget-object v2, Lcom/mob/commons/appcollector/PackageCollector;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mob/commons/appcollector/PackageCollector;->c()V

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->m:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/mob/commons/appcollector/PackageCollector;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector;->m:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
