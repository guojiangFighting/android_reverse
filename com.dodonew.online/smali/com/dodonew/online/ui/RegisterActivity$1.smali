.class Lcom/dodonew/online/ui/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/dodonew/online/manager/ShortMsgHelper$OnSmsAuthCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/RegisterActivity;->registerSMSReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/RegisterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/RegisterActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/ui/RegisterActivity$1;->this$0:Lcom/dodonew/online/ui/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSms(Ljava/lang/String;)V
    .locals 1
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dodonew/online/ui/RegisterActivity$1;->this$0:Lcom/dodonew/online/ui/RegisterActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/RegisterActivity;->access$000(Lcom/dodonew/online/ui/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method
