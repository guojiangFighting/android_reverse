.class public Lcom/android/volley/utils/ImmediateResponseDelivery;
.super Lcom/android/volley/ExecutorDelivery;
.source "ImmediateResponseDelivery.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/android/volley/utils/ImmediateResponseDelivery$1;

    invoke-direct {v0}, Lcom/android/volley/utils/ImmediateResponseDelivery$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/volley/ExecutorDelivery;-><init>(Ljava/util/concurrent/Executor;)V

    .line 22
    return-void
.end method
