.class public Lio/branch/search/q1$c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/branch/search/m;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lio/branch/search/q1;


# direct methods
.method public constructor <init>(Lio/branch/search/q1;Lio/branch/search/m;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/q1$c;->b:Lio/branch/search/q1;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/branch/search/q1$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3
    .param p1  # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    iget-object v0, p0, Lio/branch/search/q1$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/m;

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lio/branch/search/q1$c;->b:Lio/branch/search/q1;

    invoke-static {v0}, Lio/branch/search/q1;->c(Lio/branch/search/q1;)V

    iget-object p0, p0, Lio/branch/search/q1$c;->b:Lio/branch/search/q1;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/branch/search/q1;->a(Lio/branch/search/q1;Landroid/net/Network;Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3
    .param p1  # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    iget-object v0, p0, Lio/branch/search/q1$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/m;

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object p0, p0, Lio/branch/search/q1$c;->b:Lio/branch/search/q1;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/branch/search/q1;->a(Lio/branch/search/q1;Landroid/net/Network;Z)V

    return-void
.end method

.method public onUnavailable()V
    .registers 1

    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    return-void
.end method
