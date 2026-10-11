.class Lcom/dodonew/online/ui/SearchNetBarActivity$4;
.super Lcom/google/gson/reflect/TypeToken;
.source "SearchNetBarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SearchNetBarActivity;->queryNetBarByName(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/NetBars;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$4;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
