.class Lcom/mob/commons/appcollector/PackageCollector$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/appcollector/PackageCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/appcollector/PackageCollector;

.field private final b:Ljava/lang/String;

.field private c:Lcom/mob/tools/utils/LocalDB;


# direct methods
.method public constructor <init>(Lcom/mob/commons/appcollector/PackageCollector;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/mob/commons/appcollector/PackageCollector$a;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".db_accache"

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector$a;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/mob/commons/appcollector/PackageCollector$a;->b(Landroid/content/Context;)V

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

    const-string v1, ".db_accache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector$a;->c:Lcom/mob/tools/utils/LocalDB;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/tools/utils/LocalDB;

    invoke-direct {v0}, Lcom/mob/tools/utils/LocalDB;-><init>()V

    iput-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector$a;->c:Lcom/mob/tools/utils/LocalDB;

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/mob/commons/appcollector/PackageCollector$a;->a(Landroid/content/Context;)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector$a;->c:Lcom/mob/tools/utils/LocalDB;

    invoke-direct {p0, p1}, Lcom/mob/commons/appcollector/PackageCollector$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/LocalDB;->open(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 2
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

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector$a;->c:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/LocalDB;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/mob/tools/utils/R;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector$a;->c:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "time"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/utils/LocalDB;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

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
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector$a;->c:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "cache"

    invoke-virtual {v0, v1, p1}, Lcom/mob/tools/utils/LocalDB;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/mob/commons/appcollector/PackageCollector$a;->c:Lcom/mob/tools/utils/LocalDB;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/LocalDB;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
