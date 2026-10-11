.class Lcom/mob/commons/appcollector/RuntimeCollector$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/appcollector/RuntimeCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/mob/tools/utils/LocalDB;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mob/tools/utils/LocalDB;

    invoke-direct {v0}, Lcom/mob/tools/utils/LocalDB;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    invoke-direct {p0, p1}, Lcom/mob/commons/appcollector/RuntimeCollector$a;->b(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/mob/commons/appcollector/RuntimeCollector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mob/commons/appcollector/RuntimeCollector$a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db_rtcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/tools/utils/LocalDB;

    invoke-direct {v0}, Lcom/mob/tools/utils/LocalDB;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    invoke-direct {p0, p1}, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/LocalDB;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(J)I
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v3, "sdk_time"

    invoke-virtual {v2, v3}, Lcom/mob/tools/utils/LocalDB;->getInt(Ljava/lang/String;)I

    move-result v2

    long-to-int v0, v0

    add-int/2addr v0, v2

    return v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/LocalDB;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "sdk_time"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/LocalDB;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "cache"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/LocalDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "app_status"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/LocalDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/LocalDB;->putLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "app_all"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/LocalDB;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public c(I)I
    .locals 2

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "app_all"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/LocalDB;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/LocalDB;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/commons/appcollector/RuntimeCollector$a;->a:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "app_status"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/LocalDB;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {v0}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method
