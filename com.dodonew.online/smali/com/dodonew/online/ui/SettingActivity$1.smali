.class Lcom/dodonew/online/ui/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/dialog/InformationDialog$OnOkClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/SettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/SettingActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/SettingActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/dodonew/online/ui/SettingActivity$1;->this$0:Lcom/dodonew/online/ui/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Z)V
    .locals 1
    .param p1, "isOk"    # Z

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/dodonew/online/ui/SettingActivity$1;->this$0:Lcom/dodonew/online/ui/SettingActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/SettingActivity;->access$000(Lcom/dodonew/online/ui/SettingActivity;)V

    .line 105
    :cond_0
    return-void
.end method
