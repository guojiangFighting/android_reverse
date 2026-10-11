.class Lcom/dodonew/online/ui/SearchNetBarActivity$10;
.super Ljava/lang/Object;
.source "SearchNetBarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SearchNetBarActivity;->setResultViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/SearchNetBarActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/SearchNetBarActivity;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$10;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$10;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$700(Lcom/dodonew/online/ui/SearchNetBarActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$10;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$600(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 413
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$10;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$200(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/dodonew/online/view/SearchView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$10;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$10;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$200(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 415
    return-void
.end method
