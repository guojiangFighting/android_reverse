.class public Lcom/dodonew/online/bean/WXPay$WXPayResult;
.super Ljava/lang/Object;
.source "WXPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/bean/WXPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WXPayResult"
.end annotation


# instance fields
.field public appid:Ljava/lang/String;

.field public noncestr:Ljava/lang/String;

.field public ordernum:Ljava/lang/String;

.field public packageValue:Ljava/lang/String;

.field public partnerid:Ljava/lang/String;

.field public prepayid:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field final synthetic this$0:Lcom/dodonew/online/bean/WXPay;

.field public timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/bean/WXPay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/bean/WXPay;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/dodonew/online/bean/WXPay$WXPayResult;->this$0:Lcom/dodonew/online/bean/WXPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
