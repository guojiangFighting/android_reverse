.class public final Lcom/Install/DexInstall$V19;
.super Ljava/lang/Object;
.source "DexInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Install/DexInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V19"
.end annotation


# direct methods
.method public static synthetic access$100(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ClassLoader;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p0, p1, p2}, Lcom/Install/DexInstall$V19;->install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method public static install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 6
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v4, "pathList"

    invoke-static {p0, v4}, Lcom/Install/DexInstall;->access$500(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 329
    .local v2, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "dexPathList":Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v3, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v4, p2, v3}, Lcom/Install/DexInstall$V19;->makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "dexElements"

    invoke-static {v0, v5, v4}, Lcom/Install/DexInstall;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 335
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    .line 336
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/Proxy/Defines;->SHOWSTACK:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 338
    throw v1

    .line 342
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 9
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .local p3, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 353
    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/util/ArrayList;

    aput-object v4, v3, v5

    const-class v4, Ljava/io/File;

    aput-object v4, v3, v6

    const-class v4, Ljava/util/ArrayList;

    aput-object v4, v3, v7

    .line 354
    const-string v4, "makeDexElements"

    invoke-static {p0, v4, v3}, Lcom/Install/DexInstall;->access$600(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 356
    .local v1, "makeDexElements":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/Install/DexInstall;->access$700()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    new-instance v0, Lcom/Install/HookDexElementsMethodInvokerV19V23;

    invoke-direct {v0, p0, p2, v1, p3}, Lcom/Install/HookDexElementsMethodInvokerV19V23;-><init>(Ljava/lang/Object;Ljava/io/File;Ljava/lang/reflect/Method;Ljava/util/ArrayList;)V

    .line 360
    .local v0, "invoker":Lcom/Install/IHookDexElementsMethodInvoker;
    new-instance v2, Lcom/Install/DexElementsMaker;

    invoke-direct {v2, p1, v0}, Lcom/Install/DexElementsMaker;-><init>(Ljava/util/ArrayList;Lcom/Install/IHookDexElementsMethodInvoker;)V

    .line 362
    .local v2, "maker":Lcom/Install/IDexElementsMaker;
    invoke-interface {v2}, Lcom/Install/IDexElementsMaker;->make()[Ljava/lang/Object;

    move-result-object v3

    .line 364
    .end local v0    # "invoker":Lcom/Install/IHookDexElementsMethodInvoker;
    .end local v2    # "maker":Lcom/Install/IDexElementsMaker;
    :goto_0
    return-object v3

    :cond_0
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    aput-object p3, v3, v7

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    goto :goto_0
.end method
