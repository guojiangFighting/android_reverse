.class Lcom/amap/api/mapcore/util/u;
.super Ljava/lang/Object;
.source "DTEntity.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/cp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amap/api/mapcore/util/cp",
        "<",
        "Lcom/amap/api/mapcore/util/x;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/mapcore/util/x;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    sget-object v1, Lcom/amap/api/mapcore/util/y;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 74
    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore/util/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/amap/api/mapcore/util/y;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/amap/api/mapcore/util/y;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/amap/api/mapcore/util/y;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/amap/api/mapcore/util/y;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/amap/api/mapcore/util/y;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    sget-object v0, Lcom/amap/api/mapcore/util/y;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    sget-object v0, Lcom/amap/api/mapcore/util/y;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/amap/api/mapcore/util/y;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    sget-object v2, Lcom/amap/api/mapcore/util/y;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/x;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    sget-object v0, Lcom/amap/api/mapcore/util/y;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    sget-object v0, Lcom/amap/api/mapcore/util/y;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/amap/api/mapcore/util/y;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/x;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 96
    goto/16 :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 97
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_2
.end method

.method public a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/x;
    .locals 19

    .prologue
    .line 15
    const/4 v3, 0x0

    .line 17
    :try_start_0
    sget-object v2, Lcom/amap/api/mapcore/util/y;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 18
    sget-object v2, Lcom/amap/api/mapcore/util/y;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 19
    sget-object v2, Lcom/amap/api/mapcore/util/y;->f:Ljava/lang/String;

    .line 20
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 19
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 21
    sget-object v2, Lcom/amap/api/mapcore/util/y;->g:Ljava/lang/String;

    .line 22
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 21
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 24
    sget-object v2, Lcom/amap/api/mapcore/util/y;->h:Ljava/lang/String;

    .line 25
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 24
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 26
    sget-object v2, Lcom/amap/api/mapcore/util/y;->i:Ljava/lang/String;

    .line 27
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 26
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 28
    sget-object v2, Lcom/amap/api/mapcore/util/y;->j:Ljava/lang/String;

    .line 29
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 28
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 30
    sget-object v2, Lcom/amap/api/mapcore/util/y;->k:Ljava/lang/String;

    .line 31
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 30
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 33
    sget-object v2, Lcom/amap/api/mapcore/util/y;->l:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 34
    sget-object v2, Lcom/amap/api/mapcore/util/y;->m:Ljava/lang/String;

    .line 35
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 34
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v15, 0x1

    if-ne v2, v15, :cond_0

    const/4 v2, 0x1

    .line 36
    :goto_0
    sget-object v15, Lcom/amap/api/mapcore/util/y;->n:Ljava/lang/String;

    .line 37
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 36
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 38
    sget-object v16, Lcom/amap/api/mapcore/util/y;->o:Ljava/lang/String;

    .line 39
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 38
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 41
    sget-object v17, Lcom/amap/api/mapcore/util/y;->p:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 44
    new-instance v18, Lcom/amap/api/mapcore/util/r;

    invoke-direct/range {v18 .. v18}, Lcom/amap/api/mapcore/util/r;-><init>()V

    .line 45
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/amap/api/mapcore/util/r;->a(Ljava/lang/String;)V

    .line 46
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore/util/r;->e(Ljava/lang/String;)V

    .line 47
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/amap/api/mapcore/util/r;->d(Ljava/lang/String;)V

    .line 48
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/amap/api/mapcore/util/r;->c(Ljava/lang/String;)V

    .line 50
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/amap/api/mapcore/util/r;->b(Ljava/lang/String;)V

    .line 51
    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Lcom/amap/api/mapcore/util/r;->b(J)V

    .line 52
    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/amap/api/mapcore/util/r;->c(J)V

    .line 53
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/amap/api/mapcore/util/r;->g(Ljava/lang/String;)V

    .line 55
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/amap/api/mapcore/util/r;->a(I)V

    .line 56
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/r;->a(Z)V

    .line 57
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/amap/api/mapcore/util/r;->b(I)V

    .line 58
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/r;->h(Ljava/lang/String;)V

    .line 60
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lcom/amap/api/mapcore/util/r;->a:I

    .line 62
    new-instance v2, Lcom/amap/api/mapcore/util/x;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/amap/api/mapcore/util/x;-><init>(Lcom/amap/api/mapcore/util/r;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    return-object v2

    .line 34
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v3

    .line 69
    goto :goto_1
.end method

.method public a(Lcom/amap/api/mapcore/util/x;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u;->a:Lcom/amap/api/mapcore/util/x;

    .line 116
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/amap/api/mapcore/util/x;

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/u;->a(Lcom/amap/api/mapcore/util/x;)V

    return-void
.end method

.method public synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/u;->a(Landroid/database/Cursor;)Lcom/amap/api/mapcore/util/x;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/amap/api/mapcore/util/y;->a:Ljava/lang/String;

    return-object v0
.end method
