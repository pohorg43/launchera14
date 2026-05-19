.class final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->initTargetWidgetInfos(Landroid/content/Context;Ll4/d;)Ljava/lang/Object;
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
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAreaWidgetTransformViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaWidgetTransformViewModel.kt\ncom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,247:1\n1855#2,2:248\n*S KotlinDebug\n*F\n+ 1 AreaWidgetTransformViewModel.kt\ncom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2\n*L\n169#1:248,2\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.theme.data.AreaWidgetTransformViewModel$initTargetWidgetInfos$2"
    f = "AreaWidgetTransformViewModel.kt"
    l = {
        0xb1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;->$context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;-><init>(Landroid/content/Context;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_5f

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object v1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getThemeCardWhiteList()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->getTargetWidgetComponents()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;->$context:Landroid/content/Context;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->getWidgetProviderInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_2d

    invoke-static {v3, v5}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v5

    const-string v6, "launcherWidgetProviderInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_4c
    sget-object v1, Lm7/y0;->a:Lm7/y0;

    sget-object v1, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2$2;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ll4/d;)V

    iput v2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$initTargetWidgetInfos$2;->label:I

    invoke-static {v1, v3, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5f

    return-object v0

    :cond_5f
    :goto_5f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
