.class Lcom/dodonew/online/view/PlayHeadView$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "PlayHeadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/PlayHeadView;->queryUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/dodonew/online/bean/VideoUrlData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/PlayHeadView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/PlayHeadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/PlayHeadView;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/dodonew/online/view/PlayHeadView$2;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
