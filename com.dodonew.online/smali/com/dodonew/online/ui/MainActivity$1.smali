.class Lcom/dodonew/online/ui/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MainActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MainActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 113
    packed-switch p2, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MainActivity;->access$000(Lcom/dodonew/online/ui/MainActivity;)Lcom/dodonew/online/fragment/HomeFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {}, Lcom/dodonew/online/fragment/HomeFragment;->newInstance()Lcom/dodonew/online/fragment/HomeFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MainActivity;->access$002(Lcom/dodonew/online/ui/MainActivity;Lcom/dodonew/online/fragment/HomeFragment;)Lcom/dodonew/online/fragment/HomeFragment;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MainActivity;->access$100(Lcom/dodonew/online/ui/MainActivity;I)V

    .line 119
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MainActivity;->access$200(Lcom/dodonew/online/ui/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/MainActivity;->access$000(Lcom/dodonew/online/ui/MainActivity;)Lcom/dodonew/online/fragment/HomeFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/ui/MainActivity;->switchContent(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/MainActivity;->access$300(Lcom/dodonew/online/ui/MainActivity;)Lcom/dodonew/online/fragment/NetbarFragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {}, Lcom/dodonew/online/fragment/NetbarFragment;->newInstance()Lcom/dodonew/online/fragment/NetbarFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MainActivity;->access$302(Lcom/dodonew/online/ui/MainActivity;Lcom/dodonew/online/fragment/NetbarFragment;)Lcom/dodonew/online/fragment/NetbarFragment;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MainActivity;->access$100(Lcom/dodonew/online/ui/MainActivity;I)V

    .line 125
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MainActivity;->access$200(Lcom/dodonew/online/ui/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/MainActivity;->access$300(Lcom/dodonew/online/ui/MainActivity;)Lcom/dodonew/online/fragment/NetbarFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/ui/MainActivity;->switchContent(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {}, Lcom/dodonew/online/fragment/MyFragment;->newInstance()Lcom/dodonew/online/fragment/MyFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MainActivity;->access$402(Lcom/dodonew/online/ui/MainActivity;Lcom/dodonew/online/fragment/MyFragment;)Lcom/dodonew/online/fragment/MyFragment;

    .line 129
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/MainActivity;->access$100(Lcom/dodonew/online/ui/MainActivity;I)V

    .line 130
    iget-object v0, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/MainActivity;->access$200(Lcom/dodonew/online/ui/MainActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/MainActivity$1;->this$0:Lcom/dodonew/online/ui/MainActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/MainActivity;->access$400(Lcom/dodonew/online/ui/MainActivity;)Lcom/dodonew/online/fragment/MyFragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/ui/MainActivity;->switchContent(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01ab
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
