.class Lcom/dodonew/online/ui/MyActiveActivity$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "MyActiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyActiveActivity;->queryMyActive()V
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
        "Lcom/dodonew/online/bean/MyActiveResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyActiveActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyActiveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyActiveActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dodonew/online/ui/MyActiveActivity$2;->this$0:Lcom/dodonew/online/ui/MyActiveActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
