.class Lcom/dodonew/online/ui/ScoreRecordActivity$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "ScoreRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ScoreRecordActivity;->queryScoreRecord()V
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
        "Lcom/dodonew/online/bean/ScoreRecordResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ScoreRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ScoreRecordActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dodonew/online/ui/ScoreRecordActivity$2;->this$0:Lcom/dodonew/online/ui/ScoreRecordActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
