.class public final enum Lpantanal/app/groupcard/popup/PopupItemId;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/groupcard/popup/PopupItemId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum CARD_NOT_RECOMMEND:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum CARD_UNSUBSCRIBE:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum DIVIDER:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum SELL_MODE_BUS_SUBWAY:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum SELL_MODE_EXPRESS_DELIVERY:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum SELL_MODE_FLIGHT:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum SELL_MODE_HIGH_SPEED_RAIL:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum SELL_MODE_INFO:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum SELL_MODE_SERVICE_INTRODUCTION:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum SETTING:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum TURN_OFF_REMINDER:Lpantanal/app/groupcard/popup/PopupItemId;

.field public static final enum UNKNOWN:Lpantanal/app/groupcard/popup/PopupItemId;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/groupcard/popup/PopupItemId;
    .registers 3

    const/16 v0, 0xc

    new-array v0, v0, [Lpantanal/app/groupcard/popup/PopupItemId;

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->UNKNOWN:Lpantanal/app/groupcard/popup/PopupItemId;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->DIVIDER:Lpantanal/app/groupcard/popup/PopupItemId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->SETTING:Lpantanal/app/groupcard/popup/PopupItemId;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->TURN_OFF_REMINDER:Lpantanal/app/groupcard/popup/PopupItemId;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->CARD_NOT_RECOMMEND:Lpantanal/app/groupcard/popup/PopupItemId;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->CARD_UNSUBSCRIBE:Lpantanal/app/groupcard/popup/PopupItemId;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_SERVICE_INTRODUCTION:Lpantanal/app/groupcard/popup/PopupItemId;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_BUS_SUBWAY:Lpantanal/app/groupcard/popup/PopupItemId;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_EXPRESS_DELIVERY:Lpantanal/app/groupcard/popup/PopupItemId;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_HIGH_SPEED_RAIL:Lpantanal/app/groupcard/popup/PopupItemId;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_FLIGHT:Lpantanal/app/groupcard/popup/PopupItemId;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_INFO:Lpantanal/app/groupcard/popup/PopupItemId;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->UNKNOWN:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "DIVIDER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->DIVIDER:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "SETTING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->SETTING:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "TURN_OFF_REMINDER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->TURN_OFF_REMINDER:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "CARD_NOT_RECOMMEND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->CARD_NOT_RECOMMEND:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "CARD_UNSUBSCRIBE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->CARD_UNSUBSCRIBE:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "SELL_MODE_SERVICE_INTRODUCTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_SERVICE_INTRODUCTION:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "SELL_MODE_BUS_SUBWAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_BUS_SUBWAY:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "SELL_MODE_EXPRESS_DELIVERY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_EXPRESS_DELIVERY:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "SELL_MODE_HIGH_SPEED_RAIL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_HIGH_SPEED_RAIL:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "SELL_MODE_FLIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_FLIGHT:Lpantanal/app/groupcard/popup/PopupItemId;

    new-instance v0, Lpantanal/app/groupcard/popup/PopupItemId;

    const-string v1, "SELL_MODE_INFO"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/popup/PopupItemId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->SELL_MODE_INFO:Lpantanal/app/groupcard/popup/PopupItemId;

    invoke-static {}, Lpantanal/app/groupcard/popup/PopupItemId;->$values()[Lpantanal/app/groupcard/popup/PopupItemId;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->$VALUES:[Lpantanal/app/groupcard/popup/PopupItemId;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/groupcard/popup/PopupItemId;
    .registers 2

    const-class v0, Lpantanal/app/groupcard/popup/PopupItemId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/groupcard/popup/PopupItemId;

    return-object p0
.end method

.method public static values()[Lpantanal/app/groupcard/popup/PopupItemId;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/popup/PopupItemId;->$VALUES:[Lpantanal/app/groupcard/popup/PopupItemId;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/groupcard/popup/PopupItemId;

    return-object v0
.end method
