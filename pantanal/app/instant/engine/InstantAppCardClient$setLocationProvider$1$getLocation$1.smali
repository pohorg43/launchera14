.class public final Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1$getLocation$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/IInstantAppLocationProvider$LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1;->getLocation(Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider$LocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $locationCallback:Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider$LocationCallback;


# direct methods
.method public constructor <init>(Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider$LocationCallback;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1$getLocation$1;->$locationCallback:Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider$LocationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetLocation(Landroid/location/Location;)V
    .registers 15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocationProvider, onGetLocation from entrance, location:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "InstantCardClient"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantAppCardClient$setLocationProvider$1$getLocation$1;->$locationCallback:Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider$LocationCallback;

    invoke-interface {p0, p1}, Lcom/nearme/instant/xcard/provider/HostLocationAsyncProvider$LocationCallback;->onGetLocation(Landroid/location/Location;)V

    return-void
.end method
