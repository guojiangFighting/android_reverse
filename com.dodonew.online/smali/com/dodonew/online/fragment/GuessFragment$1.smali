.class Lcom/dodonew/online/fragment/GuessFragment$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "GuessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/GuessFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/GuessFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/GuessFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/dodonew/online/fragment/GuessFragment$1;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dodonew/online/fragment/GuessFragment$1;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/GuessFragment;->access$000(Lcom/dodonew/online/fragment/GuessFragment;Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 115
    return-void
.end method
