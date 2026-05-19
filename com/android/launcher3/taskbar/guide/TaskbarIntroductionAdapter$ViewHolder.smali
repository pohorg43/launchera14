.class public final Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private final guideImageView:Lcom/oplus/anim/EffectiveAnimationView;

.field private final guideTextView:Landroidx/appcompat/widget/AppCompatTextView;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;->this$0:Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->access$getMBinding$p(Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;)Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "mBinding"

    if-nez p2, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_17
    iget-object p2, p2, Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    const-string v2, "mBinding.animationView"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;->guideImageView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;->access$getMBinding$p(Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter;)Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;

    move-result-object p1

    if-nez p1, :cond_2a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    move-object v0, p1

    :goto_2b
    iget-object p1, v0, Lcom/android/launcher3/databinding/TaskbarAnimationLayoutBinding;->guideTips:Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "mBinding.guideTips"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;->guideTextView:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method


# virtual methods
.method public final getGuideImageView()Lcom/oplus/anim/EffectiveAnimationView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;->guideImageView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public final getGuideTextView()Landroidx/appcompat/widget/AppCompatTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/TaskbarIntroductionAdapter$ViewHolder;->guideTextView:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method
