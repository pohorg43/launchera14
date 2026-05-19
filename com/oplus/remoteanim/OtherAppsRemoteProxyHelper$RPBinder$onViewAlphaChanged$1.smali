.class final Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onViewAlphaChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onViewAlphaChanged(F)V
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
.field public final synthetic $progress:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onViewAlphaChanged$1;->$progress:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;

    invoke-virtual {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onViewAlphaChanged$1;->invoke(Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    iget p0, p0, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder$onViewAlphaChanged$1;->$progress:F

    invoke-interface {p1, p0}, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;->onViewAlphaChanged(F)V

    return-void
.end method
