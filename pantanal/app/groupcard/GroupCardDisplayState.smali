.class public final enum Lpantanal/app/groupcard/GroupCardDisplayState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/groupcard/GroupCardDisplayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/groupcard/GroupCardDisplayState;

.field public static final enum NOT_DISPLAYED:Lpantanal/app/groupcard/GroupCardDisplayState;

.field public static final enum SHOW_ADVICE_OFF_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

.field public static final enum SHOW_NOT_EMPTY_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

.field public static final enum SHOW_NO_PERMISSION_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

.field public static final enum SHOW_NO_SERVICE_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

.field public static final enum SHOW_PRIVACY_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/groupcard/GroupCardDisplayState;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lpantanal/app/groupcard/GroupCardDisplayState;

    sget-object v1, Lpantanal/app/groupcard/GroupCardDisplayState;->NOT_DISPLAYED:Lpantanal/app/groupcard/GroupCardDisplayState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_NOT_EMPTY_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_PRIVACY_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_ADVICE_OFF_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_NO_PERMISSION_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_NO_SERVICE_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/groupcard/GroupCardDisplayState;

    const-string v1, "NOT_DISPLAYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardDisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardDisplayState;->NOT_DISPLAYED:Lpantanal/app/groupcard/GroupCardDisplayState;

    new-instance v0, Lpantanal/app/groupcard/GroupCardDisplayState;

    const-string v1, "SHOW_NOT_EMPTY_VIEW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardDisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_NOT_EMPTY_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    new-instance v0, Lpantanal/app/groupcard/GroupCardDisplayState;

    const-string v1, "SHOW_PRIVACY_VIEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardDisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_PRIVACY_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    new-instance v0, Lpantanal/app/groupcard/GroupCardDisplayState;

    const-string v1, "SHOW_ADVICE_OFF_VIEW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardDisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_ADVICE_OFF_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    new-instance v0, Lpantanal/app/groupcard/GroupCardDisplayState;

    const-string v1, "SHOW_NO_PERMISSION_VIEW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardDisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_NO_PERMISSION_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    new-instance v0, Lpantanal/app/groupcard/GroupCardDisplayState;

    const-string v1, "SHOW_NO_SERVICE_VIEW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardDisplayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_NO_SERVICE_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    invoke-static {}, Lpantanal/app/groupcard/GroupCardDisplayState;->$values()[Lpantanal/app/groupcard/GroupCardDisplayState;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/GroupCardDisplayState;->$VALUES:[Lpantanal/app/groupcard/GroupCardDisplayState;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/groupcard/GroupCardDisplayState;
    .registers 2

    const-class v0, Lpantanal/app/groupcard/GroupCardDisplayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/groupcard/GroupCardDisplayState;

    return-object p0
.end method

.method public static values()[Lpantanal/app/groupcard/GroupCardDisplayState;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/GroupCardDisplayState;->$VALUES:[Lpantanal/app/groupcard/GroupCardDisplayState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/groupcard/GroupCardDisplayState;

    return-object v0
.end method
