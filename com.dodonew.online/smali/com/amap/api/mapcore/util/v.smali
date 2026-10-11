.class Lcom/amap/api/mapcore/util/v;
.super Ljava/lang/Object;
.source "DTFileEntity.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amap/api/mapcore/util/cp",
        "<",
        "Lcom/amap/api/mapcore/util/w;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/w;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v;->a:Lcom/amap/api/mapcore/util/w;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    sget-object v1, Lcom/amap/api/mapcore/util/y;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    sget-object v1, Lcom/amap/api/mapcore/util/y;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 33
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/v;->a:Lcom/amap/api/mapcore/util/w;

    if-nez v1, :cond_0

    .line 46
    :goto_0
    return-object v0

    .line 38
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/y;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/v;->a:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/amap/api/mapcore/util/y;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/v;->a:Lcom/amap/api/mapcore/util/w;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/w;
    .locals 4

    .prologue
    .line 14
    const/4 v1, 0x0

    .line 16
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/y;->q:Ljava/lang/String;

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    sget-object v0, Lcom/amap/api/mapcore/util/y;->r:Ljava/lang/String;

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 21
    new-instance v0, Lcom/amap/api/mapcore/util/w;

    invoke-direct {v0, v2, v3}, Lcom/amap/api/mapcore/util/w;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 28
    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/w;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/amap/api/mapcore/util/v;->a:Lcom/amap/api/mapcore/util/w;

    .line 62
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/amap/api/mapcore/util/w;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/v;->a(Lcom/amap/api/mapcore/util/w;)V

    return-void
.end method

.method public synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/v;->a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/w;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/amap/api/mapcore/util/y;->b:Ljava/lang/String;

    return-object v0
.end method
