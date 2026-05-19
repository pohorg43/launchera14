.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/animation/PhysicsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternalListener"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhysicsAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/wm/shell/animation/PhysicsAnimator$InternalListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1035:1\n1849#2:1036\n1850#2:1038\n1849#2,2:1039\n1849#2,2:1041\n1849#2,2:1043\n1#3:1037\n*S KotlinDebug\n*F\n+ 1 PhysicsAnimator.kt\ncom/android/wm/shell/animation/PhysicsAnimator$InternalListener\n*L\n719#1:1036\n719#1:1038\n729#1:1039,2\n743#1:1041,2\n756#1:1043,2\n*E\n"
    }
.end annotation


# instance fields
.field private endActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field

.field private endListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private numPropertiesAnimating:I

.field private properties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/animation/PhysicsAnimator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final undispatchedUpdates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private updateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/animation/PhysicsAnimator;Ljava/lang/Object;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener<",
            "TT;>;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener<",
            "TT;>;>;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "properties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateListeners"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endListeners"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endActions"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    iput-object p5, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->endListeners:Ljava/util/List;

    iput-object p6, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->endActions:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    return-void
.end method

.method private final maybeDispatchUpdates()V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    if-lt v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;

    iget-object v2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    new-instance v3, Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-interface {v1, v2, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;->onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V

    goto :goto_18

    :cond_31
    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    :cond_36
    return-void
.end method


# virtual methods
.method public final onInternalAnimationEnd$com_android_wm_shell_release(Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZFFZ)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;ZFFZ)Z"
        }
    .end annotation

    move-object v0, p0

    move-object v9, p1

    const-string/jumbo v1, "property"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_12

    return v10

    :cond_12
    iget v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    invoke-direct {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->maybeDispatchUpdates()V

    iget-object v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;

    iget-object v3, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;->onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V

    goto :goto_29

    :cond_49
    iget-object v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    iget-object v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    iget-object v2, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->arePropertiesAnimating(Ljava/util/Set;)Z

    move-result v1

    xor-int/lit8 v11, v1, 0x1

    iget-object v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->endListeners:Ljava/util/List;

    iget-object v12, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_60
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;

    iget-object v2, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    move-object v3, p1

    move/from16 v4, p5

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move v8, v11

    invoke-interface/range {v1 .. v8}, Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;->onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFFZ)V

    invoke-virtual {v12, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    move-result v1

    if-eqz v1, :cond_60

    return v10

    :cond_82
    if-eqz v11, :cond_9c

    if-nez p2, :cond_9c

    iget-object v0, v0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->endActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_8c

    :cond_9c
    return v11
.end method

.method public final onInternalAnimationUpdate$com_android_wm_shell_release(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "-TT;>;FF)V"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;

    invoke-direct {v1, p2, p3}, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;-><init>(FF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->maybeDispatchUpdates()V

    return-void
.end method
