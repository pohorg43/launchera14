.class public final Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/touch/TaskWindowSpringScrollController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTaskWindowSpringScrollController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskWindowSpringScrollController.kt\ncom/android/quickstep/touch/TaskWindowSpringScrollController$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,673:1\n1282#2,2:674\n1#3:676\n*S KotlinDebug\n*F\n+ 1 TaskWindowSpringScrollController.kt\ncom/android/quickstep/touch/TaskWindowSpringScrollController$Companion\n*L\n111#1:674,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isCompatibleRemoteTargetHandles(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isCompatibleRemoteTargetHandles([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSupportSpringScrollWith(Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;Lcom/android/quickstep/GestureState$GestureEndTarget;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController$Companion;->isSupportSpringScrollWith(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z

    move-result p0

    return p0
.end method

.method private final isCompatibleRemoteTargetHandles([Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Z
    .registers 8

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    array-length v0, p1

    move v1, p0

    :goto_6
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v0, :cond_22

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcom/android/quickstep/util/TaskViewSimulator;->getStagedSplitBounds()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    move-result-object v2

    :cond_16
    if-eqz v2, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, p0

    :goto_1b
    if-eqz v2, :cond_1f

    move-object v2, v4

    goto :goto_22

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    :goto_22
    if-eqz v2, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, p0

    :goto_27
    array-length p1, p1

    if-eq p1, v3, :cond_2f

    if-eqz v0, :cond_30

    const/4 v0, 0x2

    if-ne p1, v0, :cond_30

    :cond_2f
    move p0, v3

    :cond_30
    return p0
.end method

.method private final isSupportSpringScrollWith(Lcom/android/quickstep/GestureState$GestureEndTarget;)Z
    .registers 2

    if-eqz p1, :cond_9

    sget-object p0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method


# virtual methods
.method public final getCreatedInstance()Lcom/android/quickstep/touch/TaskWindowSpringScrollController;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;->access$getCurrentInstance$cp()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/touch/TaskWindowSpringScrollController;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public final isEnabled()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isSupportRecentsSwipeUpWindowSpring()Z

    move-result p0

    return p0
.end method
