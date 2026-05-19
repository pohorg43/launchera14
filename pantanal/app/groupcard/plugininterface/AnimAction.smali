.class public final Lpantanal/app/groupcard/plugininterface/AnimAction;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/plugininterface/AnimAction$Target;,
        Lpantanal/app/groupcard/plugininterface/AnimAction$Action;,
        Lpantanal/app/groupcard/plugininterface/AnimAction$Companion;
    }
.end annotation


# static fields
.field private static final ACTION_BACKGROUND_IN:Lpantanal/app/groupcard/plugininterface/AnimAction;

.field private static final ACTION_BACKGROUND_OUT:Lpantanal/app/groupcard/plugininterface/AnimAction;

.field private static final ACTION_CONTENT_IN:Lpantanal/app/groupcard/plugininterface/AnimAction;

.field private static final ACTION_CONTENT_OUT:Lpantanal/app/groupcard/plugininterface/AnimAction;

.field private static final ACTION_MASK_IN:Lpantanal/app/groupcard/plugininterface/AnimAction;

.field private static final ACTION_MASK_OUT:Lpantanal/app/groupcard/plugininterface/AnimAction;

.field public static final Companion:Lpantanal/app/groupcard/plugininterface/AnimAction$Companion;


# instance fields
.field private final action:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

.field private final duration:J

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private final target:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/plugininterface/AnimAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->Companion:Lpantanal/app/groupcard/plugininterface/AnimAction$Companion;

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction;

    sget-object v10, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->BACKGROUND:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    sget-object v11, Lpantanal/app/groupcard/plugininterface/AnimAction$Action;->IN:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, v10

    move-object v4, v11

    invoke-direct/range {v2 .. v9}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_BACKGROUND_IN:Lpantanal/app/groupcard/plugininterface/AnimAction;

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction;

    sget-object v9, Lpantanal/app/groupcard/plugininterface/AnimAction$Action;->OUT:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, v10

    move-object v3, v9

    invoke-direct/range {v1 .. v8}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_BACKGROUND_OUT:Lpantanal/app/groupcard/plugininterface/AnimAction;

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction;

    sget-object v10, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->CONTENT:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    move-object v1, v0

    move-object v2, v10

    move-object v3, v11

    invoke-direct/range {v1 .. v8}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_CONTENT_IN:Lpantanal/app/groupcard/plugininterface/AnimAction;

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction;

    move-object v1, v0

    move-object v3, v9

    invoke-direct/range {v1 .. v8}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_CONTENT_OUT:Lpantanal/app/groupcard/plugininterface/AnimAction;

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction;

    sget-object v10, Lpantanal/app/groupcard/plugininterface/AnimAction$Target;->MASK:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    move-object v1, v0

    move-object v2, v10

    move-object v3, v11

    invoke-direct/range {v1 .. v8}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_MASK_IN:Lpantanal/app/groupcard/plugininterface/AnimAction;

    new-instance v0, Lpantanal/app/groupcard/plugininterface/AnimAction;

    move-object v1, v0

    move-object v3, v9

    invoke-direct/range {v1 .. v8}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_MASK_OUT:Lpantanal/app/groupcard/plugininterface/AnimAction;

    return-void
.end method

.method public constructor <init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;)V
    .registers 7

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->target:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    iput-object p2, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->action:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    iput-wide p3, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->duration:J

    iput-object p5, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_6

    const-wide/16 p3, -0x1

    :cond_6
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_c

    const/4 p5, 0x0

    :cond_c
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static final synthetic access$getACTION_BACKGROUND_IN$cp()Lpantanal/app/groupcard/plugininterface/AnimAction;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_BACKGROUND_IN:Lpantanal/app/groupcard/plugininterface/AnimAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_BACKGROUND_OUT$cp()Lpantanal/app/groupcard/plugininterface/AnimAction;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_BACKGROUND_OUT:Lpantanal/app/groupcard/plugininterface/AnimAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_CONTENT_IN$cp()Lpantanal/app/groupcard/plugininterface/AnimAction;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_CONTENT_IN:Lpantanal/app/groupcard/plugininterface/AnimAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_CONTENT_OUT$cp()Lpantanal/app/groupcard/plugininterface/AnimAction;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_CONTENT_OUT:Lpantanal/app/groupcard/plugininterface/AnimAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_MASK_IN$cp()Lpantanal/app/groupcard/plugininterface/AnimAction;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_MASK_IN:Lpantanal/app/groupcard/plugininterface/AnimAction;

    return-object v0
