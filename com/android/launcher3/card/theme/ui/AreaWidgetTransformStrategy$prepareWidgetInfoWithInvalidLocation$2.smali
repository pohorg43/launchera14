.class final Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->prepareWidgetInfoWithInvalidLocation(Ljava/lang/String;Landroid/view/View;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.theme.ui.AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2"
    f = "AreaWidgetTransformStrategy.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $originView:Landroid/view/View;

.field public final synthetic $providerName:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->$originView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->$providerName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;

    iget-object v0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->$originView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->$providerName:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;-><init>(Landroid/view/View;Ljava/lang/String;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->$originView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->$providerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->$originView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "originView.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;->label:I

    invoke-static {v1, p1, v3, p0}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->getAppWidgetInfo(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3d

    return-object v0

    :cond_3d
    :goto_3d
    return-object p1
.end method
