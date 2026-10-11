.class Lcom/dodonew/online/ui/GuessMoreActivity$1;
.super Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;
.source "GuessMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GuessMoreActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GuessMoreActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GuessMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GuessMoreActivity;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 4
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$000(Lcom/dodonew/online/ui/GuessMoreActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$100(Lcom/dodonew/online/ui/GuessMoreActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$102(Lcom/dodonew/online/ui/GuessMoreActivity;I)I

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$202(Lcom/dodonew/online/ui/GuessMoreActivity;I)I

    .line 120
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    const-string v1, "pre"

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$300(Lcom/dodonew/online/ui/GuessMoreActivity;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefresh()V

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    const-string v1, "\u6ca1\u6709\u5386\u53f2\u6570\u636e\u4e86."

    sget-object v2, Lcom/dodonew/online/widget/crouton/Style;->INFO:Lcom/dodonew/online/widget/crouton/Style;

    const v3, 0x7f0d0242

    invoke-static {v0, v1, v2, v3}, Lcom/dodonew/online/widget/crouton/Crouton;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/dodonew/online/widget/crouton/Style;I)Lcom/dodonew/online/widget/crouton/Crouton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/widget/crouton/Crouton;->show()V

    goto :goto_0
.end method

.method public onRefreshLoadMore(Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;)V
    .locals 2
    .param p1, "materialRefreshLayout"    # Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$400(Lcom/dodonew/online/ui/GuessMoreActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$500(Lcom/dodonew/online/ui/GuessMoreActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$502(Lcom/dodonew/online/ui/GuessMoreActivity;I)I

    .line 132
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$202(Lcom/dodonew/online/ui/GuessMoreActivity;I)I

    .line 133
    iget-object v0, p0, Lcom/dodonew/online/ui/GuessMoreActivity$1;->this$0:Lcom/dodonew/online/ui/GuessMoreActivity;

    const-string v1, "now"

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/GuessMoreActivity;->access$300(Lcom/dodonew/online/ui/GuessMoreActivity;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method public onfinish()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/dodonew/online/widget/materialrefresh/MaterialRefreshListener;->onfinish()V

    .line 143
    return-void
.end method
