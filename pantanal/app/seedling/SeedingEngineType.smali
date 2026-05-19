.class public final enum Lpantanal/app/seedling/SeedingEngineType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/seedling/SeedingEngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/seedling/SeedingEngineType;

.field public static final enum Lite:Lpantanal/app/seedling/SeedingEngineType;

.field public static final enum Standard:Lpantanal/app/seedling/SeedingEngineType;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/seedling/SeedingEngineType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lpantanal/app/seedling/SeedingEngineType;

    sget-object v1, Lpantanal/app/seedling/SeedingEngineType;->Lite:Lpantanal/app/seedling/SeedingEngineType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/seedling/SeedingEngineType;->Standard:Lpantanal/app/seedling/SeedingEngineType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/seedling/SeedingEngineType;

    const-string v1, "Lite"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/seedling/SeedingEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/seedling/SeedingEngineType;->Lite:Lpantanal/app/seedling/SeedingEngineType;

    new-instance v0, Lpantanal/app/seedling/SeedingEngineType;

    const-string v1, "Standard"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/seedling/SeedingEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/seedling/SeedingEngineType;->Standard:Lpantanal/app/seedling/SeedingEngineType;

    invoke-static {}, Lpantanal/app/seedling/SeedingEngineType;->$values()[Lpantanal/app/seedling/SeedingEngineType;

    move-result-object v0

    sput-object v0, Lpantanal/app/seedling/SeedingEngineType;->$VALUES:[Lpantanal/app/seedling/SeedingEngineType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/seedling/SeedingEngineType;
    .registers 2

    const-class v0, Lpantanal/app/seedling/SeedingEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/seedling/SeedingEngineType;

    return-object p0
.end method

.method public static values()[Lpantanal/app/seedling/SeedingEngineType;
    .registers 1

    sget-object v0, Lpantanal/app/seedling/SeedingEngineType;->$VALUES:[Lpantanal/app/seedling/SeedingEngineType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/seedling/SeedingEngineType;

    return-object v0
.end method
