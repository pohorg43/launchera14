.class public Lcom/android/launcher3/card/LauncherCardHost;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SAME_CARD_MAX_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LauncherCardHost"

.field private static volatile sInstance:Lcom/android/launcher3/card/LauncherCardHost;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/LauncherCardHost;

    invoke-direct {v0}, Lcom/android/launcher3/card/LauncherCardHost;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/LauncherCardHost;->sInstance:Lcom/android/launcher3/card/LauncherCardHost;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/card/LauncherCardHost;
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/LauncherCardHost;->sInstance:Lcom/android/launcher3/card/LauncherCardHost;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/card/LauncherCardHost;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/card/LauncherCardHost;->sInstance:Lcom/android/launcher3/card/LauncherCardHost;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/card/LauncherCardHost;

    invoke-direct {v1}, Lcom/android/launcher3/card/LauncherCardHost;-><init>()V

    sput-object v1, Lcom/android/launcher3/card/LauncherCardHost;->sInstance:Lcom/android/launcher3/card/LauncherCardHost;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher3/card/LauncherCardHost;->sInstance:Lcom/android/launcher3/card/LauncherCardHost;

    return-object v0
.end method


# virtual methods
.method public checkCardAddAble(Lcom/android/launcher3/Launcher;I)Z
    .registers 8

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    const-string v0, "LauncherCardHost cards.size:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardHost"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ge v0, v1, :cond_29

    return v2

    :cond_29
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v3, v0

    :cond_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v4, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v4, v4, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v4, p2, :cond_43

    add-int/lit8 v3, v3, 0x1

    :cond_43
    if-lt v3, v1, :cond_2f

    const p0, 0x7f1200b9

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    :cond_54
    return v2
.end method

.method public getAllCards()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager;->getAllCardConfigList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    new-instance v2, Lcom/android/launcher3/model/WidgetItem;

    invoke-direct {v2, v1}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_30
    const-string v0, "getAllCards size "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Card"

    const-string v2, "LauncherCardHost"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCardCountByType(Lcom/android/launcher3/Launcher;I)I
    .registers 9

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->cards:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v3, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    if-ne v3, p2, :cond_12

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    if-nez v3, :cond_32

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_32
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_44

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string v2, "LauncherCardHost"

    const-string v3, "Card"

    if-lez p0, :cond_76

    const-string p0, "getCardCountByType cardType "

    const-string v4, ",count "

    const-string v5, ",invalidCards "

    invoke-static {p0, p2, v4, v1, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    const-string v4, "getCardCountByType invalid Cards"

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/model/OplusModelWriter;->deleteItemsFromDatabase(Ljava/util/Collection;Ljava/lang/String;)V

    :cond_76
    if-nez v1, :cond_97

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/LauncherModel;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_84
    :goto_84
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_97

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->mCardType:I

    if-ne p1, p2, :cond_84

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_97
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_a2

    const-string p0, "getCardCountByType, count ="

    invoke-static {p0, v1, v3, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_a2
    return v1
.end method

.method public updateCardName(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p0, "update card name for loading apk..., list size:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Card"

    const-string v1, "LauncherCardHost"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getCardName(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_29

    :cond_3d
    return-void
.end method
