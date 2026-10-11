.class public Lcom/Install/HookDexElementsMethodInvokerV14;
.super Ljava/lang/Object;
.source "HookDexElementsMethodInvokerV14.java"

# interfaces
.implements Lcom/Install/IHookDexElementsMethodInvoker;


# instance fields
.field public final dexPathList:Ljava/lang/Object;

.field public final makeDexElements:Ljava/lang/reflect/Method;

.field public final optmizedDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/File;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "dexPathList"    # Ljava/lang/Object;
    .param p2, "optmizedDirectory"    # Ljava/io/File;
    .param p3, "makeDexElements"    # Ljava/lang/reflect/Method;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/Install/HookDexElementsMethodInvokerV14;->dexPathList:Ljava/lang/Object;

    .line 15
    iput-object p2, p0, Lcom/Install/HookDexElementsMethodInvokerV14;->optmizedDirectory:Ljava/io/File;

    .line 16
    iput-object p3, p0, Lcom/Install/HookDexElementsMethodInvokerV14;->makeDexElements:Ljava/lang/reflect/Method;

    .line 17
    return-void
.end method


# virtual methods
.method public invoke(Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/Install/HookDexElementsMethodInvokerV14;->makeDexElements:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/Install/HookDexElementsMethodInvokerV14;->dexPathList:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    iget-object v3, p0, Lcom/Install/HookDexElementsMethodInvokerV14;->optmizedDirectory:Ljava/io/File;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
