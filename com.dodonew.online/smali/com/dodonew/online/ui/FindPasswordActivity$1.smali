.class Lcom/dodonew/online/ui/FindPasswordActivity$1;
.super Ljava/lang/Object;
.source "FindPasswordActivity.java"

# interfaces
.implements Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FindPasswordActivity;->registerSMSReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FindPasswordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FindPasswordActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dodonew/online/ui/FindPasswordActivity$1;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSms(Ljava/lang/String;)V
    .locals 1
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$1;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->access$000(Lcom/dodonew/online/ui/FindPasswordActivity;)Lcom/dodonew/online/fragment/FindStepFargment2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dodonew/online/fragment/FindStepFargment2;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/dodonew/online/ui/FindPasswordActivity$1;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/FindPasswordActivity;->access$000(Lcom/dodonew/online/ui/FindPasswordActivity;)Lcom/dodonew/online/fragment/FindStepFargment2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dodonew/online/fragment/FindStepFargment2;->setCode(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method
