.class public final Lpantanal/decision/DecisionManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/decision/IServiceDecision;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/decision/DecisionManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDecisionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecisionManager.kt\npantanal/decision/DecisionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1864#2,3:282\n1864#2,3:285\n1864#2,3:288\n1864#2,3:291\n*S KotlinDebug\n*F\n+ 1 DecisionManager.kt\npantanal/decision/DecisionManager\n*L\n140#1:282,3\n188#1:285,3\n219#1:288,3\n240#1:291,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/decision/DecisionManager$Companion;

.field private static final TAG:Ljava/lang/String; = "DecisionManager"

.field private static final mManagerInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lpantanal/decision/IServiceDecision;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final decisionAdapter$delegate:Lh4/f;

.field private final entranceType:I

.field private final multiInstanceDecisionAdapter$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/decision/DecisionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/decision/DecisionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/decision/DecisionManager;->Companion:Lpantanal/decision/DecisionManager$Companion;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lpantanal/decision/DecisionManager;->mManagerInstances:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    new-instance p1, Lpantanal/decision/DecisionManager$multiInstanceDecisionAdapter$2;

    invoke-direct {p1, p0}, Lpantanal/decision/DecisionManager$multiInstanceDecisionAdapter$2;-><init>(Lpantanal/decision/DecisionManager;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/decision/DecisionManager;->multiInstanceDecisionAdapter$delegate:Lh4/f;

    sget-object p1, Lpantanal/decision/DecisionManager$decisionAdapter$2;->INSTANCE:Lpantanal/decision/DecisionManager$decisionAdapter$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/decision/DecisionManager;->decisionAdapter$delegate:Lh4/f;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lpantanal/decision/DecisionManager;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$getEntranceType$p(Lpantanal/decision/DecisionManager;)I
    .registers 1

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    return p0
.end method

.method public static final synthetic access$getMManagerInstances$cp()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lpantanal/decision/DecisionManager;->mManagerInstances:Landroid/util/SparseArray;

    return-object v0
.end method

.method private final getDecisionAdapter()Lpantanal/decision/DecisionAdapter;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionManager;->decisionAdapter$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/decision/DecisionAdapter;

    return-object p0
.end method

.method private final getEntranceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v0, p0}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(I)Lpantanal/decision/IServiceDecision;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lpantanal/decision/DecisionManager;->Companion:Lpantanal/decision/DecisionManager$Companion;

    invoke-virtual {v0, p0}, Lpantanal/decision/DecisionManager$Companion;->getInstance(I)Lpantanal/decision/IServiceDecision;

    move-result-object p0

    return-object p0
.end method

.method private final getMultiInstanceDecisionAdapter()Lpantanal/decision/MultiInstanceDecisionAdapter;
    .registers 1

    iget-object p0, p0, Lpantanal/decision/DecisionManager;->multiInstanceDecisionAdapter$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/decision/MultiInstanceDecisionAdapter;

    return-object p0
.end method


