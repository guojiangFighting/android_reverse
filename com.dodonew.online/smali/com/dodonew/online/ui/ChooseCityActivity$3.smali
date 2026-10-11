.class Lcom/dodonew/online/ui/ChooseCityActivity$3;
.super Ljava/lang/Object;
.source "ChooseCityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ChooseCityActivity;->setResultViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ChooseCityActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$3;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "checkId"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$3;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    iget-object v2, p0, Lcom/dodonew/online/ui/ChooseCityActivity$3;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1000(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 215
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$3;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$400(Lcom/dodonew/online/ui/ChooseCityActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/bean/City;

    .line 216
    .local v0, "city":Lcom/dodonew/online/bean/City;
    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$3;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1, v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$200(Lcom/dodonew/online/ui/ChooseCityActivity;Lcom/dodonew/online/bean/City;)V

    .line 217
    return-void
.end method
