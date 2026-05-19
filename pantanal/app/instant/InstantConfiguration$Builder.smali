.class public final Lpantanal/app/instant/InstantConfiguration$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/instant/InstantConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private instantAppLocationProvider:Lpantanal/app/instant/IInstantAppLocationProvider;

.field private instantEngineCallback:Lpantanal/app/OnEngineCallback;

.field private instantMemCallback:Lpantanal/app/instant/IInstantCardMemCallback;

.field private interceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lpantanal/app/instant/IInstantCardInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->interceptors:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addInstantEngineCallback(Lpantanal/app/OnEngineCallback;)Lpantanal/app/instant/InstantConfiguration$Builder;
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->instantEngineCallback:Lpantanal/app/OnEngineCallback;

    return-object p0
.end method

.method public final addInstantMemInfoCallback(Lpantanal/app/instant/IInstantCardMemCallback;)Lpantanal/app/instant/InstantConfiguration$Builder;
    .registers 3

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->instantMemCallback:Lpantanal/app/instant/IInstantCardMemCallback;

    return-object p0
.end method

.method public final addInterceptor(Ljava/lang/String;Lpantanal/app/instant/IInstantCardInterceptor;)Lpantanal/app/instant/InstantConfiguration$Builder;
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->interceptors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final build()Lpantanal/app/instant/InstantConfiguration;
    .registers 2

    new-instance v0, Lpantanal/app/instant/InstantConfiguration;

    invoke-direct {v0, p0}, Lpantanal/app/instant/InstantConfiguration;-><init>(Lpantanal/app/instant/InstantConfiguration$Builder;)V

    return-object v0
.end method

.method public final getInstantAppLocationProvider$pantanal_interface_release()Lpantanal/app/instant/IInstantAppLocationProvider;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->instantAppLocationProvider:Lpantanal/app/instant/IInstantAppLocationProvider;

    return-object p0
.end method

.method public final getInstantEngineCallback$pantanal_interface_release()Lpantanal/app/OnEngineCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->instantEngineCallback:Lpantanal/app/OnEngineCallback;

    return-object p0
.end method

.method public final getInstantMemCallback$pantanal_interface_release()Lpantanal/app/instant/IInstantCardMemCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->instantMemCallback:Lpantanal/app/instant/IInstantCardMemCallback;

    return-object p0
.end method

.method public final getInterceptors$pantanal_interface_release()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lpantanal/app/instant/IInstantCardInterceptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->interceptors:Ljava/util/Map;

    return-object p0
.end method

.method public final locationProvider(Lpantanal/app/instant/IInstantAppLocationProvider;)Lpantanal/app/instant/InstantConfiguration$Builder;
    .registers 3

    const-string v0, "providerInstantApp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->instantAppLocationProvider:Lpantanal/app/instant/IInstantAppLocationProvider;

    return-object p0
.end method

.method public final setInstantAppLocationProvider$pantanal_interface_release(Lpantanal/app/instant/IInstantAppLocationProvider;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->instantAppLocationProvider:Lpantanal/app/instant/IInstantAppLocationProvider;

    return-void
.end method

.method public final setInstantEngineCallback$pantanal_interface_release(Lpantanal/app/OnEngineCallback;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->instantEngineCallback:Lpantanal/app/OnEngineCallback;

    return-void
.end method

.method public final setInstantMemCallback$pantanal_interface_release(Lpantanal/app/instant/IInstantCardMemCallback;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->instantMemCallback:Lpantanal/app/instant/IInstantCardMemCallback;

    return-void
.end method

.method public final setInterceptors$pantanal_interface_release(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lpantanal/app/instant/IInstantCardInterceptor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration$Builder;->interceptors:Ljava/util/Map;

    return-void
.end method
