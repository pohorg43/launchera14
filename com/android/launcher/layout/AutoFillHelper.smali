.class public final Lcom/android/launcher/layout/AutoFillHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/layout/LayoutParserInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/layout/AutoFillHelper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAutoFillHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoFillHelper.kt\ncom/android/launcher/layout/AutoFillHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,429:1\n1855#2,2:430\n1855#2,2:432\n1477#2:434\n1502#2,3:435\n1505#2,3:445\n1855#2,2:450\n1855#2,2:452\n372#3,7:438\n215#4,2:448\n*S KotlinDebug\n*F\n+ 1 AutoFillHelper.kt\ncom/android/launcher/layout/AutoFillHelper\n*L\n172#1:430,2\n183#1:432,2\n226#1:434\n226#1:435,3\n226#1:445,3\n235#1:450,2\n310#1:452,2\n226#1:438,7\n228#1:448,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/layout/AutoFillHelper$Companion;

.field private static final SELECTION:Ljava/lang/String; = "_id = ?"

.field private static final TAG:Ljava/lang/String; = "AutoFillHelper"


# instance fields
.field private final context:Landroid/content/Context;

.field private final grid$delegate:Lh4/f;

.field private lastParsedItem:Lcom/android/launcher/layout/Item;

.field private final mEnableAutoFill:Z

.field private final mFolderInsideItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/layout/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mMovableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher/layout/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mOccupancy$delegate:Lh4/f;

