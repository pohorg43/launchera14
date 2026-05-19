.class public final Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1;
.super Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/engine/InstantAppCardClient;->setLocationProvider(Lpantanal/app/instant/IInstantAppLocationProvider;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $providerInstantApp:Lpantanal/app/instant/IInstantAppLocationProvider;


# direct methods
.method public constructor <init>(Lpantanal/app/instant/IInstantAppLocationProvider;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1;->$providerInstantApp:Lpantanal/app/instant/IInstantAppLocationProvider;

    invoke-direct {p0}, Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation(Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider$LocationCallback;)V
    .registers 14

    const-string v0, "locationCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "InstantCardClient"

    const-string v3, "setLocationProvider, getLocation from instant engine"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1;->$providerInstantApp:Lpantanal/app/instant/IInstantAppLocationProvider;

    new-instance v0, Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1$getLocation$1;

    invoke-direct {v0, p1}, Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1$getLocation$1;-><init>(Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider$LocationCallback;)V

    invoke-interface {p0, v0}, Lpantanal/app/instant/IInstantAppLocationProvider;->getLocation(Lpantanal/app/instant/IInstantAppLocationProvider$LocationCallback;)V

    return-void
.end method
