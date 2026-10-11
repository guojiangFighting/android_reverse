.class public Lcom/amap/api/mapcore/util/k;
.super Ljava/lang/Thread;
.source "OfflineMapDataVerify.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore/util/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/api/mapcore/util/k;->a:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Lcom/amap/api/mapcore/util/z;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/z;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/k;->b:Lcom/amap/api/mapcore/util/z;

    .line 29
    return-void
.end method

.method private a(Ljava/io/File;)Lcom/amap/api/mapcore/util/r;
    .locals 2

    .prologue
    .line 136
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bk;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/amap/api/mapcore/util/r;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/r;-><init>()V

    .line 139
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/r;->i(Ljava/lang/String;)V

    .line 140
    return-object v1
.end method

.method private a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore/util/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/amap/api/mapcore/util/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    return-object v0

    .line 111
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_0

    .line 115
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 116
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".zip.tmp.dt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    invoke-direct {p0, v4}, Lcom/amap/api/mapcore/util/k;->a(Ljava/io/File;)Lcom/amap/api/mapcore/util/r;

    move-result-object v4

    .line 119
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 115
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k;->b:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/z;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v5, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/k;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/r;

    .line 54
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_1

    .line 58
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->a(Landroid/content/Context;)Lcom/amap/api/mapcore/util/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/h;->a(Ljava/util/ArrayList;)V

    .line 97
    return-void

    .line 66
    :cond_3
    iget v3, v0, Lcom/amap/api/mapcore/util/r;->a:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->b()V

    .line 78
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/k;->a:Landroid/content/Context;

    .line 77
    invoke-static {v3, v4}, Lcom/amap/api/mapcore/util/ag;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sdCard don\'t have"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :catch_0
    move-exception v3

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "delete failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/ag;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k;->b:Lcom/amap/api/mapcore/util/z;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/z;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    iget-object v2, p0, Lcom/amap/api/mapcore/util/k;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/bk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v2, "vmap/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/amap/api/mapcore/util/k;->a:Landroid/content/Context;

    .line 170
    iput-object v0, p0, Lcom/amap/api/mapcore/util/k;->b:Lcom/amap/api/mapcore/util/z;

    .line 171
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/k;->a()V

    .line 34
    return-void
.end method
