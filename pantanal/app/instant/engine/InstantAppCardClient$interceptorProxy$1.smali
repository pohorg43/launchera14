.class public final Lpantanal/app/instant/engine/InstantAppCardClient$interceptorProxy$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nearme/instant/xcard/IInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/instant/engine/InstantAppCardClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public routerIntercept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Lpantanal/app/instant/engine/InstantAppCardClient;->access$getM_INTERCEPTOR_MAP$p()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/app/instant/IInstantCardInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lpantanal/app/instant/IInstantCardInterceptor;->routerIntercept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
