.class Lcom/dodonew/online/ui/FunctionActivity$5;
.super Ljava/lang/Object;
.source "FunctionActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FunctionActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/FunctionActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FunctionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FunctionActivity;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/dodonew/online/ui/FunctionActivity$5;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Z)V
    .locals 4
    .param p1, "isOk"    # Z

    .prologue
    .line 191
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity$5;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FunctionActivity;->access$300(Lcom/dodonew/online/ui/FunctionActivity;)Lcom/dodonew/online/bean/NetBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/dodonew/online/ui/FunctionActivity$5;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/FunctionActivity$5;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/FunctionActivity;->access$300(Lcom/dodonew/online/ui/FunctionActivity;)Lcom/dodonew/online/bean/NetBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/bean/NetBar;->getDomainId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/FunctionActivity$5;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/FunctionActivity;->access$300(Lcom/dodonew/online/ui/FunctionActivity;)Lcom/dodonew/online/bean/NetBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dodonew/online/bean/NetBar;->getNetBarId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dodonew/online/ui/FunctionActivity$5;->this$0:Lcom/dodonew/online/ui/FunctionActivity;

    invoke-static {v3}, Lcom/dodonew/online/ui/FunctionActivity;->access$400(Lcom/dodonew/online/ui/FunctionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dodonew/online/ui/FunctionActivity;->access$500(Lcom/dodonew/online/ui/FunctionActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method
