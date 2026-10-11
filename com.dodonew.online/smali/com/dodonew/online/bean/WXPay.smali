.class public Lcom/dodonew/online/bean/WXPay;
.super Ljava/lang/Object;
.source "WXPay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dodonew/online/bean/WXPay$WXPayResult;
    }
.end annotation


# instance fields
.field private result:Lcom/dodonew/online/bean/WXPay$WXPayResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getResult()Lcom/dodonew/online/bean/WXPay$WXPayResult;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dodonew/online/bean/WXPay;->result:Lcom/dodonew/online/bean/WXPay$WXPayResult;

    return-object v0
.end method

.method public setResult(Lcom/dodonew/online/bean/WXPay$WXPayResult;)V
    .locals 0
    .param p1, "result"    # Lcom/dodonew/online/bean/WXPay$WXPayResult;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/dodonew/online/bean/WXPay;->result:Lcom/dodonew/online/bean/WXPay$WXPayResult;

    .line 17
    return-void
.end method
