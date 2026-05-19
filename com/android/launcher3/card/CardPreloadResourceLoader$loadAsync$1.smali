.class final Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/CardPreloadResourceLoader;->loadAsync(Lcom/android/launcher/Launcher;Lcom/android/launcher3/card/LauncherCardInfo;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lm7/s1;
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
        "SMAP\nCardPreloadResourceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardPreloadResourceLoader.kt\ncom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n1#2:217\n1#2:231\n1360#3:218\n1446#3,2:219\n1603#3,9:221\n1855#3:230\n1856#3:232\n1612#3:233\n1448#3,3:234\n288#3,2:237\n*S KotlinDebug\n*F\n+ 1 CardPreloadResourceLoader.kt\ncom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1\n*L\n114#1:231\n113#1:218\n113#1:219,2\n114#1:221,9\n114#1:230\n114#1:232\n114#1:233\n113#1:234,3\n117#1:237,2\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.CardPreloadResourceLoader$loadAsync$1"
    f = "CardPreloadResourceLoader.kt"
    l = {
        0x7a,
        0x8e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $item:Lcom/android/launcher3/card/LauncherCardInfo;

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $nameCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $previewCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $userUnlockCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;Ljava/util/function/Consumer;Lcom/android/launcher3/card/CardPreloadResourceLoader;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ll4/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/launcher3/card/CardPreloadResourceLoader;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$item:Lcom/android/launcher3/card/LauncherCardInfo;

    iput-object p2, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$userUnlockCallback:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    iput-object p5, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$nameCallback:Ljava/util/function/Consumer;

    iput-object p6, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$previewCallback:Ljava/util/function/Consumer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 11
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

    new-instance p1, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;

    iget-object v1, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$item:Lcom/android/launcher3/card/LauncherCardInfo;

    iget-object v2, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$launcher:Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$userUnlockCallback:Ljava/util/function/Consumer;

    iget-object v4, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    iget-object v5, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$nameCallback:Ljava/util/function/Consumer;

    iget-object v6, p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$previewCallback:Ljava/util/function/Consumer;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;Ljava/util/function/Consumer;Lcom/android/launcher3/card/CardPreloadResourceLoader;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    move-object/from16 v0, p0

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->label:I

    const/4 v3, 0x2

    const-string v4, "MAIN_EXECUTOR"

    const-string v5, "Card"

    const/4 v6, 0x1

    const-string v7, "LauncherCard-CardPreloadResourceLoader"

    const/4 v8, 0x0

    if-eqz v2, :cond_2f

    if-eq v2, v6, :cond_22

    if-ne v2, v3, :cond_1a

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_1d2

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->I$0:I

    iget-object v3, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Resources;

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto/16 :goto_14e

    :cond_2f
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$item:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_3d
    iget-object v3, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v3

    const/4 v9, 0x0

    if-nez v3, :cond_72

    iget-object v3, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$userUnlockCallback:Ljava/util/function/Consumer;

    if-eqz v3, :cond_72

    const-string v1, "loadAsync, but "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is locked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$userUnlockCallback:Ljava/util/function/Consumer;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load preload resource for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v7, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.appcard.action.APPCARD_UPDATE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v10, v3}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$queryCardProviders(Lcom/android/launcher3/card/CardPreloadResourceLoader;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ProviderInfo;

    invoke-static {v10, v12}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getMetaKeys(Lcom/android/launcher3/card/CardPreloadResourceLoader;Landroid/content/pm/ProviderInfo;)Ljava/util/List;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_ba
    :goto_ba
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v10, v12, v15}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$parseCardProvider(Lcom/android/launcher3/card/CardPreloadResourceLoader;Landroid/content/pm/ProviderInfo;Ljava/lang/String;)Lh4/o;

    move-result-object v15

    if-eqz v15, :cond_ba

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    :cond_d0
    invoke-static {v11, v14}, Li4/t;->q(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_a1

    :cond_d4
    iget-object v3, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$item:Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_da
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lh4/o;

    iget-object v12, v12, Lh4/o;->a:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    iget v13, v3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v12, v13, :cond_f5

    move v12, v6

    goto :goto_f6

    :cond_f5
    move v12, v9

    :goto_f6
    if-eqz v12, :cond_da

    goto :goto_fa

    :cond_f9
    move-object v11, v8

    :goto_fa
    check-cast v11, Lh4/o;

    if-nez v11, :cond_101

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_101
    iget-object v3, v11, Lh4/o;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v10, v11, Lh4/o;->c:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    const-string/jumbo v11, "name resId "

    invoke-static {v11, v10, v5, v7}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v11}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPackageManager(Lcom/android/launcher3/card/CardPreloadResourceLoader;)Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v8, v11, v9

    invoke-virtual {v2, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_155

    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$nameCallback:Ljava/util/function/Consumer;

    sget-object v11, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lm7/k1;

    invoke-direct {v12, v11}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v11, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;

    invoke-direct {v11, v10, v9, v8}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$3$1;-><init>(Ljava/util/function/Consumer;Ljava/lang/String;Ll4/d;)V

    iput-object v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->I$0:I

    iput v6, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->label:I

    invoke-static {v12, v11, v0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_149

    return-object v1

    :cond_149
    move/from16 v16, v3

    move-object v3, v2

    move/from16 v2, v16

    :goto_14e
    check-cast v6, Lh4/z;

    move-object/from16 v16, v3

    move v3, v2

    move-object/from16 v2, v16

    :cond_155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preview resId "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v7, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :try_start_16e
    invoke-static {v2}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_177

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_177
    iget-object v3, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v3}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v3

    iget-object v5, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v5}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v9, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v9}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v9

    sub-int/2addr v6, v9

    iget-object v9, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v9}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v10}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->this$0:Lcom/android/launcher3/card/CardPreloadResourceLoader;

    invoke-static {v10}, Lcom/android/launcher3/card/CardPreloadResourceLoader;->access$getPadding(Lcom/android/launcher3/card/CardPreloadResourceLoader;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v2, v3, v5, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1ab
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16e .. :try_end_1ab} :catch_1ac

    goto :goto_1b3

    :catch_1ac
    const-string/jumbo v2, "oom creating bitmap"

    invoke-static {v7, v2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v8

    :goto_1b3
    if-eqz v2, :cond_1d2

    iget-object v3, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->$previewCallback:Ljava/util/function/Consumer;

    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lm7/k1;

    invoke-direct {v4, v5}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance v5, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$4$1;

    invoke-direct {v5, v3, v2, v8}, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1$4$1;-><init>(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;Ll4/d;)V

    iput-object v8, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/launcher3/card/CardPreloadResourceLoader$loadAsync$1;->label:I

    invoke-static {v4, v5, v0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1d2

    return-object v1

    :cond_1d2
    :goto_1d2
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method
