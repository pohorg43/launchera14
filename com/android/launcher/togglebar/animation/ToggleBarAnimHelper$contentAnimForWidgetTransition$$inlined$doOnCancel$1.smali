.class public final Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$contentAnimForWidgetTransition$$inlined$doOnCancel$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->contentAnimForWidgetTransition(Lcom/android/launcher3/Launcher;Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$1\n+ 4 ToggleBarAnimHelper.kt\ncom/android/launcher/togglebar/animation/ToggleBarAnimHelper\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n95#3:129\n279#4,2:130\n96#5:132\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $launcher$inlined:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$contentAnimForWidgetTransition$$inlined$doOnCancel$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->Companion:Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper$contentAnimForWidgetTransition$$inlined$doOnCancel$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$Companion;->reset(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
