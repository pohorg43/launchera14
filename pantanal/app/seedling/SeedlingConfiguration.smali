.class public final Lpantanal/app/seedling/SeedlingConfiguration;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final engineType:Lpantanal/app/seedling/SeedingEngineType;


# direct methods
.method public constructor <init>(Lpantanal/app/seedling/SeedingEngineType;)V
    .registers 3

    const-string v0, "engineType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingConfiguration;->engineType:Lpantanal/app/seedling/SeedingEngineType;

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/seedling/SeedlingConfiguration;Lpantanal/app/seedling/SeedingEngineType;ILjava/lang/Object;)Lpantanal/app/seedling/SeedlingConfiguration;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lpantanal/app/seedling/SeedlingConfiguration;->engineType:Lpantanal/app/seedling/SeedingEngineType;

    :cond_6
    invoke-virtual {p0, p1}, Lpantanal/app/seedling/SeedlingConfiguration;->copy(Lpantanal/app/seedling/SeedingEngineType;)Lpantanal/app/seedling/SeedlingConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lpantanal/app/seedling/SeedingEngineType;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingConfiguration;->engineType:Lpantanal/app/seedling/SeedingEngineType;

    return-object p0
.end method

.method public final copy(Lpantanal/app/seedling/SeedingEngineType;)Lpantanal/app/seedling/SeedlingConfiguration;
    .registers 2

    const-string p0, "engineType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/seedling/SeedlingConfiguration;

    invoke-direct {p0, p1}, Lpantanal/app/seedling/SeedlingConfiguration;-><init>(Lpantanal/app/seedling/SeedingEngineType;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/seedling/SeedlingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/seedling/SeedlingConfiguration;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingConfiguration;->engineType:Lpantanal/app/seedling/SeedingEngineType;

    iget-object p1, p1, Lpantanal/app/seedling/SeedlingConfiguration;->engineType:Lpantanal/app/seedling/SeedingEngineType;

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getEngineType()Lpantanal/app/seedling/SeedingEngineType;
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingConfiguration;->engineType:Lpantanal/app/seedling/SeedingEngineType;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingConfiguration;->engineType:Lpantanal/app/seedling/SeedingEngineType;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingConfiguration;->engineType:Lpantanal/app/seedling/SeedingEngineType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeedlingConfiguration(engineType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
