.class public Lcom/stephentuso/welcome/WelcomeCompletedEvent;
.super Ljava/lang/Object;
.source "WelcomeCompletedEvent.java"


# instance fields
.field public final welcomeScreenKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stephentuso/welcome/WelcomeCompletedEvent;->welcomeScreenKey:Ljava/lang/String;

    .line 16
    return-void
.end method
