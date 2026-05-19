.class public final Lcom/android/launcher3/taskbar/AnimatorWatcher;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;,
        Lcom/android/launcher3/taskbar/AnimatorWatcher$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/taskbar/AnimatorWatcher$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimatorWatcher"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mIsAnimating:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/AnimatorWatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/AnimatorWatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->Companion:Lcom/android/launcher3/taskbar/AnimatorWatcher$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private final dispatchAnimationCancel()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p0, :cond_24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;

    invoke-interface {v2}, Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;->onAnimationCancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    return-void
.end method

.method private final dispatchAnimatorEnd()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p0, :cond_24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;

    invoke-interface {v2}, Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;->onAnimationEnd()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    return-void
.end method

.method private final dispatchAnimatorStart()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, p0, :cond_24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;

    invoke-interface {v2}, Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;->onAnimationStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final isAnimating()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mIsAnimating:Z

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mIsAnimating:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/AnimatorWatcher;->dispatchAnimationCancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mIsAnimating:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/AnimatorWatcher;->dispatchAnimatorEnd()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mIsAnimating:Z

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/AnimatorWatcher;->dispatchAnimatorStart()V

    return-void
.end method

.method public final removeListener(Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/AnimatorWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
