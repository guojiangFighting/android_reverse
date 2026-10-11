.class Lcom/dodonew/online/fragment/MyOrderRechargeFragment$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "MyOrderRechargeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/MyOrderRechargeFragment;->queryMyOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/dodonew/online/bean/RequestResult",
        "<",
        "Lcom/dodonew/online/bean/MyOrderRechargeResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/MyOrderRechargeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/dodonew/online/fragment/MyOrderRechargeFragment$2;->this$0:Lcom/dodonew/online/fragment/MyOrderRechargeFragment;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
