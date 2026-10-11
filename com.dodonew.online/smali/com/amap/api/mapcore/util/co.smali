.class public Lcom/amap/api/mapcore/util/co;
.super Ljava/lang/Object;
.source "DBOperation.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/cs;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/amap/api/mapcore/util/cn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/cn;)V
    .locals 6

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/cs;

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cn;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cn;->c()I

    move-result v4

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/cs;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/mapcore/util/cn;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->a:Lcom/amap/api/mapcore/util/cs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    iput-object p2, p0, Lcom/amap/api/mapcore/util/co;->c:Lcom/amap/api/mapcore/util/cn;

    .line 32
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->a:Lcom/amap/api/mapcore/util/cs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cs;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    if-nez p1, :cond_0

    .line 39
    const-string v1, "DBOperation"

    const-string v2, "getReadAbleDataBase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v0, ""

    .line 78
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const/4 v0, 0x0

    :goto_2
    move v1, v0

    .line 76
    goto :goto_1

    .line 72
    :cond_1
    const-string v4, " and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    .line 78
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/amap/api/mapcore/util/cp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->a()Landroid/content/ContentValues;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private b(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->a:Lcom/amap/api/mapcore/util/cs;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/cs;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "DBOperation"

    const-string v2, "getReadAbleDataBase"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/cp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/co;->a(Lcom/amap/api/mapcore/util/cp;Z)V

    .line 167
    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/cp;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->c:Lcom/amap/api/mapcore/util/cn;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/amap/api/mapcore/util/co;->c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/co;->a(Lcom/amap/api/mapcore/util/cp;)V

    .line 157
    :goto_0
    monitor-exit v1

    .line 159
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/amap/api/mapcore/util/co;->b(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/amap/api/mapcore/util/cp;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->c:Lcom/amap/api/mapcore/util/cn;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/co;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 177
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_0
    return-void

    .line 180
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/co;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/amap/api/mapcore/util/cp;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 189
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :try_start_3
    const-string v2, "DataBase"

    const-string v3, "insertData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 184
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_4

    .line 185
    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 186
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->c:Lcom/amap/api/mapcore/util/cn;

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 87
    :cond_0
    monitor-exit v1

    .line 106
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/co;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    .line 93
    monitor-exit v1

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 96
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    :cond_5
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :try_start_3
    const-string v2, "DataBase"

    const-string v3, "deleteData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 100
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_6

    .line 101
    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->c:Lcom/amap/api/mapcore/util/cn;

    monitor-enter v1

    .line 115
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    monitor-exit v1

    .line 144
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->a()Landroid/content/ContentValues;

    move-result-object v0

    .line 119
    if-nez v0, :cond_2

    .line 120
    monitor-exit v1

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 122
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    :cond_3
    invoke-direct {p0, p3}, Lcom/amap/api/mapcore/util/co;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_5

    .line 126
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 139
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 143
    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    if-nez p3, :cond_7

    .line 132
    :try_start_4
    const-string v2, "DataBase"

    const-string v3, "updateData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_6

    .line 139
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 135
    :cond_7
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 138
    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_8

    .line 139
    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 140
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_8
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->c:Lcom/amap/api/mapcore/util/cn;

    monitor-enter v1

    .line 218
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    monitor-exit v1

    .line 244
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/co;->b(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    .line 225
    monitor-exit v1

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 229
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 230
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/cp;

    .line 231
    iget-object v3, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v3, v0}, Lcom/amap/api/mapcore/util/co;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/amap/api/mapcore/util/cp;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    :try_start_2
    const-string v2, "DataBase"

    const-string v3, "insertListData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 238
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 239
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 242
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 233
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    :try_start_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 239
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_2

    .line 238
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 239
    iget-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 240
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public b(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;Z)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 248
    iget-object v10, p0, Lcom/amap/api/mapcore/util/co;->c:Lcom/amap/api/mapcore/util/cn;

    monitor-enter v10

    .line 249
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0, p3}, Lcom/amap/api/mapcore/util/co;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 255
    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v8

    .line 299
    :goto_0
    return-object v0

    .line 258
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p2}, Lcom/amap/api/mapcore/util/cp;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 261
    if-nez v1, :cond_5

    .line 262
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 277
    if-eqz v1, :cond_3

    .line 278
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    :cond_3
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    :cond_4
    :goto_2
    :try_start_5
    monitor-exit v10

    move-object v0, v8

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    if-nez p3, :cond_3

    .line 282
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 291
    :catch_1
    move-exception v0

    .line 292
    if-nez p3, :cond_4

    .line 293
    :try_start_6
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 266
    :cond_5
    :goto_3
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 267
    invoke-interface {p2, v1}, Lcom/amap/api/mapcore/util/cp;->b(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 270
    :catch_2
    move-exception v0

    .line 271
    :goto_4
    if-nez p3, :cond_6

    .line 272
    :try_start_8
    const-string v2, "DataBase"

    const-string v3, "searchListData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 277
    :cond_6
    if-eqz v1, :cond_7

    .line 278
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 287
    :cond_7
    :goto_5
    :try_start_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    .line 288
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 299
    :cond_8
    :goto_6
    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v0, v8

    goto :goto_0

    .line 277
    :cond_9
    if-eqz v1, :cond_a

    .line 278
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 287
    :cond_a
    :goto_7
    :try_start_d
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    .line 288
    iget-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 291
    :catch_3
    move-exception v0

    .line 292
    if-nez p3, :cond_8

    .line 293
    :try_start_e
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 280
    :catch_4
    move-exception v0

    .line 281
    if-nez p3, :cond_a

    .line 282
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 280
    :catch_5
    move-exception v0

    .line 281
    if-nez p3, :cond_7

    .line 282
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 291
    :catch_6
    move-exception v0

    .line 292
    if-nez p3, :cond_8

    .line 293
    const-string v1, "DataBase"

    const-string v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    .line 276
    :catchall_1
    move-exception v0

    move-object v1, v9

    .line 277
    :goto_8
    if-eqz v1, :cond_b

    .line 278
    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 287
    :cond_b
    :goto_9
    :try_start_10
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_c

    .line 288
    iget-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/mapcore/util/co;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 296
    :cond_c
    :goto_a
    :try_start_11
    throw v0

    .line 280
    :catch_7
    move-exception v1

    .line 281
    if-nez p3, :cond_b

    .line 282
    const-string v2, "DataBase"

    const-string v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 291
    :catch_8
    move-exception v1

    .line 292
    if-nez p3, :cond_c

    .line 293
    const-string v2, "DataBase"

    const-string v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/cd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_a

    .line 276
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 270
    :catch_9
    move-exception v0

    move-object v1, v9

    goto/16 :goto_4
.end method

.method public b(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/co;->a(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;Z)V

    .line 110
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/cp",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/co;->b(Ljava/lang/String;Lcom/amap/api/mapcore/util/cp;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
