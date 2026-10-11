.class Lcom/amap/api/mapcore/util/s;
.super Ljava/lang/Object;
.source "DTDownloadEntity.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amap/api/mapcore/util/cp",
        "<",
        "Lcom/amap/api/mapcore/util/t;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/t;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/s;->a:Lcom/amap/api/mapcore/util/t;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    sget-object v1, Lcom/amap/api/mapcore/util/y;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/s;->a:Lcom/amap/api/mapcore/util/t;

    if-nez v1, :cond_0

    .line 63
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/y;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/s;->a:Lcom/amap/api/mapcore/util/t;

    .line 48
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/t;->a()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/amap/api/mapcore/util/y;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/s;->a:Lcom/amap/api/mapcore/util/t;

    .line 50
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/t;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    sget-object v0, Lcom/amap/api/mapcore/util/y;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/s;->a:Lcom/amap/api/mapcore/util/t;

    .line 52
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/t;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    sget-object v0, Lcom/amap/api/mapcore/util/y;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/s;->a:Lcom/amap/api/mapcore/util/t;

    .line 55
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/t;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    sget-object v0, Lcom/amap/api/mapcore/util/y;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/s;->a:Lcom/amap/api/mapcore/util/t;

    .line 58
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/t;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/t;
    .locals 7

    .prologue
    .line 14
    const/4 v6, 0x0

    .line 16
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/y;->s:Ljava/lang/String;

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    sget-object v0, Lcom/amap/api/mapcore/util/y;->t:Ljava/lang/String;

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 20
    sget-object v0, Lcom/amap/api/mapcore/util/y;->u:Ljava/lang/String;

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 23
    sget-object v0, Lcom/amap/api/mapcore/util/y;->v:Ljava/lang/String;

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 23
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 25
    sget-object v0, Lcom/amap/api/mapcore/util/y;->w:Ljava/lang/String;

    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 28
    new-instance v0, Lcom/amap/api/mapcore/util/t;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/t;-><init>(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v6

    .line 36
    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/t;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amap/api/mapcore/util/s;->a:Lcom/amap/api/mapcore/util/t;

    .line 79
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Lcom/amap/api/mapcore/util/t;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/s;->a(Lcom/amap/api/mapcore/util/t;)V

    return-void
.end method

.method public synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/s;->a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/amap/api/mapcore/util/y;->c:Ljava/lang/String;

    return-object v0
.end method
