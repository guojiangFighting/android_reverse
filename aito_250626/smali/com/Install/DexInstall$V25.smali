.class public final Lcom/Install/DexInstall$V25;
.super Ljava/lang/Object;
.source "DexInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Install/DexInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V25"
.end annotation


# direct methods
.method public static install(Ljava/lang/ClassLoader;[Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "files"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p0}, Lcom/Install/DexInstall;->findPathList(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, "dexPathList":Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v4, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    invoke-static {v2, p1, v4}, Lcom/Install/DexInstall$V25;->makeInMemoryDexElements(Ljava/lang/Object;[Ljava/nio/ByteBuffer;Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "dexElements"

    invoke-static {v2, v7, v6}, Lcom/Install/DexInstall;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 164
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    .line 165
    .local v3, "e":Ljava/io/IOException;
    sget-object v7, Lcom/Proxy/Defines;->SHOWSTACK:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 166
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    const-string v6, "dexElementsSuppressedExceptions"

    invoke-static {p0, v6}, Lcom/Install/DexInstall;->access$500(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 170
    .local v5, "suppressedExceptionsField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/IOException;

    .line 171
    .local v1, "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    if-nez v1, :cond_3

    .line 172
    nop

    .line 173
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/IOException;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    check-cast v1, [Ljava/io/IOException;

    .line 182
    .restart local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    :goto_1
    invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .end local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    .end local v5    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    :cond_2
    return-void

    .line 175
    .restart local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    .restart local v5    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v0, v6, [Ljava/io/IOException;

    .line 177
    .local v0, "combined":[Ljava/io/IOException;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    array-length v7, v1

    const/4 v8, 0x0

    invoke-static {v1, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    move-object v1, v0

    goto :goto_1
.end method

.method public static makeInMemoryDexElements(Ljava/lang/Object;[Ljava/nio/ByteBuffer;Ljava/util/List;)[Ljava/lang/Object;
    .locals 6
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p1, "dexFiles"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .local p2, "suppressedExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [Ljava/nio/ByteBuffer;

    aput-object v2, v1, v3

    const-class v2, Ljava/util/List;

    aput-object v2, v1, v4

    const-string v2, "makeInMemoryDexElements"

    invoke-static {p0, v2, v1}, Lcom/Install/DexInstall;->access$600(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 190
    .local v0, "makeInMemoryDexElements":Ljava/lang/reflect/Method;
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method
