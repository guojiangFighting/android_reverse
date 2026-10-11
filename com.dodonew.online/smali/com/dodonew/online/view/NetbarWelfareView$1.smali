.class Lcom/dodonew/online/view/NetbarWelfareView$1;
.super Ljava/lang/Object;
.source "NetbarWelfareView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarWelfareView;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarWelfareView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarWelfareView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarWelfareView;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v3, 0x0

    .line 105
    const/4 v0, 0x1

    .line 106
    .local v0, "needRefresh":Z
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-virtual {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->initData()V

    .line 107
    packed-switch p2, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$700(Lcom/dodonew/online/view/NetbarWelfareView;)V

    .line 131
    :goto_1
    return-void

    .line 109
    :pswitch_0
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    sget-object v2, Lcom/dodonew/online/view/NetbarWelfareView$Tag;->ticket:Lcom/dodonew/online/view/NetbarWelfareView$Tag;

    invoke-static {v1, v2}, Lcom/dodonew/online/view/NetbarWelfareView;->access$002(Lcom/dodonew/online/view/NetbarWelfareView;Lcom/dodonew/online/view/NetbarWelfareView$Tag;)Lcom/dodonew/online/view/NetbarWelfareView$Tag;

    .line 110
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1, v3}, Lcom/dodonew/online/view/NetbarWelfareView;->access$102(Lcom/dodonew/online/view/NetbarWelfareView;Lcom/dodonew/online/adapter/TicketAdapter;)Lcom/dodonew/online/adapter/TicketAdapter;

    .line 111
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$200(Lcom/dodonew/online/view/NetbarWelfareView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$200(Lcom/dodonew/online/view/NetbarWelfareView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$300(Lcom/dodonew/online/view/NetbarWelfareView;)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    sget-object v2, Lcom/dodonew/online/view/NetbarWelfareView$Tag;->active:Lcom/dodonew/online/view/NetbarWelfareView$Tag;

    invoke-static {v1, v2}, Lcom/dodonew/online/view/NetbarWelfareView;->access$002(Lcom/dodonew/online/view/NetbarWelfareView;Lcom/dodonew/online/view/NetbarWelfareView$Tag;)Lcom/dodonew/online/view/NetbarWelfareView$Tag;

    .line 118
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1, v3}, Lcom/dodonew/online/view/NetbarWelfareView;->access$402(Lcom/dodonew/online/view/NetbarWelfareView;Lcom/dodonew/online/adapter/MyActiveAdapter;)Lcom/dodonew/online/adapter/MyActiveAdapter;

    .line 119
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$500(Lcom/dodonew/online/view/NetbarWelfareView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$500(Lcom/dodonew/online/view/NetbarWelfareView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$600(Lcom/dodonew/online/view/NetbarWelfareView;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/view/NetbarWelfareView$1;->this$0:Lcom/dodonew/online/view/NetbarWelfareView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarWelfareView;->access$800(Lcom/dodonew/online/view/NetbarWelfareView;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v1

    sget-object v2, Lcom/dodonew/online/widget/MultiStateView$ViewState;->CONTENT:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v1, v2}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f0d023c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
