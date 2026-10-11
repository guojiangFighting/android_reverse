.class public Lcom/dodonew/online/bean/RequestResult;
.super Lcom/dodonew/online/bean/BaseMsg;
.source "RequestResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dodonew/online/bean/BaseMsg;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public response:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/dodonew/online/bean/RequestResult;, "Lcom/dodonew/online/bean/RequestResult<TT;>;"
    invoke-direct {p0}, Lcom/dodonew/online/bean/BaseMsg;-><init>()V

    return-void
.end method
