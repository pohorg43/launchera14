.class public Lio/branch/search/internal/interfaces/LocalInterface$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$c;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_19

    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$c;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p2, p2, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {p2}, Lio/branch/search/v3;->a()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lio/branch/search/internal/interfaces/LocalInterface$c$a;

    invoke-direct {v0, p0, p1}, Lio/branch/search/internal/interfaces/LocalInterface$c$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface$c;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method
