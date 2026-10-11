.class Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GuessScoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/adapter/GuessScoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/GuessScoreAdapter;

.field tvName:Landroid/widget/TextView;

.field tv_score:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/GuessScoreAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/GuessScoreAdapter;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuessScoreAdapter$ViewHolder;->this$0:Lcom/dodonew/online/adapter/GuessScoreAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
