.class public final enum Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStateChangeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

.field public static final enum ON_LAND_SCAPE_SCENE_EXIT:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

.field public static final enum ON_TRANSITION_FINISH:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->ON_LAND_SCAPE_SCENE_EXIT:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->ON_TRANSITION_FINISH:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    const-string v1, "ON_LAND_SCAPE_SCENE_EXIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->ON_LAND_SCAPE_SCENE_EXIT:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    new-instance v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    const-string v1, "ON_TRANSITION_FINISH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->ON_TRANSITION_FINISH:Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->$values()[Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->$VALUES:[Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;->$VALUES:[Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeType;

    return-object v0
.end method
