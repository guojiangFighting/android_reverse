.class public Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DodonewonlineSQLiteOpenHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "dodonewonlinecache.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 50
    const-string v0, "dodonewonlinecache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 51
    return-void
.end method

.method public static getInstanse(Landroid/content/Context;)Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 40
    sget-object v0, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    .line 44
    :cond_0
    sget-object v0, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    return-object v0
.end method


# virtual methods
.method public addNetBar(Lcom/dodonew/online/bean/NetBar;Ljava/lang/String;)I
    .locals 10
    .param p1, "netBar"    # Lcom/dodonew/online/bean/NetBar;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 120
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 121
    .local v3, "row":I
    sget-object v5, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    if-eqz v5, :cond_2

    .line 123
    :try_start_0
    sget-object v5, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    invoke-virtual {v5}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select * from DB_SEARCH_RECORDS  where netBarId = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 126
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 124
    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v5, v7, :cond_3

    .line 129
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "netBarId"

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v5, "domainId"

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v5, "netBarName"

    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarCaption()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v5, "insertdate"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v5, "DB_SEARCH_RECORDS"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    long-to-int v3, v6

    .line 145
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 151
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    return v3

    .line 137
    :cond_3
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .restart local v4    # "values":Landroid/content/ContentValues;
    const-string v5, "insertdate"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v5, "DB_SEARCH_RECORDS"

    const-string v6, " netBarId = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 140
    invoke-virtual {p1}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 139
    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 142
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 145
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_5

    .line 146
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v5
.end method

.method public delTabDatas(Ljava/lang/String;)I
    .locals 6
    .param p1, "tabName"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 197
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, -0x1

    .line 198
    .local v3, "row":I
    sget-object v4, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    if-eqz v4, :cond_3

    .line 200
    :try_start_0
    sget-object v4, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    invoke-virtual {v4}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 201
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 206
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    move v4, v3

    .line 212
    :goto_0
    return v4

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 212
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v4, -0x1

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v4
.end method

.method public getRecentlyNetBar()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dodonew/online/bean/NetBar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 74
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/dodonew/online/bean/NetBar;>;"
    sget-object v6, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    if-eqz v6, :cond_1

    .line 78
    :try_start_0
    sget-object v6, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    invoke-virtual {v6}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 79
    const-string v5, "select * from DB_SEARCH_RECORDS order by insertdate desc"

    .line 81
    .local v5, "sql":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    new-instance v4, Lcom/dodonew/online/bean/NetBar;

    invoke-direct {v4}, Lcom/dodonew/online/bean/NetBar;-><init>()V

    .line 85
    .local v4, "netBar":Lcom/dodonew/online/bean/NetBar;
    const-string v6, "domainId"

    .line 86
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 85
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/dodonew/online/bean/NetBar;->setDomainId(Ljava/lang/String;)V

    .line 87
    const-string v6, "netBarId"

    .line 88
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 87
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/dodonew/online/bean/NetBar;->setNetBarId(Ljava/lang/String;)V

    .line 89
    const-string v6, "netBarName"

    .line 90
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 89
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/dodonew/online/bean/NetBar;->setNetBarCaption(Ljava/lang/String;)V

    .line 91
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    .end local v4    # "netBar":Lcom/dodonew/online/bean/NetBar;
    .end local v5    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 104
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v3

    .line 98
    .restart local v5    # "sql":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 98
    .end local v5    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 101
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v6
.end method

.method public initSearchRecord(Ljava/lang/String;)V
    .locals 6
    .param p1, "tabName"    # Ljava/lang/String;

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 159
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 160
    .local v3, "row":I
    sget-object v4, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    if-eqz v4, :cond_2

    .line 162
    :try_start_0
    sget-object v4, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->dbSqLite:Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;

    invoke-virtual {v4}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) AS C  FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 166
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 167
    const-string v4, "C"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 168
    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " where insertdate = (select min(insertdate) from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "); "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 185
    :cond_2
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 179
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 182
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 56
    :try_start_0
    const-string v1, "CREATE TABLE DB_SEARCH_RECORDS(rowid INTEGER PRIMARY KEY autoincrement,domainId TEXT,netBarId,netBarName TEXT,insertdate TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 66
    const-string v0, "DROP TABLE IF EXISTS DB_SEARCH_RECORDS"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/dodonew/online/db/DodonewonlineSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method
