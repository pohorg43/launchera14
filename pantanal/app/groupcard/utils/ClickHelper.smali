.class public final Lpantanal/app/groupcard/utils/ClickHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClickHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClickHelper.kt\npantanal/app/groupcard/utils/ClickHelper\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n32#2,2:179\n766#3:181\n857#3,2:182\n766#3:184\n857#3,2:185\n*S KotlinDebug\n*F\n+ 1 ClickHelper.kt\npantanal/app/groupcard/utils/ClickHelper\n*L\n133#1:179,2\n155#1:181\n155#1:182,2\n162#1:184\n162#1:185,2\n*E\n"
    }
.end annotation


# static fields
.field private static final APP_PREFIX:Ljava/lang/String; = "nativeapp://"

.field public static final INSTANCE:Lpantanal/app/groupcard/utils/ClickHelper;

.field private static final TAG:Ljava/lang/String; = "ClickHelper"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/groupcard/utils/ClickHelper;

    invoke-direct {v0}, Lpantanal/app/groupcard/utils/ClickHelper;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/utils/ClickHelper;->INSTANCE:Lpantanal/app/groupcard/utils/ClickHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createIntentByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 14

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_c

    move v1, p0

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    if-ne v1, p0, :cond_10

    goto :goto_11

    :cond_10
    move p0, v0

    :goto_11
    if-eqz p0, :cond_30

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_31

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "ClickHelper"

    const-string v2, "createIntentByPackage, intent is null"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :cond_31
    :goto_31
    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createIntentByPackage, intent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "ClickHelper"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object p0
.end method

.method private final createIntentByUri(Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;)Landroid/content/Intent;
    .registers 19

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->getUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-static {v0}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1d

    move v4, v2

    goto :goto_1e

    :cond_1d
    move v4, v3

    :goto_1e
    if-ne v4, v2, :cond_22

    move v4, v2

    goto :goto_23

    :cond_22
    move v4, v3

    :goto_23
    if-eqz v4, :cond_2d

    const/4 v4, 0x2

    const-string v5, "nativeapp://"

    invoke-static {v0, v5, v1, v4}, Lk7/q;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, v1

    :goto_2e
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->getData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-static {v4}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3e

    :cond_3d
    move-object v4, v1

    :goto_3e
    if-eqz v4, :cond_4d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_48

    move v5, v2

    goto :goto_49

    :cond_48
    move v5, v3

    :goto_49
    if-ne v5, v2, :cond_4d

    move v5, v2

    goto :goto_4e

    :cond_4d
    move v5, v3

    :goto_4e
    if-eqz v5, :cond_55

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_56

    :cond_55
    move-object v4, v1

    :goto_56
    const-string v5, "android.intent.action.VIEW"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    if-nez v4, :cond_74

    sget-object v6, Ly8/c;->a:Ly8/c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "ClickHelper"

    const-string v8, "createIntentByUri,action == Intent.ACTION_VIEW && data == null,return null intent!"

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1

    :cond_74
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->getParams()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_83

    invoke-static {v5}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_84

    :cond_83
    move-object v5, v1

    :goto_84
    if-eqz v5, :cond_92

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_8e

    move v6, v2

    goto :goto_8f

    :cond_8e
    move v6, v3

    :goto_8f
    if-ne v6, v2, :cond_92

    goto :goto_93

    :cond_92
    move v2, v3

    :goto_93
    if-eqz v2, :cond_96

    goto :goto_97

    :cond_96
    move-object v5, v1

    :goto_97
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    if-eqz v0, :cond_a1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_a1
    if-eqz v4, :cond_a6

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_a6
    if-eqz v5, :cond_ca

    :try_start_a8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_ad
    .catch Lorg/json/JSONException; {:try_start_a8 .. :try_end_ad} :catch_af

    move-object v1, v0

    goto :goto_ca

    :catch_af
    move-exception v0

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "createIntentByUri error, params can not cast to JSONObject: "

    invoke-static {v4, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "ClickHelper"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_ca
    :goto_ca
    if-eqz v1, :cond_eb

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_eb

    const-string v3, "keys()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_eb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d7

    :cond_eb
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v3, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createIntentByUri, intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "ClickHelper"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v2
.end method

.method private final filterValidIntent(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "QueryPermissionsNeeded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "filterValidIntent"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",before filter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "ClickHelper"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p0}, Lpantanal/app/groupcard/utils/ClickHelper;->upperAndroidT()Z

    move-result p0

    if-eqz p0, :cond_62

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v1

    const-string v2, "packageManager.queryInte…Long())\n                )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_39

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_62
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6b
    :goto_6b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    const/high16 v2, 0x20000

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const-string v2, "packageManager.queryInte…PackageManager.MATCH_ALL)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6b

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_8f
    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",after filter:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "ClickHelper"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object p0
.end method

.method private final upperAndroidT()Z
    .registers 2
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x21
    .end annotation

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public final startMultistageActivity(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "infoList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ly8/c;->a:Ly8/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "startMultistageActivity"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " begin,infoList:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "ClickHelper"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;

    invoke-virtual {v4}, Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lpantanal/app/groupcard/utils/ClickHelper;->createIntentByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_59

    invoke-direct {v0, v4}, Lpantanal/app/groupcard/utils/ClickHelper;->createIntentByUri(Lpantanal/app/groupcard/plugin/bean/SeedlingActivityInfo;)Landroid/content/Intent;

    move-result-object v5

    :cond_59
    if-eqz v5, :cond_3f

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_5f
    sget-object v16, Ly8/c;->a:Ly8/c;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, ", intentList.size: "

    invoke-static {v15, v4, v2}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xfc

    const/16 v26, 0x0

    const-string v17, "ClickHelper"

    invoke-static/range {v16 .. v26}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {v0, v3, v1}, Lpantanal/app/groupcard/utils/ClickHelper;->filterValidIntent(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
