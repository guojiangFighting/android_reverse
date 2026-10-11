.class public Lcom/Install/DexElementsMaker$DexElementsCallable;
.super Ljava/lang/Object;
.source "DexElementsMaker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Install/DexElementsMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexElementsCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[",
        "Ljava/lang/Object;",
        ">;"
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

.field public final id:I

.field public final invoker:Lcom/Install/IHookDexElementsMethodInvoker;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;Lcom/Install/IHookDexElementsMethodInvoker;)V
    .locals 0
    .param p1, "id"    # I
    .param p3, "invoker"    # Lcom/Install/IHookDexElementsMethodInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/Install/IHookDexElementsMethodInvoker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Lcom/Install/DexElementsMaker$DexElementsCallable;->id:I

    .line 134
    iput-object p2, p0, Lcom/Install/DexElementsMaker$DexElementsCallable;->files:Ljava/util/ArrayList;

    .line 135
    iput-object p3, p0, Lcom/Install/DexElementsMaker$DexElementsCallable;->invoker:Lcom/Install/IHookDexElementsMethodInvoker;

    .line 136
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/Install/DexElementsMaker$DexElementsCallable;->call()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 142
    .local v4, "startTime":J
    iget-object v6, p0, Lcom/Install/DexElementsMaker$DexElementsCallable;->invoker:Lcom/Install/IHookDexElementsMethodInvoker;

    iget-object v7, p0, Lcom/Install/DexElementsMaker$DexElementsCallable;->files:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/Install/IHookDexElementsMethodInvoker;->invoke(Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, "objects":[Ljava/lang/Object;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 148
    .end local v1    # "objects":[Ljava/lang/Object;
    .end local v4    # "startTime":J
    :goto_0
    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    const/4 v1, 0x0

    goto :goto_0
.end method
