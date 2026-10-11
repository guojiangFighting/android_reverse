.class public Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;
.super Ljava/lang/Object;
.source "ZFBPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/bean/ZFBPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZFBPayResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/bean/ZFBPay;

.field public zfbparam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/bean/ZFBPay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/bean/ZFBPay;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/dodonew/online/bean/ZFBPay$ZFBPayResult;->this$0:Lcom/dodonew/online/bean/ZFBPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
