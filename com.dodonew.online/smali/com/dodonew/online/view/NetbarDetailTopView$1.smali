.class Lcom/dodonew/online/view/NetbarDetailTopView$1;
.super Ljava/lang/Object;
.source "NetbarDetailTopView.java"

# interfaces
.implements Lcom/dodonew/online/widget/likeanimation/LikeButtonView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/NetbarDetailTopView;->setNetBar(Lcom/dodonew/online/bean/NetBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

.field final synthetic val$netBar:Lcom/dodonew/online/bean/NetBar;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/NetbarDetailTopView;Lcom/dodonew/online/bean/NetBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/NetbarDetailTopView;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iput-object p2, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->val$netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Z)V
    .locals 10
    .param p1, "isChecked"    # Z

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v1}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$000(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v2}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$100(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v3}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$200(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->val$netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v4}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v5}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$300(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->val$netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v6}, Lcom/dodonew/online/bean/NetBar;->getDistance()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v7}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$400(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v8}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$500(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v9}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$600(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$700(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    iget-object v1, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->val$netBar:Lcom/dodonew/online/bean/NetBar;

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/view/NetbarDetailTopView$1;->this$0:Lcom/dodonew/online/view/NetbarDetailTopView;

    invoke-static {v2}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$100(Lcom/dodonew/online/view/NetbarDetailTopView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dodonew/online/view/NetbarDetailTopView;->access$800(Lcom/dodonew/online/view/NetbarDetailTopView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
