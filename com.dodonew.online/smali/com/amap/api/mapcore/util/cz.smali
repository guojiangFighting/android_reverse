.class public Lcom/amap/api/mapcore/util/cz;
.super Ljava/lang/Object;
.source "SDKEntity.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amap/api/mapcore/util/cp",
        "<",
        "Lcom/amap/api/mapcore/util/bv;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private g:Lcom/amap/api/mapcore/util/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->f:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cz;->a:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->g:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cz;->b:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->k:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cz;->c:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->h:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cz;->d:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->i:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cz;->e:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->j:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/mapcore/util/cz;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/cz;->g:Lcom/amap/api/mapcore/util/bv;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    sget-object v1, Lcom/amap/api/mapcore/util/cz;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {v0}, Lcom/amap/api/mapcore/util/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-object v0

    .line 110
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    array-length v3, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 112
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    :try_start_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/mapcore/util/cz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/amap/api/mapcore/util/cz;->g:Lcom/amap/api/mapcore/util/bv;

    if-nez v1, :cond_0

    .line 46
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
    sget-object v0, Lcom/amap/api/mapcore/util/cz;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->g:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bv;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/amap/api/mapcore/util/cz;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->g:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bv;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/amap/api/mapcore/util/cz;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->g:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bv;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 34
    sget-object v0, Lcom/amap/api/mapcore/util/cz;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->g:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/amap/api/mapcore/util/cz;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->g:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/amap/api/mapcore/util/cz;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/cz;->g:Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bv;->f()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/cz;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)Ljava/lang/String;

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

.method public a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/bv;
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 51
    const/4 v0, 0x0

    .line 53
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/dd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/mapcore/util/dd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/mapcore/util/dd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/mapcore/util/dd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    invoke-direct {p0, v5}, Lcom/amap/api/mapcore/util/cz;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 58
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/mapcore/util/dd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 61
    if-nez v7, :cond_0

    .line 62
    const/4 v1, 0x0

    .line 66
    :cond_0
    new-instance v7, Lcom/amap/api/mapcore/util/bv$a;

    invoke-direct {v7, v2, v3, v4}, Lcom/amap/api/mapcore/util/bv$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/amap/api/mapcore/util/bv$a;->a(Z)Lcom/amap/api/mapcore/util/bv$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore/util/bv$a;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/bv$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/amap/api/mapcore/util/bv$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/bv$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bv$a;->a()Lcom/amap/api/mapcore/util/bv;
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/bl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bl;->printStackTrace()V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore/util/bv;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/amap/api/mapcore/util/cz;->g:Lcom/amap/api/mapcore/util/bv;

    .line 83
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/amap/api/mapcore/util/bv;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cz;->a(Lcom/amap/api/mapcore/util/bv;)V

    return-void
.end method

.method public synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/cz;->a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/bv;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/amap/api/mapcore/util/cu;->a:Ljava/lang/String;

    return-object v0
.end method
