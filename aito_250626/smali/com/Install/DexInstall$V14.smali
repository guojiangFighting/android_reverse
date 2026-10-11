.class public final Lcom/Install/DexInstall$V14;
.super Ljava/lang/Object;
.source "DexInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Install/DexInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V14"
.end annotation


# direct methods
.method public static synthetic access$200(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
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
    .line 372
    invoke-static {p0, p1, p2}, Lcom/Install/DexInstall$V14;->install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method public static install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 4
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
    .line 382
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v2, "pathList"

    invoke-static {p0, v2}, Lcom/Install/DexInstall;->access$500(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 383
    .local v1, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    .local v0, "dexPathList":Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2, p2}, Lcom/Install/DexInstall$V14;->makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "dexElements"

    invoke-static {v0, v3, v2}, Lcom/Install/DexInstall;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    return-void
.end method

.method public static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;
    .locals 8
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
            ")[",
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
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 396
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/util/ArrayList;

    aput-object v4, v3, v5

    const-class v4, Ljava/io/File;

    aput-object v4, v3, v6

    .line 397
    const-string v4, "makeDexElements"

    invoke-static {p0, v4, v3}, Lcom/Install/DexInstall;->access$600(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 398
    .local v1, "makeDexElements":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/Install/DexInstall;->access$700()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    new-instance v0, Lcom/Install/HookDexElementsMethodInvokerV14;

    invoke-direct {v0, p0, p2, v1}, Lcom/Install/HookDexElementsMethodInvokerV14;-><init>(Ljava/lang/Object;Ljava/io/File;Ljava/lang/reflect/Method;)V

    .line 400
    .local v0, "invoker":Lcom/Install/IHookDexElementsMethodInvoker;
    new-instance v2, Lcom/Install/DexElementsMaker;

    invoke-direct {v2, p1, v0}, Lcom/Install/DexElementsMaker;-><init>(Ljava/util/ArrayList;Lcom/Install/IHookDexElementsMethodInvoker;)V

    .line 402
    .local v2, "maker":Lcom/Install/IDexElementsMaker;
    invoke-interface {v2}, Lcom/Install/IDexElementsMaker;->make()[Ljava/lang/Object;

    move-result-object v3

    .line 404
    .end local v0    # "invoker":Lcom/Install/IHookDexElementsMethodInvoker;
    .end local v2    # "maker":Lcom/Install/IDexElementsMaker;
    :goto_0
    return-object v3

    :cond_0
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    goto :goto_0
.end method
