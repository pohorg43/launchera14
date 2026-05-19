.class public final enum Lpantanal/app/Form;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/Form;

.field public static final enum Banner:Lpantanal/app/Form;

.field public static final enum Bubble:Lpantanal/app/Form;

.field public static final enum Capsule:Lpantanal/app/Form;

.field public static final enum Panel:Lpantanal/app/Form;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/Form;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lpantanal/app/Form;

    sget-object v1, Lpantanal/app/Form;->Bubble:Lpantanal/app/Form;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/Form;->Capsule:Lpantanal/app/Form;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/Form;->Banner:Lpantanal/app/Form;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/Form;->Panel:Lpantanal/app/Form;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/Form;

    const-string v1, "Bubble"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/Form;->Bubble:Lpantanal/app/Form;

    new-instance v0, Lpantanal/app/Form;

    const-string v1, "Capsule"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/Form;->Capsule:Lpantanal/app/Form;

    new-instance v0, Lpantanal/app/Form;

    const-string v1, "Banner"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/Form;->Banner:Lpantanal/app/Form;

    new-instance v0, Lpantanal/app/Form;

    const-string v1, "Panel"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lpantanal/app/Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/Form;->Panel:Lpantanal/app/Form;

    invoke-static {}, Lpantanal/app/Form;->$values()[Lpantanal/app/Form;

    move-result-object v0

    sput-object v0, Lpantanal/app/Form;->$VALUES:[Lpantanal/app/Form;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/Form;
    .registers 2

    const-class v0, Lpantanal/app/Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/Form;

    return-object p0
.end method

.method public static values()[Lpantanal/app/Form;
    .registers 1

    sget-object v0, Lpantanal/app/Form;->$VALUES:[Lpantanal/app/Form;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/Form;

    return-object v0
.end method
