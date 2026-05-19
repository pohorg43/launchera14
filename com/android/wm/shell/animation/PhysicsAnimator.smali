.class public final Lcom/android/wm/shell/animation/PhysicsAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;,
        Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;,
        Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;,
        Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;,
        Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;,
        Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;,
        Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/wm/shell/animation/PhysicsAnimator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1035:1\n1547#2:1036\n1618#2,3:1037\n1849#2,2:1040\n1741#2,3:1056\n357#3,7:1042\n357#3,7:1049\n*S KotlinDebug\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/wm/shell/animation/PhysicsAnimator\n*L\n438#1:1036\n438#1:1037,3\n590#1:1040,2\n778#1:1056,3\n610#1:1042,7\n618#1:1049,7\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

.field private static instanceConstructor:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "+",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private cancelAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private defaultFling:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

.field private defaultSpring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field private final endActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private final endListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final flingAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Landroidx/dynamicanimation/animation/FlingAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final flingConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;",
            ">;"
        }
    .end annotation
.end field

.field private internalListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>.Internal",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final springAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final springConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;",
            ">;"
        }
    .end annotation
.end field

.field private startAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private final updateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final weakTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;->INSTANCE:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    sput-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getGlobalDefaultSpring$p()Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getGlobalDefaultFling$p()Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultFling:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$startAction$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->startAction:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$cancelAction$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->configureDynamicAnimation$lambda$4(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static final synthetic access$getFlingAnimation(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getFlingAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInstanceConstructor$cp()Lkotlin/jvm/functions/Function1;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getSpringAnimation(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getSpringAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInstanceConstructor$cp(Lkotlin/jvm/functions/Function1;)V
    .registers 1

    sput-object p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->configureDynamicAnimation$lambda$5(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private final clearAnimator()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final configureDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;)",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/animation/b;

    invoke-direct {v0, p0, p2}, Lcom/android/wm/shell/animation/b;-><init>(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    new-instance v0, Lcom/android/wm/shell/animation/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/wm/shell/animation/a;-><init>(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;)V

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p1
.end method

.method private static final configureDynamicAnimation$lambda$4(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .registers 7

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$property"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p2, :cond_22

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->onInternalAnimationUpdate$com_android_wm_shell_release(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_22
    return-void
.end method

.method private static final configureDynamicAnimation$lambda$5(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 14

    const-string/jumbo p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$property"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$anim"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;

    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;)V

    invoke-static {p3, v6}, Li4/t;->u(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_31

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    return-void
.end method

.method public static final estimateFlingEndValue(FFLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;)F
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->estimateFlingEndValue(FFLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;)F

    move-result p0

    return p0
.end method

.method public static synthetic fling$default(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFFILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_a

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultFling:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getFriction$com_android_wm_shell_release()F

    move-result p3

    :cond_a
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_15

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultFling:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMin()F

    move-result p4

    :cond_15
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_20

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultFling:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMax()F

    move-result p5

    :cond_20
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->fling(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fling$default(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;ILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultFling:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->fling(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic flingThenSpring$default(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;ZILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method private final getFlingAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/FlingAnimation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;TT;)",
            "Landroidx/dynamicanimation/animation/FlingAnimation;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    new-instance v1, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-direct {v1, p2, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->configureDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    const-string/jumbo p2, "null cannot be cast to non-null type androidx.dynamicanimation.animation.FlingAnimation"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroidx/dynamicanimation/animation/FlingAnimation;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string p0, "flingAnimations.getOrPut…     as FlingAnimation })"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/dynamicanimation/animation/FlingAnimation;

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final getReadablePropertyName(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getReadablePropertyName(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getSpringAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;TT;)",
            "Landroidx/dynamicanimation/animation/SpringAnimation;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->configureDynamicAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object p0

    const-string/jumbo p2, "null cannot be cast to non-null type androidx.dynamicanimation.animation.SpringAnimation"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string/jumbo p0, "springAnimations.getOrPu…    as SpringAnimation })"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object v1
.end method

.method private final isValidValue(F)Z
    .registers 2

    const p0, 0x7f7fffff  # Float.MAX_VALUE

    cmpg-float p0, p1, p0

    if-gez p0, :cond_10

    const p0, -0x800001

    cmpl-float p0, p1, p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static final setVerboseLogging(Z)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->setVerboseLogging(Z)V

    return-void
.end method

.method public static synthetic spring$default(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFFILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_5

    const/4 p3, 0x0

    :cond_5
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_10

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->getStiffness()F

    move-result p4

    :cond_10
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->getDampingRatio$com_android_wm_shell_release()F

    move-result p5

    :cond_1b
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic spring$default(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;ILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_6

    iget-object p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic spring$default(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;ILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addEndListener(Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener<",
            "TT;>;)",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addUpdateListener(Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener<",
            "TT;>;)",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final arePropertiesAnimating(Ljava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;)Z"
        }
    .end annotation

    const-string/jumbo v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_29

    :cond_12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_29
    :goto_29
    return v1
.end method

.method public final cancel()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "flingAnimations.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string/jumbo v1, "springAnimations.keys"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    return-void
.end method

.method public final varargs cancel([Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Li4/k;->P([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final cancelInternal$com_android_wm_shell_release(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/FlingAnimation;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    :cond_23
    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_a

    :cond_31
    return-void
.end method

.method public final fling(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;FFFF)",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getVerboseLogging$p()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "Flinging "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getReadablePropertyName(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with velocity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhysicsAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    invoke-direct {v1, p3, p4, p5, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFFF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final fling(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;F",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;",
            ")",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getFriction$com_android_wm_shell_release()F

    move-result v4

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMin()F

    move-result v5

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMax()F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->fling(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;F",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;",
            ")",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flingConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "springConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingThenSpring$default(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;ZILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final flingThenSpring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Z)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;F",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;",
            "Z)",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flingConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "springConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    const-string p1, "PhysicsAnimator"

    const-string p2, "Trying to animate a GC-ed target."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_21
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v7}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->copy$default(Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;FFFFILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v2, p4

    invoke-static/range {v2 .. v8}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->copy$default(Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;FFFFILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    move-result-object v2

    const/4 v3, 0x0

    int-to-float v3, v3

    cmpg-float v4, p2, v3

    if-gez v4, :cond_41

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMin()F

    move-result v5

    goto :goto_45

    :cond_41
    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMax()F

    move-result v5

    :goto_45
    if-eqz p5, :cond_bb

    invoke-direct {p0, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isValidValue(F)Z

    move-result p5

    if-eqz p5, :cond_bb

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result p5

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getFriction$com_android_wm_shell_release()F

    move-result v6

    const v7, 0x40866666  # 4.2f

    mul-float/2addr v6, v7

    div-float v6, p2, v6

    add-float/2addr v6, p5

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMin()F

    move-result p5

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMax()F

    move-result v8

    add-float/2addr v8, p5

    const/4 p5, 0x2

    int-to-float p5, p5

    div-float/2addr v8, p5

    if-gez v4, :cond_6e

    cmpl-float p5, v6, v8

    if-gtz p5, :cond_76

    :cond_6e
    cmpl-float p5, p2, v3

    if-lez p5, :cond_8e

    cmpg-float p5, v6, v8

    if-gez p5, :cond_8e

    :cond_76
    cmpg-float p5, v6, v8

    if-gez p5, :cond_7f

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMin()F

    move-result p5

    goto :goto_83

    :cond_7f
    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMax()F

    move-result p5

    :goto_83
    invoke-direct {p0, p5}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isValidValue(F)Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-virtual {p0, p1, p5, p2, p4}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0

    :cond_8e
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result p4

    sub-float p4, v5, p4

    invoke-virtual {p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getFriction$com_android_wm_shell_release()F

    move-result p3

    mul-float/2addr p3, v7

    mul-float/2addr p3, p4

    const/4 p5, 0x0

    cmpl-float v0, p4, p5

    if-lez v0, :cond_a8

    cmpl-float v0, p2, p5

    if-ltz v0, :cond_a8

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_b4

    :cond_a8
    cmpg-float p4, p4, p5

    if-gez p4, :cond_b4

    cmpg-float p4, p2, p5

    if-gtz p4, :cond_b4

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :cond_b4
    :goto_b4
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->setStartVelocity$com_android_wm_shell_release(F)V

    invoke-virtual {v2, v5}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->setFinalPosition$com_android_wm_shell_release(F)V

    goto :goto_be

    :cond_bb
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->setStartVelocity$com_android_wm_shell_release(F)V

    :goto_be
    iget-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getAnimatedProperties$com_android_wm_shell_release()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "springConfigs.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v1, "flingConfigs.keys"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Li4/v;->m0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getCancelAction$com_android_wm_shell_release()Lkotlin/jvm/functions/Function1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getInternalListeners$com_android_wm_shell_release()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>.Internal",
            "Listener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getStartAction$com_android_wm_shell_release()Lkotlin/jvm/functions/Function0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->startAction:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getWeakTarget()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;)Z"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    if-nez v0, :cond_2b

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/dynamicanimation/animation/FlingAnimation;

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result p0

    goto :goto_29

    :cond_28
    move p0, v1

    :goto_29
    if-eqz p0, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method public final isRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "springAnimations.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "flingAnimations.keys"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Li4/v;->m0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->arePropertiesAnimating(Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public final setCancelAction$com_android_wm_shell_release(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancelAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setDefaultFlingConfig(Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;)V
    .registers 3

    const-string v0, "defaultFling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultFling:Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    return-void
.end method

.method public final setDefaultSpringConfig(Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V
    .registers 3

    const-string v0, "defaultSpring"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->defaultSpring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    return-void
.end method

.method public final setInternalListeners$com_android_wm_shell_release(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>.Internal",
            "Listener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public final setStartAction$com_android_wm_shell_release(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->startAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;F)",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring$default(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;ILjava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;FFFF)",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->access$getVerboseLogging$p()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "Springing "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->Companion:Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getReadablePropertyName(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhysicsAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-direct {v1, p4, p5, p3, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FFFF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;FF",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;",
            ")",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->getStiffness()F

    move-result v5

    invoke-virtual {p4}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->getDampingRatio$com_android_wm_shell_release()F

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFFF)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;F",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;",
            ")",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final start()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->startAction:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final startInternal$com_android_wm_shell_release()V
    .registers 16

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->weakTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    const-string p0, "PhysicsAnimator"

    const-string v0, "Trying to animate a GC-ed object."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getAnimatedProperties$com_android_wm_shell_release()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1d
    :goto_1d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->springConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {v10, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    move-result v6

    if-eqz v9, :cond_4f

    new-instance v11, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;

    move-object v1, v11

    move-object v2, v9

    move-object v3, p0

    move-object v4, v10

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$1;-><init>(Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;F)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    if-eqz v13, :cond_1d

    if-nez v9, :cond_63

    invoke-direct {p0, v10, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getSpringAnimation(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;->applyToAnimation$com_android_wm_shell_release(Landroidx/dynamicanimation/animation/SpringAnimation;)V

    new-instance v2, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$2;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_63
    invoke-virtual {v9}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMin()F

    move-result v11

    invoke-virtual {v9}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;->getMax()F

    move-result v12

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;

    move-object v9, v3

    move-object v14, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/wm/shell/animation/PhysicsAnimator$startInternal$3;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;Lcom/android/wm/shell/animation/PhysicsAnimator;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    :cond_79
    iget-object v9, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getAnimatedProperties$com_android_wm_shell_release()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endListeners:Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;-><init>(Lcom/android/wm/shell/animation/PhysicsAnimator;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_a3

    :cond_b3
    invoke-direct {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->clearAnimator()V

    return-void
.end method

.method public final varargs withEndActions([Ljava/lang/Runnable;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "endActions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {p1}, Li4/k;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    new-instance v3, Lcom/android/wm/shell/animation/PhysicsAnimator$withEndActions$1$1;

    invoke-direct {v3, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$withEndActions$1$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final varargs withEndActions([Lkotlin/jvm/functions/Function0;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "endActions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    invoke-static {p1}, Li4/k;->u([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
