.class Lcom/dodonew/online/ui/MyCollectionActivity$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "MyCollectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyCollectionActivity;->queryMyCollection()V
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
        "Lcom/dodonew/online/bean/CollectionResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyCollectionActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyCollectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyCollectionActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/dodonew/online/ui/MyCollectionActivity$2;->this$0:Lcom/dodonew/online/ui/MyCollectionActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
