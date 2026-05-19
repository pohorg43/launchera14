.class public final enum Lpantanal/app/groupcard/CardGroupSdk$InitStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/groupcard/CardGroupSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/groupcard/CardGroupSdk$InitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

.field public static final enum INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

.field public static final enum INITIALIZING:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

.field public static final enum NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/groupcard/CardGroupSdk$InitStatus;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZING:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    new-instance v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZING:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    new-instance v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-static {}, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->$values()[Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->$VALUES:[Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/groupcard/CardGroupSdk$InitStatus;
    .registers 2

    const-class v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    return-object p0
.end method

.method public static values()[Lpantanal/app/groupcard/CardGroupSdk$InitStatus;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->$VALUES:[Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    return-object v0
.end method
