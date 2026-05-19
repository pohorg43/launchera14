.class public Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScopedUnfoldTransitionProgressProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopedUnfoldTransitionProgressProvider.kt\ncom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n1855#2,2:126\n1855#2,2:128\n1855#2,2:130\n1855#2,2:132\n1855#2,2:134\n1855#2,2:136\n*S KotlinDebug\n*F\n+ 1 ScopedUnfoldTransitionProgressProvider.kt\ncom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider\n*L\n74#1:126,2\n76#1:128,2\n80#1:130,2\n102#1:132,2\n108#1:134,2\n115#1:136,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider$Companion;

.field private static final PROGRESS_UNSET:F = -1.0f


# instance fields
.field private isReadyToHandleTransition:Z

.field private isTransitionRunning:Z

.field private lastTransitionProgress:F

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private source:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->Companion:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .registers 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->lastTransitionProgress:F

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setSourceProvider(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;-><init>(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->addCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->source:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->source:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;->destroy()V

    :cond_e
    return-void
.end method

.method public onTransitionFinished()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-interface {v1}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionFinished()V

    goto :goto_a

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->lastTransitionProgress:F

    return-void
.end method

.method public onTransitionProgress(F)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionProgress(F)V

    goto :goto_a

    :cond_1a
    iput p1, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->lastTransitionProgress:F

    return-void
.end method

.method public onTransitionStarted()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    iget-boolean v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->isReadyToHandleTransition:Z

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-interface {v0}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionStarted()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->removeCallback(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;)V

    return-void
.end method

.method public final setReadyToHandleTransition(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    if-eqz p1, :cond_40

    iget-object v1, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-interface {v2}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionStarted()V

    goto :goto_d

    :cond_1d
    iget v1, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->lastTransitionProgress:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpg-float v1, v1, v2

    if-nez v1, :cond_26

    const/4 v0, 0x1

    :cond_26
    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    iget v2, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->lastTransitionProgress:F

    invoke-interface {v1, v2}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionProgress(F)V

    goto :goto_2e

    :cond_40
    iput-boolean v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->isTransitionRunning:Z

    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;

    invoke-interface {v1}, Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;->onTransitionFinished()V

    goto :goto_48

    :cond_58
    iput-boolean p1, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->isReadyToHandleTransition:Z

    return-void
.end method

.method public final setSourceProvider(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->source:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_7
    if-eqz p1, :cond_f

    iput-object p1, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->source:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_12

    :cond_f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->source:Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    :goto_12
    return-void
.end method
