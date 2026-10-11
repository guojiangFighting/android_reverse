.class public Lcom/dodonew/online/bean/Recharge;
.super Ljava/lang/Object;
.source "Recharge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/bean/Recharge$Result;
    }
.end annotation


# instance fields
.field private result:Lcom/dodonew/online/bean/Recharge$Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getResult()Lcom/dodonew/online/bean/Recharge$Result;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dodonew/online/bean/Recharge;->result:Lcom/dodonew/online/bean/Recharge$Result;

    return-object v0
.end method

.method public setResult(Lcom/dodonew/online/bean/Recharge$Result;)V
    .locals 0
    .param p1, "result"    # Lcom/dodonew/online/bean/Recharge$Result;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/dodonew/online/bean/Recharge;->result:Lcom/dodonew/online/bean/Recharge$Result;

    .line 18
    return-void
.end method
