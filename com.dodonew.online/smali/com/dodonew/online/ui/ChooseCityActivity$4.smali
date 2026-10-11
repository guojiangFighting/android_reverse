.class Lcom/dodonew/online/ui/ChooseCityActivity$4;
.super Ljava/lang/Object;
.source "ChooseCityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 219
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$4;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$4;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$800(Lcom/dodonew/online/ui/ChooseCityActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$4;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$500(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$4;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1000(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/SearchView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$4;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$4;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$1000(Lcom/dodonew/online/ui/ChooseCityActivity;)Lcom/dodonew/online/view/SearchView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 225
    return-void
.end method