# virtual methods
.method public disableSubDomain(Ljava/lang/String;)Z
    .registers 14

    const-string v0, "subDomain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpantanal/decision/service/SeedlingServiceHelper;->INSTANCE:Lpantanal/decision/service/SeedlingServiceHelper;

    invoke-virtual {v0, p1}, Lpantanal/decision/service/SeedlingServiceHelper;->disableSubDomain(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    const-string v2, "disableSubDomain subDomain:"

    const-string v3, ", entranceType:"

    const-string v4, ", result:"

    invoke-static {v2, p1, v3, p0, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v0
.end method

.method public getCacheMultiInstanceRecommendList()Ljava/util/List;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object v11, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "entrance = "

    const-string v1, " begin to getCacheMultiInstanceRecommendList"

    invoke-static {v12, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v0, v11

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v10, v20

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getMultiInstanceDecisionAdapter()Lpantanal/decision/MultiInstanceDecisionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getCacheMultiInstanceRecommendList()Ljava/util/List;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    const-string v10, " getCacheMultiInstanceRecommendList,final list size = "

    invoke-static {v12, v0, v10, v1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionManager"

    move-object v0, v11

    move-object v11, v10

    move-object/from16 v10, v20

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_98

    check-cast v2, Lpantanal/decision/ServiceInfo;

    sget-object v22, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, ",idx="

    invoke-static {v12, v4, v11, v5, v6}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xfc

    const/16 v32, 0x0

    const-string v23, "DecisionManager"

    invoke-static/range {v22 .. v32}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move v1, v3

    goto :goto_52

    :cond_98
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_9d
    return-object v21
.end method

.method public getCacheRecommendList()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entrance = "

    const-string v3, " begin to getCacheRecommendList"

    invoke-static {v2, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v0, p0}, Lpantanal/decision/DecisionCenter;->queryCacheRecommendList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurMultiInstanceRecommendList(I)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    sget-object v12, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v1

    const-string v13, "entrance = "

    const-string v2, " begin to getCurMultiInstanceRecommendList,recmdType = "

    invoke-static {v13, v1, v2, v0}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v12

    move v6, v14

    move v7, v15

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getMultiInstanceDecisionAdapter()Lpantanal/decision/MultiInstanceDecisionAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getCurMultiInstanceRecommendList(I)Ljava/util/List;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const-string v10, " getCurMultiInstanceRecommendList,final list size = "

    invoke-static {v13, v0, v10, v1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/16 v16, 0x0

    move-object v0, v12

    move-object v12, v10

    move-object/from16 v10, v16

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_93

    check-cast v2, Lpantanal/decision/ServiceInfo;

    sget-object v14, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, ",idx="

    invoke-static {v13, v4, v12, v5, v6}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "DecisionManager"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move v1, v3

    goto :goto_4d

    :cond_93
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_98
    return-object v11
.end method

.method public getCurrentRecommendList(I)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    sget-object v12, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v1

    const-string v13, "entrance = "

    const-string v2, " begin to getCurrentRecommendList,recmdType = "

    invoke-static {v13, v1, v2, v0}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v12

    move v6, v14

    move v7, v15

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v1, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    move-object/from16 v11, p0

    iget v2, v11, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v1, v2, v0}, Lpantanal/decision/DecisionCenter;->queryCurRecommendList(II)Ljava/util/List;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    const-string v10, " getCurrentRecommendList,final list size = "

    invoke-static {v13, v0, v10, v1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/16 v17, 0x0

    move-object v0, v12

    move-object v12, v10

    move-object/from16 v10, v17

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_95

    check-cast v2, Lpantanal/decision/ServiceInfo;

    sget-object v17, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, ",idx="

    invoke-static {v13, v4, v12, v5, v6}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "DecisionManager"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move v1, v3

    goto :goto_4f

    :cond_95
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_9a
    return-object v16
.end method

.method public getDecisionAllData()Ljava/util/List;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object v11, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "entrance = "

    const-string v1, " begin to getDecisionAllData"

    invoke-static {v12, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v0, v11

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v10, v20

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    move-object/from16 v10, p0

    iget v1, v10, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v0, v1}, Lpantanal/decision/DecisionCenter;->queryDecisionAllData(I)Ljava/util/List;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    const-string v9, " getDecisionAllData,final list size = "

    invoke-static {v12, v0, v9, v1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionManager"

    move-object v0, v11

    move-object v11, v9

    move/from16 v9, v19

    move-object/from16 v10, v20

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_9c

    check-cast v2, Lpantanal/decision/ServiceInfo;

    sget-object v22, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, ",idx="

    invoke-static {v12, v4, v11, v5, v6}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xfc

    const/16 v32, 0x0

    const-string v23, "DecisionManager"

    invoke-static/range {v22 .. v32}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move v1, v3

    goto :goto_56

    :cond_9c
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_a1
    return-object v21
.end method

.method public queryRecommendSceneList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/decision/PantaSceneInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getDecisionAdapter()Lpantanal/decision/DecisionAdapter;

    move-result-object v0

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v0, p0, p1}, Lpantanal/decision/DecisionAdapter;->queryRecommendSceneList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryServiceInfo(Ljava/lang/String;)Lpantanal/decision/SeedlingServiceInfo;
    .registers 14

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpantanal/decision/service/SeedlingServiceHelper;->INSTANCE:Lpantanal/decision/service/SeedlingServiceHelper;

    invoke-virtual {v0, p1}, Lpantanal/decision/service/SeedlingServiceHelper;->queryServiceInfo(Ljava/lang/String;)Lpantanal/decision/SeedlingServiceInfo;

    move-result-object v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    const-string v2, "queryServiceInfo serviceId:"

    const-string v3, ", entranceType:"

    const-string v4, ", seedlingServiceInfo:"

    invoke-static {v2, p1, v3, p0, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public registerDecisionListCallback(Lpantanal/decision/DecisionObserver;I)V
    .registers 15

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " begin to registerDecisionListCallback,recmdType = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v0, p0, p1, p2}, Lpantanal/decision/DecisionCenter;->register(ILpantanal/decision/DecisionObserver;I)V

    return-void
.end method

.method public registerDecisionSceneListCallback(ILpantanal/decision/PantaSceneListObserver;)V
    .registers 15

    const-string v0, "sceneListObserver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "entrance = "

    const-string v3, " begin to registerDecisionSceneListCallback,recomdType = "

    const-string v4, ",observer = "

    invoke-static {v2, v0, v3, p1, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getDecisionAdapter()Lpantanal/decision/DecisionAdapter;

    move-result-object v0

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v0, p1, p0, p2}, Lpantanal/decision/DecisionAdapter;->registerSceneListObserver(IILpantanal/decision/PantaSceneListObserver;)V

    return-void
.end method

.method public registerMultiInstanceDecisionListCallBack(Lpantanal/decision/DecisionObserver;I)V
    .registers 15

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " begin to registerMultiInstanceDecisionListCallBack,recomdType = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getMultiInstanceDecisionAdapter()Lpantanal/decision/MultiInstanceDecisionAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lpantanal/decision/MultiInstanceDecisionAdapter;->registerMultiInstanceDecisionListCallBack(Lpantanal/decision/DecisionObserver;I)V

    return-void
.end method

.method public reportStatistics(Lpantanal/decision/StatisticsBean;)V
    .registers 14

    const-string v0, "statisticsBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " begin to reportStatistics,statisticsBean = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/decision/statistics/StatisticsManager;->Companion:Lpantanal/decision/statistics/StatisticsManager$Companion;

    invoke-virtual {v0}, Lpantanal/decision/statistics/StatisticsManager$Companion;->getSInstance()Lpantanal/decision/statistics/StatisticsManager;

    move-result-object v0

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2, p1}, Lpantanal/decision/statistics/StatisticsManager;->reportStatistics(JLpantanal/decision/StatisticsBean;)V

    return-void
.end method

.method public reportStatisticsList(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/decision/StatisticsBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "statisticsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " begin to reportStatistics,statisticsList = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/decision/statistics/StatisticsManager;->Companion:Lpantanal/decision/statistics/StatisticsManager$Companion;

    invoke-virtual {v0}, Lpantanal/decision/statistics/StatisticsManager$Companion;->getSInstance()Lpantanal/decision/statistics/StatisticsManager;

    move-result-object v0

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2, p1}, Lpantanal/decision/statistics/StatisticsManager;->reportStatistics(JLjava/util/List;)V

    return-void
.end method

.method public unregisterAllSceneListCallback(I)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entrance = "

    const-string v3, " begin to unregisterAllSceneListCallback,recomdType = "

    invoke-static {v2, v1, v3, p1}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getDecisionAdapter()Lpantanal/decision/DecisionAdapter;

    move-result-object v0

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v0, p1, p0}, Lpantanal/decision/DecisionAdapter;->unregisterAllSceneListObserverOfCurEntrance(II)V

    return-void
.end method

.method public unregisterDecisionListCallback(Lpantanal/decision/DecisionObserver;I)V
    .registers 15

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " begin to unregisterDecisionListCallback,recomdType = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v0, p0, p1, p2}, Lpantanal/decision/DecisionCenter;->unregister(ILpantanal/decision/DecisionObserver;I)V

    return-void
.end method

.method public unregisterDecisionSceneListCallback(ILpantanal/decision/PantaSceneListObserver;)V
    .registers 15

    const-string v0, "sceneListObserver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "entrance = "

    const-string v3, " begin to unregisterDecisionSceneListCallback,recomdType = "

    const-string v4, ",cb = "

    invoke-static {v2, v0, v3, p1, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getDecisionAdapter()Lpantanal/decision/DecisionAdapter;

    move-result-object v0

    iget p0, p0, Lpantanal/decision/DecisionManager;->entranceType:I

    invoke-virtual {v0, p1, p0, p2}, Lpantanal/decision/DecisionAdapter;->unregisterSceneListObserver(IILpantanal/decision/PantaSceneListObserver;)V

    return-void
.end method

.method public unregisterMultiInstanceListCallback(Lpantanal/decision/DecisionObserver;I)V
    .registers 15

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " begin to unregisterDecisionListCallback,recomdType = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "DecisionManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/decision/DecisionManager;->getMultiInstanceDecisionAdapter()Lpantanal/decision/MultiInstanceDecisionAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lpantanal/decision/MultiInstanceDecisionAdapter;->unregisterMultiInstanceListCallback(Lpantanal/decision/DecisionObserver;I)V

    return-void
.end method