.end method

.method public static final synthetic access$getACTION_MASK_OUT$cp()Lpantanal/app/groupcard/plugininterface/AnimAction;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/plugininterface/AnimAction;->ACTION_MASK_OUT:Lpantanal/app/groupcard/plugininterface/AnimAction;

    return-object v0
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/plugininterface/AnimAction;Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;ILjava/lang/Object;)Lpantanal/app/groupcard/plugininterface/AnimAction;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->target:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->action:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-wide p3, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->duration:J

    :cond_13
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p5, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->interpolator:Landroid/view/animation/Interpolator;

    :cond_1a
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lpantanal/app/groupcard/plugininterface/AnimAction;->copy(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;)Lpantanal/app/groupcard/plugininterface/AnimAction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lpantanal/app/groupcard/plugininterface/AnimAction$Target;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->target:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    return-object p0
.end method

.method public final component2()Lpantanal/app/groupcard/plugininterface/AnimAction$Action;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->action:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    return-object p0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->duration:J

    return-wide v0
.end method

.method public final component4()Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final copy(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;)Lpantanal/app/groupcard/plugininterface/AnimAction;
    .registers 12

    const-string p0, "target"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "action"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lpantanal/app/groupcard/plugininterface/AnimAction;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lpantanal/app/groupcard/plugininterface/AnimAction;-><init>(Lpantanal/app/groupcard/plugininterface/AnimAction$Target;Lpantanal/app/groupcard/plugininterface/AnimAction$Action;JLandroid/view/animation/Interpolator;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/groupcard/plugininterface/AnimAction;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/plugininterface/AnimAction;

    iget-object v1, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->target:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    iget-object v3, p1, Lpantanal/app/groupcard/plugininterface/AnimAction;->target:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->action:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    iget-object v3, p1, Lpantanal/app/groupcard/plugininterface/AnimAction;->action:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-wide v3, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->duration:J

    iget-wide v5, p1, Lpantanal/app/groupcard/plugininterface/AnimAction;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_23

    return v2

    :cond_23
    iget-object p0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->interpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p1, Lpantanal/app/groupcard/plugininterface/AnimAction;->interpolator:Landroid/view/animation/Interpolator;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    return v2

    :cond_2e
    return v0
.end method

.method public final getAction()Lpantanal/app/groupcard/plugininterface/AnimAction$Action;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->action:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    return-object p0
.end method

.method public final getDuration()J
    .registers 3

    iget-wide v0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->duration:J

    return-wide v0
.end method

.method public final getInterpolator()Landroid/view/animation/Interpolator;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final getTarget()Lpantanal/app/groupcard/plugininterface/AnimAction$Target;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->target:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->target:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->action:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->duration:J

    const/16 v0, 0x1f

    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-object p0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->interpolator:Landroid/view/animation/Interpolator;

    if-nez p0, :cond_1f

    const/4 p0, 0x0

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_23
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->target:Lpantanal/app/groupcard/plugininterface/AnimAction$Target;

    iget-object v1, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->action:Lpantanal/app/groupcard/plugininterface/AnimAction$Action;

    iget-wide v2, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->duration:J

    iget-object p0, p0, Lpantanal/app/groupcard/plugininterface/AnimAction;->interpolator:Landroid/view/animation/Interpolator;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnimAction(target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", action="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", interpolator="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
