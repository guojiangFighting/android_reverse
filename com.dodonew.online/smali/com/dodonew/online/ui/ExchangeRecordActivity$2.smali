.class Lcom/dodonew/online/ui/ExchangeRecordActivity$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "ExchangeRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ExchangeRecordActivity;->queryExchangeRecord()V
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
        "Lcom/dodonew/online/bean/ExchangeRecordResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ExchangeRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ExchangeRecordActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/dodonew/online/ui/ExchangeRecordActivity$2;->this$0:Lcom/dodonew/online/ui/ExchangeRecordActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
