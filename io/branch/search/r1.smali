.class public final Lio/branch/search/r1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/r1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/r1$a;


# instance fields
.field public final a:Lio/branch/search/t5;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/r1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/r1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/r1;->Companion:Lio/branch/search/r1$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/t5;)V
    .registers 3

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/r1;Le8/x;Lio/branch/search/m;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)Lio/branch/search/f5;
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_6

    const-string p4, ""

    :cond_6
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_c

    const/4 p5, 0x0

    :cond_c
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/r1;->a(Le8/x;Lio/branch/search/m;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/f5;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/r1;Le8/x;Lio/branch/search/m;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/r1;->a(Le8/x;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Le8/x;Lio/branch/search/m;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/f5;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/x;",
            "Lio/branch/search/m;",
            "Lio/branch/search/BranchSearchError$ERR_CODE;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lio/branch/search/f5<",
            "Lio/branch/search/BranchSearchError;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/branch/search/f0;->a()Lio/branch/search/j0;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/j0;->a()Z

    move-result p0

    if-eqz p0, :cond_c

    move-object p0, p4

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    const/4 p1, 0x0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, p1

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    if-nez v0, :cond_3a

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lk7/t;->Y(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "BranchSearchSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    :cond_3a
    if-eqz p5, :cond_5f

    const-string p0, "exception"

    invoke-virtual {p5, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, ", "

    invoke-static {p4, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p5, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_55
    invoke-virtual {p5, p0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_5f

    const-string p0, "api_calls"

    invoke-virtual {p2, p0, p5, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_5f
    new-instance p0, Lio/branch/search/f5$a;

    new-instance p1, Lio/branch/search/BranchSearchError;

    invoke-direct {p1, p3}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {p0, p1}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Le8/x;Lorg/json/JSONObject;I)Lio/branch/search/f5;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/x;",
            "Lorg/json/JSONObject;",
            "I)",
            "Lio/branch/search/f5<",
            "Lio/branch/search/BranchSearchError;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string p0, "error"

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :cond_18
    const/16 p0, 0x190

    if-lt p3, p0, :cond_26

    new-instance p0, Lio/branch/search/BranchSearchError;

    invoke-static {p3}, Lio/branch/search/BranchSearchError$ERR_CODE;->a(I)Lio/branch/search/BranchSearchError$ERR_CODE;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    goto :goto_2b

    :cond_26
    new-instance p0, Lio/branch/search/BranchSearchError;

    invoke-direct {p0, p2}, Lio/branch/search/BranchSearchError;-><init>(Lorg/json/JSONObject;)V

    :goto_2b
    invoke-static {}, Lio/branch/search/f0;->a()Lio/branch/search/j0;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/j0;->a()Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", url: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Le8/x;->a:Le8/r;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_55

    :cond_54
    const/4 p1, 0x0

    :goto_55
    if-eqz p1, :cond_60

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_5e

    goto :goto_60

    :cond_5e
    const/4 p2, 0x0

    goto :goto_61

    :cond_60
    :goto_60
    const/4 p2, 0x1

    :goto_61
    if-nez p2, :cond_81

    const/16 p2, 0x1000

    invoke-static {p1, p2}, Lk7/t;->Y(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "HttpPool"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_81
    new-instance p1, Lio/branch/search/f5$a;

    invoke-direct {p1, p0}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a()Lio/branch/search/t5;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getChannel1"
    .end annotation

    iget-object p0, p0, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    return-object p0
.end method

.method public final a(Le8/x;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/x;",
            "Lio/branch/search/m;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p4

    instance-of v4, v0, Lio/branch/search/r1$j;

    if-eqz v4, :cond_1b

    move-object v4, v0

    check-cast v4, Lio/branch/search/r1$j;

    iget v5, v4, Lio/branch/search/r1$j;->b:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1b

    sub-int/2addr v5, v6

    iput v5, v4, Lio/branch/search/r1$j;->b:I

    goto :goto_20

    :cond_1b
    new-instance v4, Lio/branch/search/r1$j;

    invoke-direct {v4, v1, v0}, Lio/branch/search/r1$j;-><init>(Lio/branch/search/r1;Ll4/d;)V

    :goto_20
    iget-object v0, v4, Lio/branch/search/r1$j;->a:Ljava/lang/Object;

    sget-object v5, Lm4/a;->a:Lm4/a;

    iget v6, v4, Lio/branch/search/r1$j;->b:I

    const-string v7, ": "

    const/4 v8, 0x0

    const-string v9, "exception closing okhttp Response."

    const-string v10, "HttpPool.executeRequest"

    const-string v11, "analytics_window_id"

    const/16 v12, 0xc8

    const-string v13, "request_id"

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v6, :cond_7d

    if-ne v6, v14, :cond_75

    iget-object v1, v4, Lio/branch/search/r1$j;->i:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v4, Lio/branch/search/r1$j;->h:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v4, Lio/branch/search/r1$j;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, v4, Lio/branch/search/r1$j;->f:Ljava/lang/Object;

    check-cast v5, Lio/branch/search/m;

    iget-object v6, v4, Lio/branch/search/r1$j;->e:Ljava/lang/Object;

    check-cast v6, Le8/x;

    iget-object v4, v4, Lio/branch/search/r1$j;->d:Ljava/lang/Object;

    check-cast v4, Lio/branch/search/r1;

    :try_start_51
    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_6b
    .catchall {:try_start_51 .. :try_end_54} :catchall_5e

    move-object v8, v3

    move-object v3, v5

    move-object/from16 v30, v6

    move-object v6, v1

    move-object v1, v4

    move-object v4, v2

    move-object/from16 v2, v30

    goto :goto_9f

    :catchall_5e
    move-exception v0

    move-object v8, v3

    move-object v1, v4

    move-object v3, v5

    move v7, v14

    move-object v4, v0

    move-object/from16 v30, v6

    move-object v6, v2

    move-object/from16 v2, v30

    goto/16 :goto_50f

    :catch_6b
    move-exception v0

    move-object v8, v3

    move-object v1, v4

    move-object v3, v5

    move-object v12, v7

    move v7, v14

    move-object v4, v2

    move-object v2, v6

    goto/16 :goto_45e

    :cond_75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :try_start_87
    iput-object v1, v4, Lio/branch/search/r1$j;->d:Ljava/lang/Object;

    iput-object v2, v4, Lio/branch/search/r1$j;->e:Ljava/lang/Object;

    iput-object v3, v4, Lio/branch/search/r1$j;->f:Ljava/lang/Object;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8d} :catch_458
    .catchall {:try_start_87 .. :try_end_8d} :catchall_451

    move-object/from16 v8, p3

    :try_start_8f
    iput-object v8, v4, Lio/branch/search/r1$j;->g:Ljava/lang/Object;

    iput-object v6, v4, Lio/branch/search/r1$j;->h:Ljava/lang/Object;

    iput-object v6, v4, Lio/branch/search/r1$j;->i:Ljava/lang/Object;

    iput v14, v4, Lio/branch/search/r1$j;->b:I

    invoke-virtual {v1, v3, v2, v4}, Lio/branch/search/r1;->a(Lio/branch/search/m;Le8/x;Ll4/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9b} :catch_44f
    .catchall {:try_start_8f .. :try_end_9b} :catchall_44d

    if-ne v0, v5, :cond_9e

    return-object v5

    :cond_9e
    move-object v4, v6

    :goto_9f
    :try_start_9f
    check-cast v0, Le8/z;

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    invoke-virtual {v1, v0}, Lio/branch/search/r1;->a(Le8/z;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v8, :cond_b2

    if-eqz v5, :cond_b2

    invoke-virtual {v5, v13, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b2
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Le8/z;

    iget v6, v6, Le8/z;->c:I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_b9} :catch_445
    .catchall {:try_start_9f .. :try_end_b9} :catchall_449

    const/16 v14, 0x1f4

    if-lt v6, v14, :cond_121

    :try_start_bd
    sget-object v19, Lio/branch/search/BranchSearchError$ERR_CODE;->g:Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v20, "statusCode >= 500"

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v21}, Lio/branch/search/r1;->a(Le8/x;Lio/branch/search/m;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/f5;

    move-result-object v5
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_cd} :catch_441
    .catchall {:try_start_bd .. :try_end_cd} :catchall_11d

    iget-object v0, v1, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    sget-object v1, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    if-ne v0, v1, :cond_102

    iget-object v0, v2, Le8/x;->c:Le8/q;

    invoke-virtual {v0, v11}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_102

    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Le8/z;

    if-eqz v1, :cond_e7

    iget v1, v1, Le8/z;->c:I

    if-ne v1, v12, :cond_e7

    const/4 v14, 0x1

    goto :goto_e8

    :cond_e7
    move v14, v15

    :goto_e8
    if-eqz v14, :cond_f4

    if-eqz v3, :cond_102

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_102

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_102

    :cond_f4
    if-eqz v3, :cond_102

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_102

    new-instance v6, Lio/branch/search/r1$c;

    invoke-direct {v6, v4, v3, v2}, Lio/branch/search/r1$c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/m;Le8/x;)V

    invoke-virtual {v1, v0, v6}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_102
    :goto_102
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    if-eqz v0, :cond_11c

    :try_start_108
    invoke-virtual {v0}, Le8/z;->close()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_10c

    goto :goto_11c

    :catch_10c
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_11c

    new-instance v0, Lh4/j;

    invoke-direct {v0, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v10, v9, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_11c
    :goto_11c
    return-object v5

    :catchall_11d
    move-exception v0

    const/4 v7, 0x1

    goto/16 :goto_50c

    :cond_121
    :try_start_121
    check-cast v0, Le8/z;

    iget-object v0, v0, Le8/z;->g:Le8/b0;

    if-nez v0, :cond_187

    sget-object v19, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    const-string v20, "response.body() == null"

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v21}, Lio/branch/search/r1;->a(Le8/x;Lio/branch/search/m;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/f5;

    move-result-object v5
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_137} :catch_441
    .catchall {:try_start_121 .. :try_end_137} :catchall_11d

    iget-object v0, v1, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    sget-object v1, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    if-ne v0, v1, :cond_16c

    iget-object v0, v2, Le8/x;->c:Le8/q;

    invoke-virtual {v0, v11}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16c

    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Le8/z;

    if-eqz v1, :cond_151

    iget v1, v1, Le8/z;->c:I

    if-ne v1, v12, :cond_151

    const/4 v14, 0x1

    goto :goto_152

    :cond_151
    move v14, v15

    :goto_152
    if-eqz v14, :cond_15e

    if-eqz v3, :cond_16c

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_16c

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_16c

    :cond_15e
    if-eqz v3, :cond_16c

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_16c

    new-instance v6, Lio/branch/search/r1$d;

    invoke-direct {v6, v4, v3, v2}, Lio/branch/search/r1$d;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/m;Le8/x;)V

    invoke-virtual {v1, v0, v6}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_16c
    :goto_16c
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    if-eqz v0, :cond_186

    :try_start_172
    invoke-virtual {v0}, Le8/z;->close()V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_175} :catch_176

    goto :goto_186

    :catch_176
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_186

    new-instance v0, Lh4/j;

    invoke-direct {v0, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v10, v9, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_186
    :goto_186
    return-object v5

    :cond_187
    :try_start_187
    invoke-virtual {v1}, Lio/branch/search/r1;->a()Lio/branch/search/t5;

    move-result-object v6

    sget-object v14, Lio/branch/search/t5;->n:Lio/branch/search/t5;
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18d} :catch_441
    .catchall {:try_start_187 .. :try_end_18d} :catchall_11d

    const-string v12, "api_calls"

    if-ne v6, v14, :cond_24b

    :try_start_191
    iget-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Le8/z;
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_195} :catch_245
    .catchall {:try_start_191 .. :try_end_195} :catchall_11d

    :try_start_195
    iget-object v6, v6, Le8/z;->f:Le8/q;
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_197} :catch_241
    .catchall {:try_start_195 .. :try_end_197} :catchall_11d

    :try_start_197
    const-string v14, "Content-Type"

    invoke-virtual {v6, v14}, Le8/q;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v14, "response.headers().values(\"Content-Type\")"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1a8} :catch_245
    .catchall {:try_start_197 .. :try_end_1a8} :catchall_11d

    if-eqz v6, :cond_1cf

    :try_start_1aa
    const-string v14, ";"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1b0} :catch_441
    .catchall {:try_start_1aa .. :try_end_1b0} :catchall_11d

    move-object/from16 v22, v7

    const/4 v7, 0x6

    :try_start_1b3
    invoke-static {v6, v14, v15, v15, v7}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1d1

    invoke-static {v6}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1d1

    invoke-static {v6}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1c9} :catch_1ca
    .catchall {:try_start_1b3 .. :try_end_1c9} :catchall_11d

    goto :goto_1d2

    :catch_1ca
    move-exception v0

    move-object/from16 v12, v22

    goto/16 :goto_443

    :cond_1cf
    move-object/from16 v22, v7

    :cond_1d1
    const/4 v6, 0x0

    :goto_1d2
    :try_start_1d2
    const-string v7, "application/json"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d8} :catch_23f
    .catchall {:try_start_1d2 .. :try_end_1d8} :catchall_11d

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_2d1

    if-eqz v5, :cond_1e3

    if-eqz v3, :cond_1e3

    :try_start_1e0
    invoke-virtual {v3, v12, v5, v15}, Lio/branch/search/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_1e3
    new-instance v5, Lio/branch/search/f5$b;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v5, v0}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_1ed} :catch_43d
    .catchall {:try_start_1e0 .. :try_end_1ed} :catchall_50b

    iget-object v0, v1, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    sget-object v1, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    if-ne v0, v1, :cond_224

    iget-object v0, v2, Le8/x;->c:Le8/q;

    invoke-virtual {v0, v11}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_224

    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Le8/z;

    if-eqz v1, :cond_209

    iget v1, v1, Le8/z;->c:I

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_209

    move v14, v7

    goto :goto_20a

    :cond_209
    move v14, v15

    :goto_20a
    if-eqz v14, :cond_216

    if-eqz v3, :cond_224

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_224

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_224

    :cond_216
    if-eqz v3, :cond_224

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_224

    new-instance v6, Lio/branch/search/r1$e;

    invoke-direct {v6, v4, v3, v2}, Lio/branch/search/r1$e;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/m;Le8/x;)V

    invoke-virtual {v1, v0, v6}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_224
    :goto_224
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    if-eqz v0, :cond_23e

    :try_start_22a
    invoke-virtual {v0}, Le8/z;->close()V
    :try_end_22d
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_22d} :catch_22e

    goto :goto_23e

    :catch_22e
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_23e

    new-instance v0, Lh4/j;

    invoke-direct {v0, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v10, v9, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_23e
    :goto_23e
    return-object v5

    :catch_23f
    move-exception v0

    goto :goto_248

    :catch_241
    move-exception v0

    move-object/from16 v22, v7

    goto :goto_248

    :catch_245
    move-exception v0

    move-object/from16 v22, v7

    :goto_248
    const/4 v7, 0x1

    goto/16 :goto_43e

    :cond_24b
    move-object/from16 v22, v7

    const/4 v7, 0x1

    :try_start_24e
    invoke-virtual {v1}, Lio/branch/search/r1;->a()Lio/branch/search/t5;

    move-result-object v6

    sget-object v14, Lio/branch/search/t5;->r:Lio/branch/search/t5;

    if-ne v6, v14, :cond_2d1

    if-eqz v5, :cond_25d

    if-eqz v3, :cond_25d

    invoke-virtual {v3, v12, v5, v15}, Lio/branch/search/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_25d
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    iget v0, v0, Le8/z;->c:I

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_272

    new-instance v0, Lio/branch/search/f5$b;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v5}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_27e

    :cond_272
    new-instance v0, Lio/branch/search/f5$a;

    new-instance v5, Lio/branch/search/BranchSearchError;

    sget-object v6, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {v5, v6}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {v0, v5}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_27e} :catch_43d
    .catchall {:try_start_24e .. :try_end_27e} :catchall_50b

    :goto_27e
    move-object v5, v0

    iget-object v0, v1, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    sget-object v1, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    if-ne v0, v1, :cond_2b6

    iget-object v0, v2, Le8/x;->c:Le8/q;

    invoke-virtual {v0, v11}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b6

    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Le8/z;

    if-eqz v1, :cond_29b

    iget v1, v1, Le8/z;->c:I

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_29b

    move v14, v7

    goto :goto_29c

    :cond_29b
    move v14, v15

    :goto_29c
    if-eqz v14, :cond_2a8

    if-eqz v3, :cond_2b6

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_2b6

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_2b6

    :cond_2a8
    if-eqz v3, :cond_2b6

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_2b6

    new-instance v6, Lio/branch/search/r1$f;

    invoke-direct {v6, v4, v3, v2}, Lio/branch/search/r1$f;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/m;Le8/x;)V

    invoke-virtual {v1, v0, v6}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_2b6
    :goto_2b6
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    if-eqz v0, :cond_2d0

    :try_start_2bc
    invoke-virtual {v0}, Le8/z;->close()V
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2bf} :catch_2c0

    goto :goto_2d0

    :catch_2c0
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_2d0

    new-instance v0, Lh4/j;

    invoke-direct {v0, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v10, v9, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_2d0
    :goto_2d0
    return-object v5

    :cond_2d1
    :try_start_2d1
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v0}, Le8/b0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2da
    .catch Lorg/json/JSONException; {:try_start_2d1 .. :try_end_2da} :catch_3ba
    .catch Ljava/lang/Exception; {:try_start_2d1 .. :try_end_2da} :catch_43d
    .catchall {:try_start_2d1 .. :try_end_2da} :catchall_50b

    if-eqz v5, :cond_2ea

    if-nez v8, :cond_2e5

    :try_start_2de
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v13, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2e5
    if-eqz v3, :cond_2ea

    invoke-virtual {v3, v12, v5, v15}, Lio/branch/search/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_2ea
    invoke-virtual {v1, v6, v3}, Lio/branch/search/r1;->a(Lorg/json/JSONObject;Lio/branch/search/m;)V

    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Le8/z;

    iget v5, v5, Le8/z;->c:I
    :try_end_2f4
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_2f4} :catch_43d
    .catchall {:try_start_2de .. :try_end_2f4} :catchall_50b

    const/16 v12, 0xc8

    if-ne v5, v12, :cond_35f

    const-string v0, "BranchSearchSDK"

    :try_start_2fa
    invoke-static {}, Lio/branch/search/f0;->a()Lio/branch/search/j0;

    move-result-object v5

    invoke-virtual {v5}, Lio/branch/search/j0;->a()Z

    move-result v5

    if-eqz v5, :cond_32e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "url: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Le8/x;->a:Le8/r;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", code: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Le8/z;

    iget v12, v12, Le8/z;->c:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_32f

    :cond_32e
    const/4 v5, 0x0

    :goto_32f
    if-eqz v5, :cond_33a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_338

    goto :goto_33a

    :cond_338
    move v12, v15

    goto :goto_33b

    :cond_33a
    :goto_33a
    move v12, v7

    :goto_33b
    if-nez v12, :cond_359

    const/16 v12, 0x1000

    invoke-static {v5, v12}, Lk7/t;->Y(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_349
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_359

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_349

    :cond_359
    new-instance v0, Lio/branch/search/f5$b;

    invoke-direct {v0, v6}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_367

    :cond_35f
    check-cast v0, Le8/z;

    iget v0, v0, Le8/z;->c:I

    invoke-virtual {v1, v2, v6, v0}, Lio/branch/search/r1;->a(Le8/x;Lorg/json/JSONObject;I)Lio/branch/search/f5;

    move-result-object v0
    :try_end_367
    .catch Ljava/lang/Exception; {:try_start_2fa .. :try_end_367} :catch_43d
    .catchall {:try_start_2fa .. :try_end_367} :catchall_50b

    :goto_367
    move-object v5, v0

    iget-object v0, v1, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    sget-object v1, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    if-ne v0, v1, :cond_39f

    iget-object v0, v2, Le8/x;->c:Le8/q;

    invoke-virtual {v0, v11}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39f

    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Le8/z;

    if-eqz v1, :cond_384

    iget v1, v1, Le8/z;->c:I

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_384

    move v14, v7

    goto :goto_385

    :cond_384
    move v14, v15

    :goto_385
    if-eqz v14, :cond_391

    if-eqz v3, :cond_39f

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_39f

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_39f

    :cond_391
    if-eqz v3, :cond_39f

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_39f

    new-instance v6, Lio/branch/search/r1$h;

    invoke-direct {v6, v4, v3, v2}, Lio/branch/search/r1$h;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/m;Le8/x;)V

    invoke-virtual {v1, v0, v6}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_39f
    :goto_39f
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    if-eqz v0, :cond_3b9

    :try_start_3a5
    invoke-virtual {v0}, Le8/z;->close()V
    :try_end_3a8
    .catch Ljava/lang/Exception; {:try_start_3a5 .. :try_end_3a8} :catch_3a9

    goto :goto_3b9

    :catch_3a9
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_3b9

    new-instance v0, Lh4/j;

    invoke-direct {v0, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v10, v9, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_3b9
    :goto_3b9
    return-object v5

    :catch_3ba
    move-exception v0

    :try_start_3bb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3cb
    .catch Ljava/lang/Exception; {:try_start_3bb .. :try_end_3cb} :catch_43d
    .catchall {:try_start_3bb .. :try_end_3cb} :catchall_50b

    move-object/from16 v12, v22

    :try_start_3cd
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v19, Lio/branch/search/BranchSearchError$ERR_CODE;->g:Lio/branch/search/BranchSearchError$ERR_CODE;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v21}, Lio/branch/search/r1;->a(Le8/x;Lio/branch/search/m;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;)Lio/branch/search/f5;

    move-result-object v5
    :try_end_3e9
    .catch Ljava/lang/Exception; {:try_start_3cd .. :try_end_3e9} :catch_43b
    .catchall {:try_start_3cd .. :try_end_3e9} :catchall_50b

    iget-object v0, v1, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    sget-object v1, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    if-ne v0, v1, :cond_420

    iget-object v0, v2, Le8/x;->c:Le8/q;

    invoke-virtual {v0, v11}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_420

    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Le8/z;

    if-eqz v1, :cond_405

    iget v1, v1, Le8/z;->c:I

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_405

    move v14, v7

    goto :goto_406

    :cond_405
    move v14, v15

    :goto_406
    if-eqz v14, :cond_412

    if-eqz v3, :cond_420

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_420

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_420

    :cond_412
    if-eqz v3, :cond_420

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_420

    new-instance v6, Lio/branch/search/r1$g;

    invoke-direct {v6, v4, v3, v2}, Lio/branch/search/r1$g;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/m;Le8/x;)V

    invoke-virtual {v1, v0, v6}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_420
    :goto_420
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    if-eqz v0, :cond_43a

    :try_start_426
    invoke-virtual {v0}, Le8/z;->close()V
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_426 .. :try_end_429} :catch_42a

    goto :goto_43a

    :catch_42a
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_43a

    new-instance v0, Lh4/j;

    invoke-direct {v0, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v10, v9, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_43a
    :goto_43a
    return-object v5

    :catch_43b
    move-exception v0

    goto :goto_45e

    :catch_43d
    move-exception v0

    :goto_43e
    move-object/from16 v12, v22

    goto :goto_45e

    :catch_441
    move-exception v0

    move-object v12, v7

    :goto_443
    const/4 v7, 0x1

    goto :goto_45e

    :catch_445
    move-exception v0

    move-object v12, v7

    move v7, v14

    goto :goto_45e

    :catchall_449
    move-exception v0

    move v7, v14

    goto/16 :goto_50c

    :catchall_44d
    move-exception v0

    goto :goto_454

    :catch_44f
    move-exception v0

    goto :goto_45b

    :catchall_451
    move-exception v0

    move-object/from16 v8, p3

    :goto_454
    move v7, v14

    :goto_455
    move-object v4, v0

    goto/16 :goto_50f

    :catch_458
    move-exception v0

    move-object/from16 v8, p3

    :goto_45b
    move-object v12, v7

    move v7, v14

    move-object v4, v6

    :goto_45e
    :try_start_45e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    instance-of v5, v0, Lk8/v;

    if-eqz v5, :cond_481

    goto :goto_48f

    :cond_481
    instance-of v5, v0, Ljava/net/SocketException;

    if-eqz v5, :cond_486

    goto :goto_48f

    :cond_486
    instance-of v5, v0, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_48b

    goto :goto_48f

    :cond_48b
    instance-of v5, v0, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_494

    :goto_48f
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->f:Lio/branch/search/BranchSearchError$ERR_CODE;

    :goto_491
    move-object/from16 v25, v0

    goto :goto_4a8

    :cond_494
    instance-of v0, v0, Lio/branch/search/b6;

    if-eqz v0, :cond_4a5

    new-instance v0, Lio/branch/search/f5$a;

    new-instance v5, Lio/branch/search/BranchSearchError;

    sget-object v6, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    invoke-direct {v5, v6}, Lio/branch/search/BranchSearchError;-><init>(Lio/branch/search/BranchSearchError$ERR_CODE;)V

    invoke-direct {v0, v5}, Lio/branch/search/f5$a;-><init>(Ljava/lang/Object;)V

    goto :goto_4b8

    :cond_4a5
    sget-object v0, Lio/branch/search/BranchSearchError$ERR_CODE;->a:Lio/branch/search/BranchSearchError$ERR_CODE;

    goto :goto_491

    :goto_4a8
    const/16 v27, 0x0

    const/16 v28, 0x8

    const/16 v29, 0x0

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-static/range {v22 .. v29}, Lio/branch/search/r1;->a(Lio/branch/search/r1;Le8/x;Lio/branch/search/m;Lio/branch/search/BranchSearchError$ERR_CODE;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)Lio/branch/search/f5;

    move-result-object v0
    :try_end_4b8
    .catchall {:try_start_45e .. :try_end_4b8} :catchall_50b

    :goto_4b8
    move-object v5, v0

    iget-object v0, v1, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    sget-object v1, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    if-ne v0, v1, :cond_4f0

    iget-object v0, v2, Le8/x;->c:Le8/q;

    invoke-virtual {v0, v11}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f0

    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Le8/z;

    if-eqz v1, :cond_4d5

    iget v1, v1, Le8/z;->c:I

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_4d5

    move v14, v7

    goto :goto_4d6

    :cond_4d5
    move v14, v15

    :goto_4d6
    if-eqz v14, :cond_4e2

    if-eqz v3, :cond_4f0

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_4f0

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_4f0

    :cond_4e2
    if-eqz v3, :cond_4f0

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_4f0

    new-instance v6, Lio/branch/search/r1$i;

    invoke-direct {v6, v4, v3, v2}, Lio/branch/search/r1$i;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/m;Le8/x;)V

    invoke-virtual {v1, v0, v6}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_4f0
    :goto_4f0
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    if-eqz v0, :cond_50a

    :try_start_4f6
    invoke-virtual {v0}, Le8/z;->close()V
    :try_end_4f9
    .catch Ljava/lang/Exception; {:try_start_4f6 .. :try_end_4f9} :catch_4fa

    goto :goto_50a

    :catch_4fa
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_50a

    new-instance v0, Lh4/j;

    invoke-direct {v0, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v10, v9, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_50a
    :goto_50a
    return-object v5

    :catchall_50b
    move-exception v0

    :goto_50c
    move-object v6, v4

    goto/16 :goto_455

    :goto_50f
    iget-object v0, v1, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    sget-object v1, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    if-ne v0, v1, :cond_546

    iget-object v0, v2, Le8/x;->c:Le8/q;

    invoke-virtual {v0, v11}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_546

    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Le8/z;

    if-eqz v1, :cond_52b

    iget v1, v1, Le8/z;->c:I

    const/16 v5, 0xc8

    if-ne v1, v5, :cond_52b

    move v14, v7

    goto :goto_52c

    :cond_52b
    move v14, v15

    :goto_52c
    if-eqz v14, :cond_538

    if-eqz v3, :cond_546

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_546

    invoke-virtual {v1, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;)V

    goto :goto_546

    :cond_538
    if-eqz v3, :cond_546

    iget-object v1, v3, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz v1, :cond_546

    new-instance v5, Lio/branch/search/r1$b;

    invoke-direct {v5, v6, v3, v2}, Lio/branch/search/r1$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/m;Le8/x;)V

    invoke-virtual {v1, v0, v5}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    :cond_546
    :goto_546
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Le8/z;

    if-eqz v0, :cond_560

    :try_start_54c
    invoke-virtual {v0}, Le8/z;->close()V
    :try_end_54f
    .catch Ljava/lang/Exception; {:try_start_54c .. :try_end_54f} :catch_550

    goto :goto_560

    :catch_550
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_560

    new-instance v0, Lh4/j;

    invoke-direct {v0, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v10, v9, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :cond_560
    :goto_560
    throw v4
.end method

.method public final a(Lio/branch/search/m;Le8/x;Ll4/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/m;",
            "Le8/x;",
            "Ll4/d<",
            "-",
            "Le8/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    invoke-virtual {p0, p1}, Lio/branch/search/t5;->b(Lio/branch/search/m;)Le8/u;

    move-result-object p0

    invoke-virtual {p0, p2}, Le8/u;->b(Le8/x;)Le8/d;

    move-result-object p0

    const-string p1, "channel.getOkHttpClient(…hSearch).newCall(request)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3}, Lio/branch/search/s1;->a(Le8/d;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/branch/search/m;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Le8/x$a;

    invoke-direct {v0}, Le8/x$a;-><init>()V

    invoke-virtual {v0, p1}, Le8/x$a;->g(Ljava/lang/String;)Le8/x$a;

    const-string p1, "Accept"

    const-string v1, "application/json"

    invoke-virtual {v0, p1, v1}, Le8/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    invoke-static {}, Lio/branch/search/BranchAnalytics;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "analytics_window_id"

    invoke-virtual {v0, v1, p1}, Le8/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    const/4 p1, 0x0

    const-string v1, "GET"

    invoke-virtual {v0, v1, p1}, Le8/x$a;->d(Ljava/lang/String;Le8/y;)Le8/x$a;

    iget-object p1, p0, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    sget-object v1, Lio/branch/search/t5;->n:Lio/branch/search/t5;

    if-ne p1, v1, :cond_45

    if-eqz p2, :cond_45

    invoke-virtual {p2}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Le8/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    invoke-virtual {p2}, Lio/branch/search/m;->e()Lio/branch/search/e;

    move-result-object p1

    const-string v1, "branchSearch.branchDeviceInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/e;->f()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Accept-Language"

    invoke-virtual {v0, v1, p1}, Le8/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    :cond_45
    invoke-virtual {v0}, Le8/x$a;->b()Le8/x;

    move-result-object p1

    const-string v0, "request.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/r1;->a(Le8/x;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/m;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/branch/search/m;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lio/branch/search/f5<",
            "+",
            "Lio/branch/search/BranchSearchError;",
            "+",
            "Lorg/json/JSONObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Le8/x$a;

    invoke-direct {v0}, Le8/x$a;-><init>()V

    invoke-virtual {v0, p1}, Le8/x$a;->g(Ljava/lang/String;)Le8/x$a;

    const-string p1, "Accept"

    const-string v1, "application/json"

    invoke-virtual {v0, p1, v1}, Le8/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    const-string p1, "analytics_window_id"

    invoke-virtual {v0, p1, p4}, Le8/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    const-string p1, "application/json; charset=utf-8"

    invoke-static {p1}, Le8/t;->b(Ljava/lang/String;)Le8/t;

    move-result-object p1

    invoke-static {p1, p2}, Le8/y;->create(Le8/t;Ljava/lang/String;)Le8/y;

    move-result-object p1

    const-string p2, "POST"

    invoke-virtual {v0, p2, p1}, Le8/x$a;->d(Ljava/lang/String;Le8/y;)Le8/x$a;

    invoke-virtual {v0}, Le8/x$a;->b()Le8/x;

    move-result-object v2

    const-string p1, "request"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v5, p5

    invoke-static/range {v1 .. v7}, Lio/branch/search/r1;->a(Lio/branch/search/r1;Le8/x;Lio/branch/search/m;Ljava/lang/String;Ll4/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Le8/z;)Lorg/json/JSONObject;
    .registers 5

    iget-object p0, p1, Le8/z;->f:Le8/q;

    const-string p1, "X-Branch-Analytics-Payload"

    invoke-virtual {p0, p1}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_c

    goto :goto_d

    :cond_c
    move-object p0, p1

    :goto_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_32

    :cond_14
    :try_start_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_1b

    move-object p1, v0

    goto :goto_32

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error parsing analytics result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HttpPool.executeRequest"

    invoke-static {v1, p0, v0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_32
    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;Lio/branch/search/m;)V
    .registers 5

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api_remote_configuration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz p2, :cond_33

    iget-object p0, p0, Lio/branch/search/r1;->a:Lio/branch/search/t5;

    invoke-virtual {p0}, Lio/branch/search/t5;->a()Z

    move-result p0

    if-eqz p0, :cond_33

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONObject;

    if-nez p1, :cond_20

    const/4 p0, 0x0

    :cond_20
    check-cast p0, Lorg/json/JSONObject;

    if-eqz p0, :cond_33

    sget-object p1, Lio/branch/search/w;->Companion:Lio/branch/search/w$a;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "remoteApiConfiguration.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lio/branch/search/w$a;->a(Ljava/lang/String;Lio/branch/search/m;)V

    nop

    :cond_33
    return-void
.end method