.field private traceToken:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/layout/AutoFillHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/layout/AutoFillHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/layout/AutoFillHelper;->Companion:Lcom/android/launcher/layout/AutoFillHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    sget-object p1, Lcom/android/launcher/layout/AutoFillHelper$grid$2;->INSTANCE:Lcom/android/launcher/layout/AutoFillHelper$grid$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->grid$delegate:Lh4/f;

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isDisableLayoutAutoFill()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->mEnableAutoFill:Z

    new-instance p1, Lcom/android/launcher/layout/AutoFillHelper$mOccupancy$2;

    invoke-direct {p1, p0}, Lcom/android/launcher/layout/AutoFillHelper$mOccupancy$2;-><init>(Lcom/android/launcher/layout/AutoFillHelper;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->mOccupancy$delegate:Lh4/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->mFolderInsideItems:Ljava/util/List;

    new-instance p1, Lcom/android/launcher/layout/Item;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    return-void
.end method

.method public static final synthetic access$getGrid(Lcom/android/launcher/layout/AutoFillHelper;)Landroid/graphics/Point;
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isSuccessItem(Lcom/android/launcher/layout/AutoFillHelper;Lcom/android/launcher/layout/Item;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/layout/AutoFillHelper;->isSuccessItem(Lcom/android/launcher/layout/Item;)Z

    move-result p0

    return p0
.end method

.method private final addFolderInsideItems(Landroid/content/ContentValues;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/launcher/layout/AutoFillHelper;->mEnableAutoFill:Z

    if-eqz v2, :cond_57

    const-string v2, "container"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "values.getAsInteger(Favorites.CONTAINER)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_57

    new-instance v3, Lcom/android/launcher/layout/Item;

    const-string v5, "_id"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "values.getAsInteger(Favorites._ID)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1fc

    const/16 v16, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v16}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v0, v0, Lcom/android/launcher/layout/AutoFillHelper;->mFolderInsideItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_57
    return-void
.end method

.method private final clearAutoFillData()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getMOccupancy()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final filterVacantSeatOccupancy()V
    .registers 11

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getMOccupancy()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Point;->y:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    const-string v0, "curPageAllRoomOccupied: x = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getGrid()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    const-string v2, "AutoFillHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mFolderInsideItems:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher/layout/Item;

    invoke-virtual {v4}, Lcom/android/launcher/layout/Item;->getContainer()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_63

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_69
    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mFolderInsideItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_76
    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_76

    iget-object v3, p0, Lcom/android/launcher/layout/AutoFillHelper;->mFolderInsideItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_76

    :cond_9b
    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/layout/Item;

    invoke-direct {p0, v1}, Lcom/android/launcher/layout/AutoFillHelper;->isSuccessItem(Lcom/android/launcher/layout/Item;)Z

    move-result v3

    if-nez v3, :cond_e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not preinstalled: item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getMOccupancy()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v3

    iget v7, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v3

    iget v8, v3, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_e8
    invoke-direct {p0, v1}, Lcom/android/launcher/layout/AutoFillHelper;->toSmallFolderIfNeeded(Lcom/android/launcher/layout/Item;)Z

    goto :goto_a1

    :cond_ec
    return-void
.end method

.method private final getGrid()Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->grid$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method

.method private final getMOccupancy()Lcom/android/launcher3/util/GridOccupancy;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mOccupancy$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/GridOccupancy;

    return-object p0
.end method

.method private final isStartingNewScreen(II)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {v0}, Lcom/android/launcher/layout/Item;->getContainer()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {p0}, Lcom/android/launcher/layout/Item;->getScreenId()I

    move-result p0

    if-eq p0, p2, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private final isSuccessItem(Lcom/android/launcher/layout/Item;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getTagName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "card"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "AutoFillHelper"

    const/4 v2, 0x1

    if-eqz p0, :cond_53

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getCardType()I

    move-result p0

    if-ltz p0, :cond_53

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/card/manager/domain/CardManager;->isCardConfigListInit()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getCardType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oplus/card/manager/domain/CardManager;->isCardAvailable(I)Z

    move-result p0

    goto :goto_33

    :cond_2f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result p0

    :goto_33
    if-eqz p0, :cond_54

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getCardType()I

    move-result v3

    const v4, 0xd3ecf26

    if-ne v3, v4, :cond_54

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_51

    const-string p0, "isSuccessItem: US_CARD should not be show."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    move p0, v0

    goto :goto_54

    :cond_53
    move p0, v2

    :cond_54
    :goto_54
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_73

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSuccessItem: isCardAvailable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_73
    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result p1

    if-eqz p1, :cond_7c

    if-eqz p0, :cond_7c

    move v0, v2

    :cond_7c
    return v0
.end method

.method private final rearrangeMovableItems(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/android/launcher/layout/AutoFillHelper$rearrangeMovableItems$1;

    invoke-direct {v2, p1}, Lcom/android/launcher/layout/AutoFillHelper$rearrangeMovableItems$1;-><init>(Z)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/launcher/layout/AutoFillHelper$rearrangeMovableItems$2;

    invoke-direct {v2, p1}, Lcom/android/launcher/layout/AutoFillHelper$rearrangeMovableItems$2;-><init>(Z)V

    const/4 p1, 0x1

    aput-object v2, v1, p1

    const-string/jumbo p1, "selectors"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lk4/a;

    invoke-direct {p1, v1}, Lk4/a;-><init>([Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p1}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.collections.MutableList<com.android.launcher.layout.Item>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final toSmallFolderIfNeeded(Lcom/android/launcher/layout/Item;)Z
    .registers 12

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "folder"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8f

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_8f

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v0, v2, :cond_8f

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mFolderInsideItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/layout/Item;

    invoke-virtual {v3}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getId()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/launcher/layout/Item;->getId()I

    move-result v3

    if-ne v4, v3, :cond_24

    move v1, v2

    :cond_41
    if-eqz v1, :cond_8f

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getMOccupancy()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object v0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getMOccupancy()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p0

    iget v5, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object p0

    iget v6, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object p0

    iget v7, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Lcom/android/launcher/layout/Item;->getSpan()Landroid/graphics/Point;

    move-result-object p0

    iget v8, p0, Landroid/graphics/Point;->y:I

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_8f
    return v1
.end method

.method private final tryAutoFill()V
    .registers 14

    iget-boolean v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mEnableAutoFill:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->filterVacantSeatOccupancy()V

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    new-instance v2, Lcom/android/launcher/layout/AutoFillHelper$tryAutoFill$1;

    invoke-direct {v2, p0}, Lcom/android/launcher/layout/AutoFillHelper$tryAutoFill$1;-><init>(Lcom/android/launcher/layout/AutoFillHelper;)V

    invoke-static {v1, v2}, Li4/t;->u(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    iget-object v1, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "AutoFillHelper"

    const/4 v3, 0x1

    if-ne v1, v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mFolderInsideItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_3b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "preload ok size "

    invoke-static {v0, v1, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_37
    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->clearAutoFillData()V

    return-void

    :cond_3b
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "auto-fill"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/android/launcher/layout/AutoFillHelper;->rearrangeMovableItems(Z)V

    iget-object v6, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher/layout/Item;

    sget-object v8, Lcom/android/launcher/layout/Item;->Companion:Lcom/android/launcher/layout/Item$Companion;

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->getMOccupancy()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/android/launcher/layout/Item$Companion;->getNewPositionUseFill(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher/layout/Item;)Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_86

    invoke-virtual {v7}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    :cond_86
    const-string/jumbo v8, "tryAutoFill. old location = "

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/launcher/layout/Item;->getOriginalPosition()Landroid/graphics/Point;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " => new location = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :cond_a8
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/launcher/layout/AutoFillHelper;->rearrangeMovableItems(Z)V

    iget-object v7, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_103

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher/layout/Item;

    new-array v9, v3, [Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/launcher/layout/Item;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "cellX"

    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v8}, Lcom/android/launcher/layout/Item;->getVerifiedPosition()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "cellY"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v11, "_id = ?"

    invoke-virtual {v8, v11, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b2

    :cond_103
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v3, v5

    if-eqz v3, :cond_139

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryAutoFill update "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " items:all newCellXY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "previous screen auto fill"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/common/util/OplusLauncherDbUtils;->applyBatch(Landroid/content/Context;Ljava/util/ArrayList;)Z

    :cond_139
    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->clearAutoFillData()V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method private final updateAutoFillData(Lcom/android/launcher/layout/Item;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mMovableItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method public onPostAddElement(Landroid/content/ContentValues;Landroid/graphics/Point;IZLjava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p5

    const-string/jumbo v2, "values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "original"

    move-object/from16 v6, p2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "tagName"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "container"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    const-string/jumbo v3, "screen"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    const-string/jumbo v3, "spanX"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const-string/jumbo v4, "spanY"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v7, "values.getAsInteger(Favorites.SPANX)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v7, "values.getAsInteger(Favorites.SPANY)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object v8, v5

    goto :goto_63

    :cond_5c
    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    move-object v8, v3

    :goto_63
    const-string v3, "card_type"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_75

    :cond_70
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_75
    new-instance v12, Lcom/android/launcher/layout/Item;

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v2, "screenId"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x0

    const-string v2, "cardType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0x20

    const/16 v16, 0x0

    move-object v1, v12

    move/from16 v2, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    move/from16 v9, p4

    move-object/from16 p1, v12

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher/layout/Item;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher/layout/Item;->getSuccess()Z

    move-result v1

    if-eqz v1, :cond_b9

    const-string v1, "card"

    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, v0, Lcom/android/launcher/layout/AutoFillHelper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/ota/AddCardManager;->markAddWeatherStepCardDone(Landroid/content/Context;)V

    :cond_b9
    iget-boolean v1, v0, Lcom/android/launcher/layout/AutoFillHelper;->mEnableAutoFill:Z

    const-string v2, "AutoFillHelper"

    const/16 v3, -0x64

    if-eqz v1, :cond_f7

    iget-object v1, v0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    invoke-virtual {v1}, Lcom/android/launcher/layout/Item;->getContainer()I

    move-result v1

    if-ne v1, v3, :cond_f7

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v4}, Lcom/android/launcher/layout/AutoFillHelper;->isStartingNewScreen(II)Z

    move-result v1

    if-eqz v1, :cond_f7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new screen "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/layout/AutoFillHelper;->tryAutoFill()V

    :cond_f7
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_fe

    return-void

    :cond_fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPostAddElement verified "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/launcher/layout/AutoFillHelper;->lastParsedItem:Lcom/android/launcher/layout/Item;

    iget-boolean v1, v0, Lcom/android/launcher/layout/AutoFillHelper;->mEnableAutoFill:Z

    if-eqz v1, :cond_11e

    invoke-direct {v0, v3}, Lcom/android/launcher/layout/AutoFillHelper;->updateAutoFillData(Lcom/android/launcher/layout/Item;)V

    :cond_11e
    return-void
.end method

.method public onPostLayoutParse()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/layout/AutoFillHelper;->tryAutoFill()V

    iget-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->mFolderInsideItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    iget-object p0, p0, Lcom/android/launcher/layout/AutoFillHelper;->traceToken:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreAddFolder(Landroid/content/ContentValues;)V
    .registers 2

    const-string/jumbo p0, "values"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPreAddShortcut(Landroid/content/ContentValues;)V
    .registers 3

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/layout/AutoFillHelper;->addFolderInsideItems(Landroid/content/ContentValues;)V

    return-void
.end method

.method public onPreLayoutParse()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const-string v1, "layout-parse"

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/layout/AutoFillHelper;->traceToken:Ljava/lang/Object;

    return-void
.end method
