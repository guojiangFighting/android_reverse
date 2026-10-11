.class Lcom/dodonew/online/ui/SearchNetBarActivity$2;
.super Ljava/lang/Object;
.source "SearchNetBarActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SearchNetBarActivity;->initEvent()V
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
    .line 141
    iput-object p1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 145
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$200(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dodonew/online/util/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$200(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dodonew/online/view/SearchView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "txt":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$300(Lcom/dodonew/online/ui/SearchNetBarActivity;Ljava/lang/String;)V

    .line 158
    .end local v0    # "txt":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 151
    .restart local v0    # "txt":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1, v4}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$402(Lcom/dodonew/online/ui/SearchNetBarActivity;I)I

    .line 152
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$500(Lcom/dodonew/online/ui/SearchNetBarActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 153
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$600(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$600(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dodonew/online/view/SearchRecordView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$700(Lcom/dodonew/online/ui/SearchNetBarActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/dodonew/online/ui/SearchNetBarActivity$2;->this$0:Lcom/dodonew/online/ui/SearchNetBarActivity;

    invoke-static {v2}, Lcom/dodonew/online/ui/SearchNetBarActivity;->access$600(Lcom/dodonew/online/ui/SearchNetBarActivity;)Lcom/dodonew/online/view/SearchRecordView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
