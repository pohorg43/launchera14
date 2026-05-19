.class public final enum Lpantanal/app/bean/PantaCardEngineType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/bean/PantaCardEngineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/bean/PantaCardEngineType;

.field public static final enum INSTANT:Lpantanal/app/bean/PantaCardEngineType;

.field public static final enum SEEDLING:Lpantanal/app/bean/PantaCardEngineType;

.field public static final enum SMART_ENGINE:Lpantanal/app/bean/PantaCardEngineType;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/bean/PantaCardEngineType;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lpantanal/app/bean/PantaCardEngineType;

    sget-object v1, Lpantanal/app/bean/PantaCardEngineType;->SMART_ENGINE:Lpantanal/app/bean/PantaCardEngineType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/PantaCardEngineType;->INSTANT:Lpantanal/app/bean/PantaCardEngineType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/PantaCardEngineType;->SEEDLING:Lpantanal/app/bean/PantaCardEngineType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/bean/PantaCardEngineType;

    const-string v1, "SMART_ENGINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/bean/PantaCardEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/bean/PantaCardEngineType;->SMART_ENGINE:Lpantanal/app/bean/PantaCardEngineType;

    new-instance v0, Lpantanal/app/bean/PantaCardEngineType;

    const-string v1, "INSTANT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/bean/PantaCardEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/bean/PantaCardEngineType;->INSTANT:Lpantanal/app/bean/PantaCardEngineType;

    new-instance v0, Lpantanal/app/bean/PantaCardEngineType;

    const-string v1, "SEEDLING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/bean/PantaCardEngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/bean/PantaCardEngineType;->SEEDLING:Lpantanal/app/bean/PantaCardEngineType;

    invoke-static {}, Lpantanal/app/bean/PantaCardEngineType;->$values()[Lpantanal/app/bean/PantaCardEngineType;

    move-result-object v0

    sput-object v0, Lpantanal/app/bean/PantaCardEngineType;->$VALUES:[Lpantanal/app/bean/PantaCardEngineType;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/bean/PantaCardEngineType;
    .registers 2

    const-class v0, Lpantanal/app/bean/PantaCardEngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/bean/PantaCardEngineType;

    return-object p0
.end method

.method public static values()[Lpantanal/app/bean/PantaCardEngineType;
    .registers 1

    sget-object v0, Lpantanal/app/bean/PantaCardEngineType;->$VALUES:[Lpantanal/app/bean/PantaCardEngineType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/bean/PantaCardEngineType;

    return-object v0
.end method
