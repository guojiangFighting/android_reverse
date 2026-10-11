.class Lcom/dodonew/online/ui/GetTicketActivity$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "GetTicketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GetTicketActivity;->queryTicketById(Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/TicketDetail;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GetTicketActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GetTicketActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GetTicketActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dodonew/online/ui/GetTicketActivity$1;->this$0:Lcom/dodonew/online/ui/GetTicketActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
