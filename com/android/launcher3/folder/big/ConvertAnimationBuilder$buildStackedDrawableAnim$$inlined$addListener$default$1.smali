.class public final Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildStackedDrawableAnim$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildStackedDrawableAnim()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 ConvertAnimationBuilder.kt\ncom/android/launcher3/folder/big/ConvertAnimationBuilder\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$2\n*L\n1#1,127:1\n98#2:128\n264#3,4:129\n97#4:133\n96#5:134\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $toDrawable$inlined:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildStackedDrawableAnim$$inlined$addListener$default$1;->$toDrawable$inlined:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildStackedDrawableAnim$$inlined$addListener$default$1;->$toDrawable$inlined:Landroid/graphics/drawable/Drawable;

    instance-of p1, p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;

    if-eqz p1, :cond_11

    check-cast p0, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/big/stacked/StackedDrawable;->setMConvertDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
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
