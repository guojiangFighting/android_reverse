.class public Lcom/Proxy/ACache;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Proxy/ACache$Utils;,
        Lcom/Proxy/ACache$ACacheManager;
    }
.end annotation


# static fields
.field public static mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/Proxy/ACache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCache:Lcom/Proxy/ACache$ACacheManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/Proxy/ACache;->mInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JI)V
    .locals 8
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "max_size"    # J
    .param p4, "max_count"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    new-instance v1, Lcom/Proxy/ACache$ACacheManager;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/Proxy/ACache$ACacheManager;-><init>(Lcom/Proxy/ACache;Ljava/io/File;JILcom/Proxy/ACache$1;)V

    iput-object v1, p0, Lcom/Proxy/ACache;->mCache:Lcom/Proxy/ACache$ACacheManager;

    .line 87
    return-void

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t make dirs in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcom/Proxy/ACache;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "ACache"

    invoke-static {p0, v0}, Lcom/Proxy/ACache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/Proxy/ACache;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/Proxy/ACache;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v0, "f":Ljava/io/File;
    const-wide/32 v2, 0x2faf080

    const v1, 0x7fffffff

    invoke-static {v0, v2, v3, v1}, Lcom/Proxy/ACache;->get(Ljava/io/File;JI)Lcom/Proxy/ACache;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/io/File;JI)Lcom/Proxy/ACache;
    .locals 5
    .param p0, "cacheDir"    # Ljava/io/File;
    .param p1, "max_zise"    # J
    .param p3, "max_count"    # I

    .prologue
    .line 70
    sget-object v1, Lcom/Proxy/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/Proxy/ACache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/Proxy/ACache;

    .line 71
    .local v0, "manager":Lcom/Proxy/ACache;
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/Proxy/ACache;

    .end local v0    # "manager":Lcom/Proxy/ACache;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/Proxy/ACache;-><init>(Ljava/io/File;JI)V

    .line 73
    .restart local v0    # "manager":Lcom/Proxy/ACache;
    sget-object v1, Lcom/Proxy/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/Proxy/ACache;->myPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-object v0
.end method

.method public static myPid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 166
    iget-object v8, p0, Lcom/Proxy/ACache;->mCache:Lcom/Proxy/ACache$ACacheManager;

    invoke-static {v8, p1}, Lcom/Proxy/ACache$ACacheManager;->access$500(Lcom/Proxy/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 167
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v7

    .line 169
    :cond_1
    const/4 v6, 0x0

    .line 170
    .local v6, "removeFile":Z
    const/4 v3, 0x0

    .line 172
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string v5, ""

    .line 175
    .local v5, "readString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentLine":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 178
    :cond_2
    invoke-static {v5}, Lcom/Proxy/ACache$Utils;->access$600(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 179
    invoke-static {v5}, Lcom/Proxy/ACache$Utils;->access$700(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 188
    nop

    .line 190
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    :goto_2
    if-eqz v6, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 181
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v6, 0x1

    .line 188
    nop

    .line 190
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 195
    :goto_3
    nop

    .line 196
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 191
    :catch_1
    move-exception v1

    .line 192
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 184
    .end local v0    # "currentLine":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v5    # "readString":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 185
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    if-eqz v3, :cond_4

    .line 190
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 195
    :cond_4
    :goto_5
    if-eqz v6, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 191
    :catch_3
    move-exception v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v3, :cond_5

    .line 190
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 195
    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    .line 196
    invoke-virtual {p0, p1}, Lcom/Proxy/ACache;->remove(Ljava/lang/String;)Z

    .line 197
    :cond_6
    throw v7

    .line 191
    :catch_4
    move-exception v1

    .line 192
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 184
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 188
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v4, p0, Lcom/Proxy/ACache;->mCache:Lcom/Proxy/ACache$ACacheManager;

    invoke-static {v4, p1}, Lcom/Proxy/ACache$ACacheManager;->access$300(Lcom/Proxy/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 126
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 128
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    nop

    .line 135
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 136
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 141
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/Proxy/ACache;->mCache:Lcom/Proxy/ACache$ACacheManager;

    invoke-static {v4, v1}, Lcom/Proxy/ACache$ACacheManager;->access$200(Lcom/Proxy/ACache$ACacheManager;Ljava/io/File;)V

    .line 142
    nop

    .line 143
    return-void

    .line 137
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 138
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 131
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    if-eqz v2, :cond_0

    .line 135
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 136
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 137
    :catch_2
    move-exception v0

    goto :goto_1

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_1

    .line 135
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 136
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 141
    :cond_1
    :goto_4
    iget-object v5, p0, Lcom/Proxy/ACache;->mCache:Lcom/Proxy/ACache$ACacheManager;

    invoke-static {v5, v1}, Lcom/Proxy/ACache$ACacheManager;->access$200(Lcom/Proxy/ACache$ACacheManager;Ljava/io/File;)V

    .line 142
    throw v4

    .line 137
    :catch_3
    move-exception v0

    .line 138
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 133
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/Proxy/ACache;->mCache:Lcom/Proxy/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/Proxy/ACache$ACacheManager;->access$1500(Lcom/Proxy/ACache$ACacheManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
