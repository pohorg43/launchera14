.class final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecentsViewAnimUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentsViewAnimUtil.kt\ncom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1326:1\n1#2:1327\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $displacementX:F

.field public final synthetic $rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;F)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput p2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1;->$displacementX:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Landroid/animation/ObjectAnimator;
    .registers 5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ltz v1, :cond_14

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getPageCount()I

    move-result v0

    if-ge v1, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    const/4 v1, 0x0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    move-object p1, v1

    :goto_1a
    if-eqz p1, :cond_3b

    iget v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1;->$displacementX:F

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1;->$rv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v1, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v1}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :cond_3b
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createAdjacentPageAnimForTaskLaunch$createSpecifyIndexTaskAnim$1;->invoke(I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method
