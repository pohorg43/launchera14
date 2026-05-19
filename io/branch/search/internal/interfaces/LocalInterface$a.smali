.class public Lio/branch/search/internal/interfaces/LocalInterface$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic a:Lio/branch/search/internal/interfaces/LocalInterface;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/interfaces/LocalInterface;)V
    .registers 2

    iput-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {p1}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    iget-object p2, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p2, p2, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {p2}, Lio/branch/search/m;->e()Lio/branch/search/e;

    move-result-object p2

    invoke-virtual {p2}, Lio/branch/search/e;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lio/branch/search/internal/interfaces/LocalInterface$a;->a:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p1, p1, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    new-instance p2, Lio/branch/search/internal/interfaces/LocalInterface$a$a;

    invoke-direct {p2, p0}, Lio/branch/search/internal/interfaces/LocalInterface$a$a;-><init>(Lio/branch/search/internal/interfaces/LocalInterface$a;)V

    invoke-virtual {p1, p2}, Lio/branch/search/v3;->a(Ljava/lang/Runnable;)V

    :cond_26
    return-void
.end method
