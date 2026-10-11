.class Lcom/dodonew/online/ui/BindCardProvinceActivity$5;
.super Ljava/lang/Object;
.source "BindCardProvinceActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/BindCardProvinceActivity;->setProvinceAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/BindCardProvinceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/BindCardProvinceActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$500(Lcom/dodonew/online/ui/BindCardProvinceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/Province;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$402(Lcom/dodonew/online/ui/BindCardProvinceActivity;Lcom/dodonew/online/bean/Province;)Lcom/dodonew/online/bean/Province;

    .line 169
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$400(Lcom/dodonew/online/ui/BindCardProvinceActivity;)Lcom/dodonew/online/bean/Province;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/bean/Province;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5e02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$400(Lcom/dodonew/online/ui/BindCardProvinceActivity;)Lcom/dodonew/online/bean/Province;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Province;->getDomainid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$400(Lcom/dodonew/online/ui/BindCardProvinceActivity;)Lcom/dodonew/online/bean/Province;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dodonew/online/bean/Province;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$600(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/BindCardProvinceActivity$5;->this$0:Lcom/dodonew/online/ui/BindCardProvinceActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$400(Lcom/dodonew/online/ui/BindCardProvinceActivity;)Lcom/dodonew/online/bean/Province;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/Province;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/BindCardProvinceActivity;->access$700(Lcom/dodonew/online/ui/BindCardProvinceActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
