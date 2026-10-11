.class Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$1;
.super Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;
.source "WelcomeScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;-><init>(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;


# direct methods
.method constructor <init>(Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration$1;->this$0:Lcom/stephentuso/welcome/util/WelcomeScreenConfiguration;

    invoke-direct {p0}, Lcom/stephentuso/welcome/ui/WelcomeFragmentHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public fragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/support/v4/app/Fragment;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-object v0
.end method
