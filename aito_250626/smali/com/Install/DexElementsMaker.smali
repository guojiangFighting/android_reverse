.class public Lcom/Install/DexElementsMaker;
.super Ljava/lang/Object;
.source "DexElementsMaker.java"

# interfaces
.implements Lcom/Install/IDexElementsMaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Install/DexElementsMaker$DexElementsCallable;
    }
.end annotation


# instance fields
.field public final files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final invoker:Lcom/Install/IHookDexElementsMethodInvoker;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/Install/IHookDexElementsMethodInvoker;)V
    .locals 0
    .param p2, "invoker"    # Lcom/Install/IHookDexElementsMethodInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/Install/IHookDexElementsMethodInvoker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/Install/DexElementsMaker;->files:Ljava/util/ArrayList;

    .line 21
    iput-object p2, p0, Lcom/Install/DexElementsMaker;->invoker:Lcom/Install/IHookDexElementsMethodInvoker;

    .line 22
    return-void
.end method


# virtual methods
.method public final getMaxFileLength()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const-wide/16 v4, 0x0

    .line 109
    .local v4, "max":J
    iget-object v7, p0, Lcom/Install/DexElementsMaker;->files:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 110
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 111
    const-wide/16 v2, 0x0

    .line 112
    .local v2, "length":J
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "tmp":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 115
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v2, v8

    goto :goto_1

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 119
    cmp-long v8, v2, v4

    if-lez v8, :cond_2

    move-wide v4, v2

    :cond_2
    goto :goto_0

    .line 122
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "length":J
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_3
    return-wide v4
.end method

.method public make()[Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/Install/DexElementsMaker;->files:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    .line 28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/Install/DexElementsMaker;->invoker:Lcom/Install/IHookDexElementsMethodInvoker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/Install/DexElementsMaker;->files:Ljava/util/ArrayList;

    invoke-interface {v14, v15}, Lcom/Install/IHookDexElementsMethodInvoker;->invoke(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v6

    .line 73
    :cond_0
    :goto_0
    return-object v6

    .line 32
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/Install/DexElementsMaker;->makeFileList()Ljava/util/ArrayList;

    move-result-object v3

    .line 34
    .local v3, "filesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/io/File;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 35
    .local v10, "size":I
    new-array v4, v10, [Ljava/util/concurrent/FutureTask;

    .line 36
    .local v4, "futureTasks":[Ljava/util/concurrent/FutureTask;, "[Ljava/util/concurrent/FutureTask<[Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v10, :cond_2

    .line 37
    new-instance v15, Ljava/util/concurrent/FutureTask;

    new-instance v16, Lcom/Install/DexElementsMaker$DexElementsCallable;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/Install/DexElementsMaker;->invoker:Lcom/Install/IHookDexElementsMethodInvoker;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v14, v1}, Lcom/Install/DexElementsMaker$DexElementsCallable;-><init>(ILjava/util/ArrayList;Lcom/Install/IHookDexElementsMethodInvoker;)V

    invoke-direct/range {v15 .. v16}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    aput-object v15, v4, v5

    .line 36
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 39
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 41
    .local v12, "start":J
    const/4 v5, 0x1

    :goto_2
    if-ge v5, v10, :cond_3

    .line 42
    new-instance v14, Ljava/lang/Thread;

    aget-object v15, v4, v5

    invoke-direct {v14, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 45
    :cond_3
    const/4 v14, 0x0

    aget-object v14, v4, v14

    invoke-virtual {v14}, Ljava/util/concurrent/FutureTask;->run()V

    .line 47
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v7, "objectsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 51
    .local v8, "objectsTotalLength":I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v10, :cond_5

    .line 52
    :try_start_0
    aget-object v14, v4, v5

    invoke-virtual {v14}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 53
    .local v6, "objects":[Ljava/lang/Object;
    if-eqz v6, :cond_4

    .line 55
    array-length v14, v6

    add-int/2addr v8, v14

    .line 56
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 53
    :cond_4
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Illegal Action"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v6    # "objects":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/Install/DexElementsMaker;->invoker:Lcom/Install/IHookDexElementsMethodInvoker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/Install/DexElementsMaker;->files:Ljava/util/ArrayList;

    invoke-interface {v14, v15}, Lcom/Install/IHookDexElementsMethodInvoker;->invoke(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 59
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    new-array v6, v8, [Ljava/lang/Object;

    .line 61
    .restart local v6    # "objects":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 62
    .local v9, "offset":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    .line 63
    .local v11, "subObjects":[Ljava/lang/Object;
    if-eqz v11, :cond_6

    .line 64
    const/4 v15, 0x0

    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v11, v15, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    array-length v15, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v9, v15

    goto :goto_4
.end method

.method public final makeFileList()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/io/File;>;>;"
    invoke-virtual {p0}, Lcom/Install/DexElementsMaker;->getMaxFileLength()J

    move-result-wide v4

    .line 80
    .local v4, "maxFileLength":J
    const-wide/16 v8, 0x0

    .line 81
    .local v8, "subTotalLength":J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, "subFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v11, p0, Lcom/Install/DexElementsMaker;->files:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 85
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 86
    const-wide/16 v6, 0x0

    .line 87
    .local v6, "subLength":J
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 89
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "tmp":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 90
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v6, v12

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    add-long v12, v6, v8

    cmp-long v12, v12, v4

    if-lez v12, :cond_2

    .line 94
    const-wide/16 v8, 0x0

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "subFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .restart local v3    # "subFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-long/2addr v8, v6

    goto :goto_0

    .line 104
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "file":Ljava/io/File;
    .end local v6    # "subLength":J
    .end local v10    # "tmp":Ljava/lang/String;
    :cond_3
    return-object v2
.end method
