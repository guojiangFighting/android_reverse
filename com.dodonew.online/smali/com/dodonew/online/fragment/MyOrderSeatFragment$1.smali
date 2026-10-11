.class Lcom/dodonew/online/fragment/MyOrderSeatFragment$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "MyOrderSeatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/MyOrderSeatFragment;->queryMyOrder(Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/MyOrderResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/MyOrderSeatFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/MyOrderSeatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/MyOrderSeatFragment;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dodonew/online/fragment/MyOrderSeatFragment$1;->this$0:Lcom/dodonew/online/fragment/MyOrderSeatFragment;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
