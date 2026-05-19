.class public final Lcom/oplus/quickstep/gesture/TransitionManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/gesture/TransitionManager;
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

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/FloatingIconViewContainer;FI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->calculateScrollOffset$lambda$0(Lcom/android/launcher3/views/FloatingIconViewContainer;FI)V

    return-void
.end method

.method private static final calculateScrollOffset$lambda$0(Lcom/android/launcher3/views/FloatingIconViewContainer;FI)V
    .registers 4

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setWindowAlpha(F)V

    :cond_5
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_11

    if-nez p0, :cond_d

    goto :goto_11

    :cond_d
    int-to-float p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public final calculateScrollOffset(ZZLcom/android/launcher3/Workspace;ILcom/android/launcher3/views/FloatingIconViewContainer;F)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/android/launcher3/Workspace<",
            "*>;I",
            "Lcom/android/launcher3/views/FloatingIconViewContainer;",
            "F)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "workspace"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2b

    if-nez p2, :cond_2b

    invoke-static {}, Lcom/android/launcher/effect/EffectSetting;->isCurrentNormalEffect()Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_2b

    :cond_10
    instance-of p0, p3, Lcom/android/launcher3/OplusWorkspace;

    if-eqz p0, :cond_1b

    check-cast p3, Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p3}, Lcom/android/launcher3/OplusWorkspace;->getWorkSpaceScrollX()I

    move-result p0

    goto :goto_1f

    :cond_1b
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    :goto_1f
    sub-int/2addr p4, p0

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p1, Lcom/oplus/quickstep/gesture/v;

    invoke-direct {p1, p5, p6, p4}, Lcom/oplus/quickstep/gesture/v;-><init>(Lcom/android/launcher3/views/FloatingIconViewContainer;FI)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return p4

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final isHotseatIcon(Landroid/view/View;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    :cond_14
    const-string p1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 p1, -0x65

    if-ne p0, p1, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1
.end method

.method public final isWorkSpaceFling(Lcom/android/launcher3/Workspace;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "workspace"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/android/launcher3/OplusWorkspace;

    if-eqz p0, :cond_10

    check-cast p1, Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->isFling()Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
