.class public final Lcom/android/launcher3/card/groupcard/GroupCardFilter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/IGroupCardFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/groupcard/GroupCardFilter$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGroupCardFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupCardFilter.kt\ncom/android/launcher3/card/groupcard/GroupCardFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1855#2,2:59\n*S KotlinDebug\n*F\n+ 1 GroupCardFilter.kt\ncom/android/launcher3/card/groupcard/GroupCardFilter\n*L\n46#1:59,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/groupcard/GroupCardFilter$Companion;

.field private static final TAG:Ljava/lang/String; = "GroupCardFilter"

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/launcher3/card/groupcard/GroupCardFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/groupcard/GroupCardFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/groupcard/GroupCardFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/groupcard/GroupCardFilter;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardFilter$Companion;

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/android/launcher3/card/groupcard/GroupCardFilter$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardFilter$Companion$sInstance$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/groupcard/GroupCardFilter;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/groupcard/GroupCardFilter;->sInstance$delegate:Lh4/f;

    return-object v0
.end method


# virtual methods
.method public getFilterServices()Ljava/util/List;
    .registers 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {v1}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getCellLayoutParent()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v2

    :goto_14
    const-string v3, "GroupCardFilter"

    if-nez v1, :cond_1f

    const-string v1, "filter failed for CellLayout is null"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c6

    :cond_1f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2f

    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2f
    invoke-static {v1}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->getNeighborPage(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v1, v5}, Lcom/android/launcher3/CellLayout;->getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3e
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v4}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v5

    if-eqz v5, :cond_59

    iget-object v5, v5, Lcom/android/launcher3/card/LauncherCardInfo;->mServiceId:Ljava/lang/String;

    move-object/from16 v31, v5

    goto :goto_5b

    :cond_59
    move-object/from16 v31, v2

    :goto_5b
    invoke-virtual {v4}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v4

    if-eqz v4, :cond_68

    iget v4, v4, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_69

    :cond_68
    move-object v4, v2

    :goto_69
    new-instance v5, Lpantanal/app/bean/CardConfigInfo;

    if-eqz v4, :cond_72

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_73

    :cond_72
    const/4 v4, -0x1

    :goto_73
    move v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const v46, -0x1000002

    const/16 v47, 0x7f

    const/16 v48, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v48}, Lpantanal/app/bean/CardConfigInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42

    :cond_c6
    :goto_c6
    const-string v1, "getFilterServices, size = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",filterList ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
