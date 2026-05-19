.class public final enum Lpantanal/app/groupcard/GroupCardLoadingState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/groupcard/GroupCardLoadingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/groupcard/GroupCardLoadingState;

.field public static final enum STATE_ANIMATOR_RUNNING:Lpantanal/app/groupcard/GroupCardLoadingState;

.field public static final enum STATE_LOADING:Lpantanal/app/groupcard/GroupCardLoadingState;

.field public static final enum STATE_LOAD_FAIL:Lpantanal/app/groupcard/GroupCardLoadingState;

.field public static final enum STATE_LOAD_SUCCESS:Lpantanal/app/groupcard/GroupCardLoadingState;

.field public static final enum STATE_NONE:Lpantanal/app/groupcard/GroupCardLoadingState;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/groupcard/GroupCardLoadingState;
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Lpantanal/app/groupcard/GroupCardLoadingState;

    sget-object v1, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_NONE:Lpantanal/app/groupcard/GroupCardLoadingState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_LOADING:Lpantanal/app/groupcard/GroupCardLoadingState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_LOAD_SUCCESS:Lpantanal/app/groupcard/GroupCardLoadingState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_LOAD_FAIL:Lpantanal/app/groupcard/GroupCardLoadingState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_ANIMATOR_RUNNING:Lpantanal/app/groupcard/GroupCardLoadingState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/groupcard/GroupCardLoadingState;

    const-string v1, "STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardLoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_NONE:Lpantanal/app/groupcard/GroupCardLoadingState;

    new-instance v0, Lpantanal/app/groupcard/GroupCardLoadingState;

    const-string v1, "STATE_LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardLoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_LOADING:Lpantanal/app/groupcard/GroupCardLoadingState;

    new-instance v0, Lpantanal/app/groupcard/GroupCardLoadingState;

    const-string v1, "STATE_LOAD_SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardLoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_LOAD_SUCCESS:Lpantanal/app/groupcard/GroupCardLoadingState;

    new-instance v0, Lpantanal/app/groupcard/GroupCardLoadingState;

    const-string v1, "STATE_LOAD_FAIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardLoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_LOAD_FAIL:Lpantanal/app/groupcard/GroupCardLoadingState;

    new-instance v0, Lpantanal/app/groupcard/GroupCardLoadingState;

    const-string v1, "STATE_ANIMATOR_RUNNING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/GroupCardLoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardLoadingState;->STATE_ANIMATOR_RUNNING:Lpantanal/app/groupcard/GroupCardLoadingState;

    invoke-static {}, Lpantanal/app/groupcard/GroupCardLoadingState;->$values()[Lpantanal/app/groupcard/GroupCardLoadingState;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/GroupCardLoadingState;->$VALUES:[Lpantanal/app/groupcard/GroupCardLoadingState;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/groupcard/GroupCardLoadingState;
    .registers 2

    const-class v0, Lpantanal/app/groupcard/GroupCardLoadingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/groupcard/GroupCardLoadingState;

    return-object p0
.end method

.method public static values()[Lpantanal/app/groupcard/GroupCardLoadingState;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/GroupCardLoadingState;->$VALUES:[Lpantanal/app/groupcard/GroupCardLoadingState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/groupcard/GroupCardLoadingState;

    return-object v0
.end method
