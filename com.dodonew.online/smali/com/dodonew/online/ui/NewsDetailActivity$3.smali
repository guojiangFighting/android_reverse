.class Lcom/dodonew/online/ui/NewsDetailActivity$3;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/NewsDetailActivity;->setOptionsOnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/NewsDetailActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/NewsDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/NewsDetailActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 120
    :pswitch_0
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$202(Lcom/dodonew/online/ui/NewsDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$300(Lcom/dodonew/online/ui/NewsDetailActivity;)Lcom/dodonew/online/bean/News;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$300(Lcom/dodonew/online/ui/NewsDetailActivity;)Lcom/dodonew/online/bean/News;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/News;->getImgs()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$300(Lcom/dodonew/online/ui/NewsDetailActivity;)Lcom/dodonew/online/bean/News;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/News;->getImgs()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "imgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-static {v1, v2}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$202(Lcom/dodonew/online/ui/NewsDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .end local v6    # "imgs":[Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/dodonew/online/util/ShareSdkUtils;

    invoke-static {}, Lcom/dodonew/online/DodonewOnlineApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u561f\u561f\u725b\u5728\u7ebf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$300(Lcom/dodonew/online/ui/NewsDetailActivity;)Lcom/dodonew/online/bean/News;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/News;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$300(Lcom/dodonew/online/ui/NewsDetailActivity;)Lcom/dodonew/online/bean/News;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dodonew/online/bean/News;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v4}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$200(Lcom/dodonew/online/ui/NewsDetailActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/ui/NewsDetailActivity$3;->this$0:Lcom/dodonew/online/ui/NewsDetailActivity;

    invoke-static {v5}, Lcom/dodonew/online/ui/NewsDetailActivity;->access$300(Lcom/dodonew/online/ui/NewsDetailActivity;)Lcom/dodonew/online/bean/News;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dodonew/online/bean/News;->getOriginUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/dodonew/online/util/ShareSdkUtils;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v0, "shareSdkUtils":Lcom/dodonew/online/util/ShareSdkUtils;
    invoke-virtual {v0}, Lcom/dodonew/online/util/ShareSdkUtils;->showShare()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f0d0255
        :pswitch_0
    .end packed-switch
.end method
