.class Lcom/dodonew/online/ui/MyCardActivity$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "MyCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCardActivity;->queryMyCard(Ljava/lang/String;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/dodonew/online/bean/Card;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCardActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCardActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCardActivity$2;->this$0:Lcom/dodonew/online/ui/MyCardActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
