.class public Lcom/android/volley/mock/WaitableQueue;
.super Ljava/util/concurrent/PriorityBlockingQueue;
.source "WaitableQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/mock/WaitableQueue$MagicStopRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/PriorityBlockingQueue",
        "<",
        "Lcom/android/volley/Request",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final mStopEvent:Ljava/util/concurrent/Semaphore;

.field private final mStopRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 31
    new-instance v0, Lcom/android/volley/mock/WaitableQueue$MagicStopRequest;

    invoke-direct {v0}, Lcom/android/volley/mock/WaitableQueue$MagicStopRequest;-><init>()V

    iput-object v0, p0, Lcom/android/volley/mock/WaitableQueue;->mStopRequest:Lcom/android/volley/Request;

    .line 32
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/volley/mock/WaitableQueue;->mStopEvent:Ljava/util/concurrent/Semaphore;

    .line 30
    return-void
.end method


# virtual methods
.method public take()Lcom/android/volley/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request;

    .line 46
    .local v0, "item":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iget-object v1, p0, Lcom/android/volley/mock/WaitableQueue;->mStopRequest:Lcom/android/volley/Request;

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/volley/mock/WaitableQueue;->mStopEvent:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 48
    invoke-virtual {p0}, Lcom/android/volley/mock/WaitableQueue;->take()Lcom/android/volley/Request;

    move-result-object v0

    .line 50
    .end local v0    # "item":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/volley/mock/WaitableQueue;->take()Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public waitUntilEmpty(J)V
    .locals 3
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/volley/mock/WaitableQueue;->mStopRequest:Lcom/android/volley/Request;

    invoke-virtual {p0, v0}, Lcom/android/volley/mock/WaitableQueue;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/volley/mock/WaitableQueue;->mStopEvent:Ljava/util/concurrent/Semaphore;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 41
    :cond_0
    return-void
.end method
