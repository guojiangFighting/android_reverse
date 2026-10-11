.class public Lcom/stephentuso/welcome/WelcomeFailedEvent;
.super Ljava/lang/Object;
.source "WelcomeFailedEvent.java"


# instance fields
.field public final welcomeScreenKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeFailedEvent;->welcomeScreenKey:Ljava/lang/String;

    .line 17
    return-void
.end method
