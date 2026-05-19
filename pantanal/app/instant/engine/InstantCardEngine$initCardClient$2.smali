.class final Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/engine/InstantCardEngine;->initCardClient(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInstantCardEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstantCardEngine.kt\npantanal/app/instant/engine/InstantCardEngine$initCardClient$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,517:1\n215#2,2:518\n*S KotlinDebug\n*F\n+ 1 InstantCardEngine.kt\npantanal/app/instant/engine/InstantCardEngine$initCardClient$2\n*L\n357#1:518,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/instant/engine/InstantCardEngine;


# direct methods
.method public constructor <init>(Lpantanal/app/instant/engine/InstantCardEngine;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$2;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$2;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 6

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$2;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {v0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getInstantConfiguration$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/instant/InstantConfiguration;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lpantanal/app/instant/InstantConfiguration;->getInterceptors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpantanal/app/instant/IInstantCardInterceptor;

    sget-object v4, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    invoke-virtual {v4, v3, v2}, Lpantanal/app/instant/engine/InstantAppCardClient;->putCardInterceptor(Ljava/lang/String;Lpantanal/app/instant/IInstantCardInterceptor;)V

    goto :goto_14

    :cond_32
    invoke-virtual {v0}, Lpantanal/app/instant/InstantConfiguration;->getInstantAppLocationProvider()Lpantanal/app/instant/IInstantAppLocationProvider;

    move-result-object v1

    if-eqz v1, :cond_3d

    sget-object v2, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    invoke-virtual {v2, v1}, Lpantanal/app/instant/engine/InstantAppCardClient;->setLocationProvider(Lpantanal/app/instant/IInstantAppLocationProvider;)Z

    :cond_3d
    invoke-virtual {v0}, Lpantanal/app/instant/InstantConfiguration;->getInstantMemCallback()Lpantanal/app/instant/IInstantCardMemCallback;

    move-result-object v0

    if-eqz v0, :cond_48

    sget-object v1, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    invoke-virtual {v1, v0}, Lpantanal/app/instant/engine/InstantAppCardClient;->setCardMemoryInfoCallback(Lpantanal/app/instant/IInstantCardMemCallback;)V

    :cond_48
    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$2;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    invoke-static {v0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getLauncherInterceptor$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/ILaunchInterceptor;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$2;->this$0:Lpantanal/app/instant/engine/InstantCardEngine;

    sget-object v1, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    invoke-static {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->access$getEnableV2Callback$p(Lpantanal/app/instant/engine/InstantCardEngine;)Z

    move-result p0

    invoke-virtual {v1, v0, p0}, Lpantanal/app/instant/engine/InstantAppCardClient;->setLaunchInterceptor(Lpantanal/app/ILaunchInterceptor;Z)V

    :cond_5b
    return-void
.end method
