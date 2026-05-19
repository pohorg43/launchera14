.class final Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationStart$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onRecentsAnimationStart(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationStart$1;->$bundle:Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;

    invoke-virtual {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationStart$1;->invoke(Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onRecentsAnimationStart$1;->$bundle:Landroid/os/Bundle;

    invoke-interface {p1, p0}, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;->onRecentsAnimationStart(Landroid/os/Bundle;)V

    return-void
.end method
