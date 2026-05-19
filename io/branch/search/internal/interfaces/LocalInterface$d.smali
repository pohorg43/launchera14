.class public Lio/branch/search/internal/interfaces/LocalInterface$d;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$d;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$d;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p1, p1, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {p1}, Lio/branch/search/v3;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lio/branch/search/internal/interfaces/LocalInterface$d$a;

    invoke-direct {p2, p0}, Lio/branch/search/internal/interfaces/LocalInterface$d$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface$d;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
