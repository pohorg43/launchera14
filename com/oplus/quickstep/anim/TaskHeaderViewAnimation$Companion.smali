.class public final Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHIDE_TIME(Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;)J
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;->getHIDE_TIME()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getSTART_DELAY(Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;)J
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/anim/TaskHeaderViewAnimation$Companion;->getSTART_DELAY()J

    move-result-wide v0

    return-wide v0
.end method

.method private final getHIDE_TIME()J
    .registers 3

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_9

    const-wide/16 v0, 0x1a1

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x190

    :goto_b
    return-wide v0
.end method

.method private final getSTART_DELAY()J
    .registers 3

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x32

    :goto_b
    return-wide v0
.end method
