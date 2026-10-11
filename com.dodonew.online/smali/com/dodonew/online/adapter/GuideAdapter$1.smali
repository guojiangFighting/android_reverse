.class Lcom/dodonew/online/adapter/GuideAdapter$1;
.super Ljava/lang/Object;
.source "GuideAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/adapter/GuideAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/adapter/GuideAdapter;


# direct methods
.method constructor <init>(Lcom/dodonew/online/adapter/GuideAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/adapter/GuideAdapter;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dodonew/online/adapter/GuideAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuideAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dodonew/online/adapter/GuideAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuideAdapter;

    iget-object v1, v1, Lcom/dodonew/online/adapter/GuideAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/dodonew/online/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuideAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuideAdapter;

    iget-object v1, v1, Lcom/dodonew/online/adapter/GuideAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/dodonew/online/util/Tools;->saveGuide(Landroid/content/Context;Z)V

    .line 58
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuideAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuideAdapter;

    iget-object v1, v1, Lcom/dodonew/online/adapter/GuideAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    iget-object v1, p0, Lcom/dodonew/online/adapter/GuideAdapter$1;->this$0:Lcom/dodonew/online/adapter/GuideAdapter;

    iget-object v1, v1, Lcom/dodonew/online/adapter/GuideAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 60
    return-void
.end method
