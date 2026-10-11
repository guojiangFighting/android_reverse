.class Lcom/dodonew/online/fragment/NetbarFragment$1;
.super Ljava/lang/Object;
.source "NetbarFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/NetbarFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/NetbarFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/NetbarFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/NetbarFragment;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/dodonew/online/fragment/NetbarFragment$1;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 90
    packed-switch p2, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$1;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NetbarFragment$1;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/NetbarFragment;->access$000(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/view/NetbarView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NetbarFragment;->access$100(Lcom/dodonew/online/fragment/NetbarFragment;Landroid/view/View;)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$1;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    iget-object v1, p0, Lcom/dodonew/online/fragment/NetbarFragment$1;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v1}, Lcom/dodonew/online/fragment/NetbarFragment;->access$200(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/view/NetbarWelfareView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/fragment/NetbarFragment;->access$100(Lcom/dodonew/online/fragment/NetbarFragment;Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$1;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NetbarFragment;->access$200(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/view/NetbarWelfareView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/view/NetbarWelfareView;->initData()V

    .line 97
    iget-object v0, p0, Lcom/dodonew/online/fragment/NetbarFragment$1;->this$0:Lcom/dodonew/online/fragment/NetbarFragment;

    invoke-static {v0}, Lcom/dodonew/online/fragment/NetbarFragment;->access$200(Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/view/NetbarWelfareView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/view/NetbarWelfareView;->queryTicket()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x7f0d01d5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
