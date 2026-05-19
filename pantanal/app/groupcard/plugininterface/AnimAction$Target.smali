.class public final enum Lpantanal/app/groupcard/plugininterface/AnimAction$Target;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/groupcard/plugininterface/AnimAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Target"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpantanal/app/groupcard/plugininterface/AnimAction$Target;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

.field public static final enum BACKGROUND:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

.field public static final enum CONTENT:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

.field public static final enum MASK:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;


# direct methods
.method private static final synthetic $values()[Lpantanal/app/groupcard/plugininterface/AnimAction$Target;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    sget-object v1, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->BACKGROUND:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->CONTENT:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->MASK:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->BACKGROUND:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    const-string v1, "CONTENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->CONTENT:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    const-string v1, "MASK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->MASK:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    invoke-static {}, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->$values()[Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->$VALUES:[Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

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

.method public static valueOf(Ljava/lang/String;)Lpantanal/app/groupcard/plugininterface/AnimAction$Target;
    .registers 2

    const-class v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    return-object p0
.end method

.method public static values()[Lpantanal/app/groupcard/plugininterface/AnimAction$Target;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->$VALUES:[Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    return-object v0
.end method
