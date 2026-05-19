.class public final Lpantanal/app/instant/InstantConfiguration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/instant/InstantConfiguration$Builder;
    }
.end annotation


# instance fields
.field private builder:Lpantanal/app/instant/InstantConfiguration$Builder;

.field private final instantAppLocationProvider:Lpantanal/app/instant/IInstantAppLocationProvider;

.field private final instantEngineCallback:Lpantanal/app/OnEngineCallback;

.field private final instantMemCallback:Lpantanal/app/instant/IInstantCardMemCallback;

.field private final interceptors:Ljava/util/Map;
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
.method public constructor <init>(Lpantanal/app/instant/InstantConfiguration$Builder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    invoke-virtual {p1}, Lpantanal/app/instant/InstantConfiguration$Builder;->getInterceptors$pantanal_interface_release()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->interceptors:Ljava/util/Map;

    iget-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    invoke-virtual {p1}, Lpantanal/app/instant/InstantConfiguration$Builder;->getInstantAppLocationProvider$pantanal_interface_release()Lpantanal/app/instant/IInstantAppLocationProvider;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->instantAppLocationProvider:Lpantanal/app/instant/IInstantAppLocationProvider;

    iget-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    invoke-virtual {p1}, Lpantanal/app/instant/InstantConfiguration$Builder;->getInstantEngineCallback$pantanal_interface_release()Lpantanal/app/OnEngineCallback;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->instantEngineCallback:Lpantanal/app/OnEngineCallback;

    iget-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    invoke-virtual {p1}, Lpantanal/app/instant/InstantConfiguration$Builder;->getInstantMemCallback$pantanal_interface_release()Lpantanal/app/instant/IInstantCardMemCallback;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->instantMemCallback:Lpantanal/app/instant/IInstantCardMemCallback;

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/instant/InstantConfiguration;Lpantanal/app/instant/InstantConfiguration$Builder;ILjava/lang/Object;)Lpantanal/app/instant/InstantConfiguration;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    :cond_6
    invoke-virtual {p0, p1}, Lpantanal/app/instant/InstantConfiguration;->copy(Lpantanal/app/instant/InstantConfiguration$Builder;)Lpantanal/app/instant/InstantConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lpantanal/app/instant/InstantConfiguration$Builder;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    return-object p0
.end method

.method public final copy(Lpantanal/app/instant/InstantConfiguration$Builder;)Lpantanal/app/instant/InstantConfiguration;
    .registers 2

    const-string p0, "builder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/instant/InstantConfiguration;

    invoke-direct {p0, p1}, Lpantanal/app/instant/InstantConfiguration;-><init>(Lpantanal/app/instant/InstantConfiguration$Builder;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/instant/InstantConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/instant/InstantConfiguration;

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    iget-object p1, p1, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getBuilder()Lpantanal/app/instant/InstantConfiguration$Builder;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    return-object p0
.end method

.method public final getInstantAppLocationProvider()Lpantanal/app/instant/IInstantAppLocationProvider;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration;->instantAppLocationProvider:Lpantanal/app/instant/IInstantAppLocationProvider;

    return-object p0
.end method

.method public final getInstantEngineCallback()Lpantanal/app/OnEngineCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration;->instantEngineCallback:Lpantanal/app/OnEngineCallback;

    return-object p0
.end method

.method public final getInstantMemCallback()Lpantanal/app/instant/IInstantCardMemCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration;->instantMemCallback:Lpantanal/app/instant/IInstantCardMemCallback;

    return-object p0
.end method

.method public final getInterceptors()Ljava/util/Map;
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

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration;->interceptors:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setBuilder(Lpantanal/app/instant/InstantConfiguration$Builder;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantConfiguration;->builder:Lpantanal/app/instant/InstantConfiguration$Builder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lpantanal/app/instant/InstantConfiguration;->interceptors:Ljava/util/Map;

    iget-object v1, p0, Lpantanal/app/instant/InstantConfiguration;->instantAppLocationProvider:Lpantanal/app/instant/IInstantAppLocationProvider;

    iget-object v2, p0, Lpantanal/app/instant/InstantConfiguration;->instantEngineCallback:Lpantanal/app/OnEngineCallback;

    iget-object p0, p0, Lpantanal/app/instant/InstantConfiguration;->instantMemCallback:Lpantanal/app/instant/IInstantCardMemCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstantConfiguration(interceptors="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", instantAppLocationProvider="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",instantEngineCallback="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", instantMemCallback="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
