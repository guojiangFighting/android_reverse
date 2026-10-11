.class public abstract Lcom/amap/api/mapcore/util/cw;
.super Ljava/lang/Object;
.source "LogEntity.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amap/api/mapcore/util/cp",
        "<",
        "Lcom/amap/api/mapcore/util/cx;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Lcom/amap/api/mapcore/util/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->l:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cw;->a:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->m:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cw;->b:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->n:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cw;->c:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->f:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cw;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cw;->e:Lcom/amap/api/mapcore/util/cx;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/cw;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    sget-object v1, Lcom/amap/api/mapcore/util/cw;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {v0}, Lcom/amap/api/mapcore/util/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 23
    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cw;->e:Lcom/amap/api/mapcore/util/cx;

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/cw;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cw;->e:Lcom/amap/api/mapcore/util/cx;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/cx;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/amap/api/mapcore/util/cw;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cw;->e:Lcom/amap/api/mapcore/util/cx;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/cx;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    sget-object v0, Lcom/amap/api/mapcore/util/cw;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cw;->e:Lcom/amap/api/mapcore/util/cx;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/cx;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/amap/api/mapcore/util/cw;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cw;->e:Lcom/amap/api/mapcore/util/cx;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/cx;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 37
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/cx;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 44
    .line 46
    if-nez p1, :cond_0

    .line 65
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 52
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 55
    new-instance v1, Lcom/amap/api/mapcore/util/cx;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/cx;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/cx;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/cx;->a(I)V

    .line 58
    invoke-static {v4}, Lcom/amap/api/mapcore/util/dd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/cx;->b(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/util/cx;->b(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 63
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public a(Lcom/amap/api/mapcore/util/cx;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cw;->e:Lcom/amap/api/mapcore/util/cx;

    .line 72
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/amap/api/mapcore/util/cx;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cw;->a(Lcom/amap/api/mapcore/util/cx;)V

    return-void
.end method

.method public synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cw;->a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/cx;

    move-result-object v0

    return-object v0
.end method
