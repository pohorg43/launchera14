.class public final enum Lpantanal/app/bean/Mode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/bean/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/bean/Mode;

.field public static final enum LIFECYCLE:Lpantanal/app/bean/Mode;

.field public static final enum RENDER:Lpantanal/app/bean/Mode;

.field public static final enum STANDARD:Lpantanal/app/bean/Mode;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/bean/Mode;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lpantanal/app/bean/Mode;

    sget-object v1, Lpantanal/app/bean/Mode;->STANDARD:Lpantanal/app/bean/Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Mode;->LIFECYCLE:Lpantanal/app/bean/Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/bean/Mode;->RENDER:Lpantanal/app/bean/Mode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/bean/Mode;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/bean/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/bean/Mode;->STANDARD:Lpantanal/app/bean/Mode;

    new-instance v0, Lpantanal/app/bean/Mode;

    const-string v1, "LIFECYCLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/bean/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/bean/Mode;->LIFECYCLE:Lpantanal/app/bean/Mode;

    new-instance v0, Lpantanal/app/bean/Mode;

    const-string v1, "RENDER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/bean/Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/bean/Mode;->RENDER:Lpantanal/app/bean/Mode;

    invoke-static {}, Lpantanal/app/bean/Mode;->$values()[Lpantanal/app/bean/Mode;

    move-result-object v0

    sput-object v0, Lpantanal/app/bean/Mode;->$VALUES:[Lpantanal/app/bean/Mode;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/bean/Mode;
    .registers 2

    const-class v0, Lpantanal/app/bean/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/bean/Mode;

    return-object p0
.end method

.method public static values()[Lpantanal/app/bean/Mode;
    .registers 1

    sget-object v0, Lpantanal/app/bean/Mode;->$VALUES:[Lpantanal/app/bean/Mode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/bean/Mode;

    return-object v0
.end method
