.class public final enum Lpantanal/app/instant/internal/VisibilityState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/instant/internal/VisibilityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/instant/internal/VisibilityState;

.field public static final enum INIT:Lpantanal/app/instant/internal/VisibilityState;

.field public static final enum INVISIBLE:Lpantanal/app/instant/internal/VisibilityState;

.field public static final enum VISIBLE:Lpantanal/app/instant/internal/VisibilityState;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/instant/internal/VisibilityState;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lpantanal/app/instant/internal/VisibilityState;

    sget-object v1, Lpantanal/app/instant/internal/VisibilityState;->INIT:Lpantanal/app/instant/internal/VisibilityState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/instant/internal/VisibilityState;->VISIBLE:Lpantanal/app/instant/internal/VisibilityState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/instant/internal/VisibilityState;->INVISIBLE:Lpantanal/app/instant/internal/VisibilityState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/instant/internal/VisibilityState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/instant/internal/VisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/instant/internal/VisibilityState;->INIT:Lpantanal/app/instant/internal/VisibilityState;

    new-instance v0, Lpantanal/app/instant/internal/VisibilityState;

    const-string v1, "VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/instant/internal/VisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/instant/internal/VisibilityState;->VISIBLE:Lpantanal/app/instant/internal/VisibilityState;

    new-instance v0, Lpantanal/app/instant/internal/VisibilityState;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/instant/internal/VisibilityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/instant/internal/VisibilityState;->INVISIBLE:Lpantanal/app/instant/internal/VisibilityState;

    invoke-static {}, Lpantanal/app/instant/internal/VisibilityState;->$values()[Lpantanal/app/instant/internal/VisibilityState;

    move-result-object v0

    sput-object v0, Lpantanal/app/instant/internal/VisibilityState;->$VALUES:[Lpantanal/app/instant/internal/VisibilityState;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/instant/internal/VisibilityState;
    .registers 2

    const-class v0, Lpantanal/app/instant/internal/VisibilityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/instant/internal/VisibilityState;

    return-object p0
.end method

.method public static values()[Lpantanal/app/instant/internal/VisibilityState;
    .registers 1

    sget-object v0, Lpantanal/app/instant/internal/VisibilityState;->$VALUES:[Lpantanal/app/instant/internal/VisibilityState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/instant/internal/VisibilityState;

    return-object v0
.end method
