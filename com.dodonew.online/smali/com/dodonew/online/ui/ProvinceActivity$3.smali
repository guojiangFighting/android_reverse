.class Lcom/dodonew/online/ui/ProvinceActivity$3;
.super Ljava/lang/Object;
.source "ProvinceActivity.java"

# interfaces
.implements Lcom/dodonew/online/interfaces/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ProvinceActivity;->setProvinceAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ProvinceActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ProvinceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ProvinceActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/dodonew/online/ui/ProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/ProvinceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 119
    invoke-static {}, Lcom/dodonew/online/bean/EventBusManager;->getInstace()Lcom/dodonew/online/bean/EventBusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/EventBusManager;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/dodonew/online/bean/ProvinceEvent;

    iget-object v1, p0, Lcom/dodonew/online/ui/ProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/ProvinceActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ProvinceActivity;->access$200(Lcom/dodonew/online/ui/ProvinceActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dodonew/online/bean/Province;

    invoke-direct {v3, v1}, Lcom/dodonew/online/bean/ProvinceEvent;-><init>(Lcom/dodonew/online/bean/Province;)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "province"

    iget-object v1, p0, Lcom/dodonew/online/ui/ProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/ProvinceActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ProvinceActivity;->access$200(Lcom/dodonew/online/ui/ProvinceActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/dodonew/online/ui/ProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/ProvinceActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/dodonew/online/ui/ProvinceActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    iget-object v1, p0, Lcom/dodonew/online/ui/ProvinceActivity$3;->this$0:Lcom/dodonew/online/ui/ProvinceActivity;

    invoke-virtual {v1}, Lcom/dodonew/online/ui/ProvinceActivity;->finish()V

    .line 124
    return-void
.end method
