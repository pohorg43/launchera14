.class public final Lpantanal/app/groupcard/utils/PocketCardIntentManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/utils/PocketCardIntentManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPocketCardIntentManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PocketCardIntentManager.kt\npantanal/app/groupcard/utils/PocketCardIntentManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n1#2:181\n1855#3,2:182\n*S KotlinDebug\n*F\n+ 1 PocketCardIntentManager.kt\npantanal/app/groupcard/utils/PocketCardIntentManager\n*L\n159#1:182,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/groupcard/utils/PocketCardIntentManager$Companion;

.field private static final TAG:Ljava/lang/String; = "PocketCardIntentManager"


# instance fields
.field private final jumpUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/utils/PocketCardIntentManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->Companion:Lpantanal/app/groupcard/utils/PocketCardIntentManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->jumpUrlMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getIntroduceIntentList(Lpantanal/app/groupcard/utils/PocketCardIntentManager;Landroid/content/Context;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->getIntroduceIntentList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getJumpUrlMap$p(Lpantanal/app/groupcard/utils/PocketCardIntentManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->jumpUrlMap:Ljava/util/Map;

    return-object p0
.end method

.method private final getIntroduceIntentList(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->jumpUrlMap:Ljava/util/Map;

    const-string v1, "POCKET_PRIORITY_URL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->jumpUrlMap:Ljava/util/Map;

    const-string v1, "POCKET_LAST_URL"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_20

    move v3, v1

    goto :goto_21

    :cond_20
    move v3, v2

    :goto_21
    if-ne v3, v1, :cond_25

    move v3, v1

    goto :goto_26

    :cond_25
    move v3, v2

    :goto_26
    if-eqz v3, :cond_3c

    if-eqz p0, :cond_36

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_32

    move v3, v1

    goto :goto_33

    :cond_32
    move v3, v2

    :goto_33
    if-ne v3, v1, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    if-eqz v1, :cond_3c

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_3c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "card_url"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v11, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v5, "nativeapp://coloros.intent.action.sceneservice.seedlingcard.tips"

    const-string v8, "com.coloros.sceneservice"

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "nativeapp://com.oplus.operationManual.FEEDBACK_AND_TIPS"

    const-string v8, "com.oplus.operationManual"

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lpantanal/app/groupcard/utils/ClickHelper;->INSTANCE:Lpantanal/app/groupcard/utils/ClickHelper;

    invoke-virtual {v2, p1, v1}, Lpantanal/app/groupcard/utils/ClickHelper;->startMultistageActivity(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p1, "fat://fb/web?target="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "parse(uriPrefix + priorityUrl)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "parse(uriPrefix + lastUrl)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private final getJumpUrl(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->groupCard()Lm7/f0;

    move-result-object v0

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p1, p0, v0}, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;-><init>(Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lpantanal/app/groupcard/utils/PocketCardIntentManager;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method private final jumpToBrowser(Landroid/content/Context;Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-static/range {p2 .. p2}, Li4/o;->d(Ljava/util/Collection;)Ly4/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    move-object v1, v0

    check-cast v1, Li4/f0;

    invoke-virtual {v1}, Li4/f0;->nextInt()I

    move-result v1

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v4, p0

    move-object/from16 v5, p1

    invoke-direct {p0, v5, v3}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->onStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v0, "jumpToBrowser success:"

    invoke-static {v0, v1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "PocketCardIntentManager"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_3c
    return-void
.end method

.method private final onStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 14

    const/4 p0, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    const/4 p1, 0x1

    :try_start_5
    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception p2

    goto :goto_c

    :catchall_a
    move-exception p2

    move p1, p0

    :goto_c
    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_10
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_31

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onStartActivity error:"

    invoke-static {p2, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PocketCardIntentManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_32

    :cond_31
    move p0, p1

    :goto_32
    return p0
.end method

.method private final showQueryFromUms()Z
    .registers 14

    iget-object v0, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->jumpUrlMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    goto :goto_33

    :cond_b
    iget-object p0, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->jumpUrlMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2a

    move v3, v2

    goto :goto_2b

    :cond_2a
    move v3, v1

    :goto_2b
    if-eqz v3, :cond_15

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_34

    :goto_33
    move v1, v2

    :cond_34
    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string p0, "showQueryFromUms:"

    invoke-static {p0, v1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "PocketCardIntentManager"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public final getIntroduceIntentList(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->showQueryFromUms()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getIntroduceIntentList$1;

    invoke-direct {v0, p0, p1, p2}, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getIntroduceIntentList$1;-><init>(Lpantanal/app/groupcard/utils/PocketCardIntentManager;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, p1, v0}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->getJumpUrl(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    :cond_19
    invoke-direct {p0, p1}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->getIntroduceIntentList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    return-void
.end method

.method public final onStartActivity(Landroid/content/Context;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartActivity,intentList:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "PocketCardIntentManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :try_start_2b
    invoke-direct {p0, p1, p2}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->jumpToBrowser(Landroid/content/Context;Ljava/util/List;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_31

    goto :goto_36

    :catchall_31
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_36
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_56

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onStartActivity error:"

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PocketCardIntentManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_56
    return-void
.end method
