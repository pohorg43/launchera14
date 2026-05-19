.class public final Lcom/android/launcher3/graphics/OplusOverviewScrim;
.super Lcom/android/launcher3/graphics/Scrim;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;
    }
.end annotation


# static fields
.field public static final CHANNEL_DEFAULT:I = 0x0

.field public static final CHANNEL_LAUNCHER_SWIPE_TO_OVERVIEW:I = 0x1

.field public static final CHANNEL_STATE_ANIMATE_TO_OVERVIEW:I = 0x2

.field public static final Companion:Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;

.field public static final SCRIM_FLAG_DEFAULT:I = 0x0

.field public static final SCRIM_FLAG_SWIPE_TO_RECENT_INTERACTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OplusOverviewScrim"


# instance fields
.field private flags:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/graphics/OplusOverviewScrim;->Companion:Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/Scrim;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setScrimProgress(Lcom/android/launcher3/graphics/OplusOverviewScrim;FI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->setScrimProgress(FI)V

    return-void
.end method

.method public static final getScrimProgressWithChannel(I)Landroid/util/FloatProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/graphics/OplusOverviewScrim;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/graphics/OplusOverviewScrim;->Companion:Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;->getScrimProgressWithChannel(I)Landroid/util/FloatProperty;

    move-result-object p0

    return-object p0
.end method

.method private final setScrimProgress(FI)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eq p2, v0, :cond_d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_d

    return-void

    :cond_d
    invoke-super {p0, p1}, Lcom/android/launcher3/graphics/Scrim;->setScrimProgress(F)V

    return-void
.end method


# virtual methods
.method public final getFlags()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/graphics/OplusOverviewScrim;->flags:I

    return p0
.end method

.method public final hasFlags(I)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/graphics/OplusOverviewScrim;->flags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final setFlags(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/graphics/OplusOverviewScrim;->flags:I

    return-void
.end method

.method public setScrimProgress(F)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-super {p0, p1}, Lcom/android/launcher3/graphics/Scrim;->setScrimProgress(F)V

    return-void
.end method

.method public final updateFlags(IZ)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/graphics/OplusOverviewScrim;->hasFlags(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update overview scrim. newFlags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",cur:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/graphics/OplusOverviewScrim;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusOverviewScrim"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_38

    iget p2, p0, Lcom/android/launcher3/graphics/OplusOverviewScrim;->flags:I

    or-int/2addr p1, p2

    goto :goto_3c

    :cond_38
    iget p2, p0, Lcom/android/launcher3/graphics/OplusOverviewScrim;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_3c
    iput p1, p0, Lcom/android/launcher3/graphics/OplusOverviewScrim;->flags:I

    return-void
.end method
