.class Lcom/dodonew/online/view/GuessDetailView$1;
.super Ljava/lang/Object;
.source "GuessDetailView.java"

# interfaces
.implements Lcom/dodonew/online/adapter/GuessDetailAdapter$OnConfirmClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/GuessDetailView;->setGuessDetailAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/GuessDetailView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/GuessDetailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/GuessDetailView;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dodonew/online/view/GuessDetailView$1;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Lcom/dodonew/online/bean/ScoreCategory;Ljava/lang/String;I)V
    .locals 4
    .param p1, "scoreCategory"    # Lcom/dodonew/online/bean/ScoreCategory;
    .param p2, "berNum"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 117
    const-string v0, ""

    .line 118
    .local v0, "cmd":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 119
    const-string v0, "ordinary"

    .line 120
    const-string v1, "teamId"

    .line 125
    .local v1, "cmdId":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/dodonew/online/view/GuessDetailView$1;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-virtual {p1}, Lcom/dodonew/online/bean/ScoreCategory;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3, p2}, Lcom/dodonew/online/view/GuessDetailView;->access$000(Lcom/dodonew/online/view/GuessDetailView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 122
    .end local v1    # "cmdId":Ljava/lang/String;
    :cond_0
    const-string v0, "score"

    .line 123
    const-string v1, "scoreId"

    .restart local v1    # "cmdId":Ljava/lang/String;
    goto :goto_0
.end method
