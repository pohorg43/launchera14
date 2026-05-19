.class public final enum Lpantanal/app/groupcard/popup/PopupLocation;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/groupcard/popup/PopupLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/groupcard/popup/PopupLocation;

.field public static final enum CENTER:Lpantanal/app/groupcard/popup/PopupLocation;

.field public static final enum LEFT:Lpantanal/app/groupcard/popup/PopupLocation;

.field public static final enum RIGHT:Lpantanal/app/groupcard/popup/PopupLocation;

.field public static final enum UNKNOWN:Lpantanal/app/groupcard/popup/PopupLocation;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/groupcard/popup/PopupLocation;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lpantanal/app/groupcard/popup/PopupLocation;

    sget-object v1, Lpantanal/app/groupcard/popup/PopupLocation;->UNKNOWN:Lpantanal/app/groupcard/popup/PopupLocation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupLocation;->CENTER:Lpantanal/app/groupcard/popup/PopupLocation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupLocation;->LEFT:Lpantanal/app/groupcard/popup/PopupLocation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupLocation;->RIGHT:Lpantanal/app/groupcard/popup/PopupLocation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/groupcard/popup/PopupLocation;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupLocation;->UNKNOWN:Lpantanal/app/groupcard/popup/PopupLocation;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupLocation;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupLocation;->CENTER:Lpantanal/app/groupcard/popup/PopupLocation;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupLocation;

    const-string v1, "LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupLocation;->LEFT:Lpantanal/app/groupcard/popup/PopupLocation;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupLocation;

    const-string v1, "RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupLocation;->RIGHT:Lpantanal/app/groupcard/popup/PopupLocation;

    invoke-static {}, Lpantanal/app/groupcard/popup/PopupLocation;->$values()[Lpantanal/app/groupcard/popup/PopupLocation;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/popup/PopupLocation;->$VALUES:[Lpantanal/app/groupcard/popup/PopupLocation;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/groupcard/popup/PopupLocation;
    .registers 2

    const-class v0, Lpantanal/app/groupcard/popup/PopupLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/groupcard/popup/PopupLocation;

    return-object p0
.end method

.method public static values()[Lpantanal/app/groupcard/popup/PopupLocation;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/popup/PopupLocation;->$VALUES:[Lpantanal/app/groupcard/popup/PopupLocation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/groupcard/popup/PopupLocation;

    return-object v0
.end method
