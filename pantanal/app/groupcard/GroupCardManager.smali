.class public final Lpantanal/app/groupcard/GroupCardManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/GroupCardManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/groupcard/GroupCardManager$Companion;

.field private static final DELAY_TIME:J = 0x14L

.field private static final NEW_GROUP_CARD_VERSION_ABOVE_SMART_SPACE:I = 0xe4e1c0

.field private static final TAG:Ljava/lang/String; = "GroupCardManager"

.field private static groupCardPluginVersion:Ljava/lang/Integer;

.field private static volatile instance:Lpantanal/app/groupcard/GroupCardManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static pluginGroupCardManager:Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;


# instance fields
.field private cardCreator:Lpantanal/app/groupcard/ICardCreator;

.field private contentManagerProxy:Lpantanal/app/groupcard/IContentManagerProxy;

.field private decisionProxy:Lpantanal/app/groupcard/IServiceDecisionProxy;

.field private initStatus:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/GroupCardManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/GroupCardManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/GroupCardManager;->Companion:Lpantanal/app/groupcard/GroupCardManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lpantanal/app/groupcard/GroupCardInfo;)V
    .registers 1

    invoke-static {p0}, Lpantanal/app/groupcard/GroupCardManager;->getDefaultGroupCard$lambda$0(Lpantanal/app/groupcard/GroupCardInfo;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lpantanal/app/groupcard/GroupCardManager;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/GroupCardManager;->instance:Lpantanal/app/groupcard/GroupCardManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lpantanal/app/groupcard/GroupCardManager;)V
    .registers 1

    sput-object p0, Lpantanal/app/groupcard/GroupCardManager;->instance:Lpantanal/app/groupcard/GroupCardManager;

    return-void
.end method

.method private final checkIsGroupCardPluginNew(Ljava/lang/Integer;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0xe4e1c0

    if-lt p1, v0, :cond_d

    const/4 p0, 0x1

    :cond_d
    return p0
.end method

.method public static synthetic createGroupCard$default(Lpantanal/app/groupcard/GroupCardManager;Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;ILjava/lang/Object;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lpantanal/app/groupcard/GroupCardManager;->createGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    return-object p0
.end method

.method private final getDefaultGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 19

    new-instance v0, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/groupcard/GroupCardInfo;->getGroupCardConfig()Lpantanal/app/groupcard/GroupCardConfig;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lpantanal/app/groupcard/defaultImpl/DefaultGroupCardWrapper;-><init>(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardConfig;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    if-nez v1, :cond_17

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_17
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/wm/shell/draganddrop/b;

    move-object/from16 v3, p2

    invoke-direct {v1, v3}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lpantanal/app/groupcard/GroupCardInfo;)V

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v5, Ly8/c;->a:Ly8/c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "GroupCardManager"

    const-string v7, "getDefaultGroupCard, return"

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method private static final getDefaultGroupCard$lambda$0(Lpantanal/app/groupcard/GroupCardInfo;)V
    .registers 13

    const-string v0, "$groupCardInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "GroupCardManager"

    const-string v3, "getDefaultGroupCard, groupCardCallback execute"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lpantanal/app/groupcard/GroupCardInfo;->getGroupCardCallback()Lpantanal/app/groupcard/IGroupCardCallback;

    move-result-object v0

    sget-object v1, Lpantanal/app/groupcard/GroupCardDisplayState;->SHOW_NO_SERVICE_VIEW:Lpantanal/app/groupcard/GroupCardDisplayState;

    invoke-interface {v0, v1}, Lpantanal/app/groupcard/IGroupCardCallback;->onDisplayStateChanged(Lpantanal/app/groupcard/GroupCardDisplayState;)V

    invoke-virtual {p0}, Lpantanal/app/groupcard/GroupCardInfo;->getGroupCardCallback()Lpantanal/app/groupcard/IGroupCardCallback;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lpantanal/app/groupcard/IGroupCardCallback;->onLoadFinished(Z)V

    return-void
.end method


# virtual methods
.method public final createGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "groupCardInfo"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/groupcard/GroupCardInfo;->getCardViewInfo()Lpantanal/app/bean/CardViewInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createGroupCard, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "GroupCardManager"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v5, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v5}, Lpantanal/app/groupcard/CardGroupSdk;->isInitSuccess()Z

    move-result v6

    if-eqz v6, :cond_b4

    sget-object v6, Lpantanal/app/groupcard/GroupCardManager;->groupCardPluginVersion:Ljava/lang/Integer;

    invoke-direct {v0, v6}, Lpantanal/app/groupcard/GroupCardManager;->checkIsGroupCardPluginNew(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_71

    sget-object v5, Lpantanal/app/groupcard/GroupCardManager;->pluginGroupCardManager:Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;

    if-eqz v5, :cond_6c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "GroupCardManager"

    const-string v7, "createGroupCard, GroupCardSdk init success,pluginGroupCardManager!=null"

    move-object v5, v4

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v4, Lpantanal/app/groupcard/GroupCardManager;->pluginGroupCardManager:Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;

    if-eqz v4, :cond_67

    invoke-interface {v4, v1, v2, v3}, Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;->createGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v3

    if-nez v3, :cond_b8

    :cond_67
    invoke-direct/range {p0 .. p2}, Lpantanal/app/groupcard/GroupCardManager;->getDefaultGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v3

    goto :goto_b8

    :cond_6c
    invoke-direct/range {p0 .. p2}, Lpantanal/app/groupcard/GroupCardManager;->getDefaultGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v3

    goto :goto_b8

    :cond_71
    iget-object v6, v0, Lpantanal/app/groupcard/GroupCardManager;->cardCreator:Lpantanal/app/groupcard/ICardCreator;

    const/4 v7, 0x0

    if-nez v6, :cond_7c

    const-string v6, "cardCreator"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v7

    :cond_7c
    iget-object v8, v0, Lpantanal/app/groupcard/GroupCardManager;->decisionProxy:Lpantanal/app/groupcard/IServiceDecisionProxy;

    if-nez v8, :cond_86

    const-string v8, "decisionProxy"

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v7

    :cond_86
    iget-object v9, v0, Lpantanal/app/groupcard/GroupCardManager;->contentManagerProxy:Lpantanal/app/groupcard/IContentManagerProxy;

    if-nez v9, :cond_90

    const-string v9, "contentManagerProxy"

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_91

    :cond_90
    move-object v7, v9

    :goto_91
    invoke-virtual {v5, v6, v8, v7}, Lpantanal/app/groupcard/CardGroupSdk;->gainGroupCardWrapper(Lpantanal/app/groupcard/ICardCreator;Lpantanal/app/groupcard/IServiceDecisionProxy;Lpantanal/app/groupcard/IContentManagerProxy;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v15

    if-eqz v15, :cond_af

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v0, 0x0

    const-string v6, "GroupCardManager"

    const-string v7, "createGroupCard, GroupCardSdk init success,groupCardWrapper!=null"

    move-object v5, v4

    move-object v4, v15

    move-object v15, v0

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {v4, v1, v2, v3}, Lpantanal/app/groupcard/plugininterface/IGroupCard;->bindGroupCardInfo(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)V

    move-object v3, v4

    goto :goto_b8

    :cond_af
    invoke-direct/range {p0 .. p2}, Lpantanal/app/groupcard/GroupCardManager;->getDefaultGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v3

    goto :goto_b8

    :cond_b4
    invoke-direct/range {p0 .. p2}, Lpantanal/app/groupcard/GroupCardManager;->getDefaultGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v3

    :cond_b8
    :goto_b8
    return-object v3
.end method

.method public final destroy(Landroid/content/Context;)V
    .registers 26

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lpantanal/app/groupcard/GroupCardManager;->groupCardPluginVersion:Ljava/lang/Integer;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Lpantanal/app/groupcard/GroupCardManager;->checkIsGroupCardPluginNew(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lpantanal/app/groupcard/GroupCardManager;->pluginGroupCardManager:Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;

    if-eqz v1, :cond_18

    invoke-interface {v1, v0}, Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;->destroy(Landroid/content/Context;)V

    :cond_18
    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "GroupCardManager"

    const-string v4, "destroy, pluginGroupCardManager destroy success"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_44

    :cond_2b
    sget-object v13, Ly8/c;->a:Ly8/c;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v14, "GroupCardManager"

    const-string v15, "destroy, pluginGroupCardManager destroy failed,version is old"

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_44
    return-void
.end method

.method public final getInitState()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/groupcard/GroupCardManager;->initStatus:Z

    return p0
.end method

.method public final init(Landroid/content/Context;Lpantanal/app/groupcard/ICardCreator;Lpantanal/app/groupcard/IServiceDecisionProxy;Lpantanal/app/groupcard/IContentManagerProxy;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "context"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "cardCreator"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "decisionProxy"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "contentManagerProxy"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lpantanal/app/groupcard/GroupCardManager;->cardCreator:Lpantanal/app/groupcard/ICardCreator;

    iput-object v3, v0, Lpantanal/app/groupcard/GroupCardManager;->decisionProxy:Lpantanal/app/groupcard/IServiceDecisionProxy;

    iput-object v4, v0, Lpantanal/app/groupcard/GroupCardManager;->contentManagerProxy:Lpantanal/app/groupcard/IContentManagerProxy;

    sget-object v5, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v5}, Lpantanal/app/groupcard/CardGroupSdk;->isInitSuccess()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-virtual {v5}, Lpantanal/app/groupcard/CardGroupSdk;->getPluginGroupCardVision()Ljava/lang/Integer;

    move-result-object v6

    sput-object v6, Lpantanal/app/groupcard/GroupCardManager;->groupCardPluginVersion:Ljava/lang/Integer;

    invoke-direct {v0, v6}, Lpantanal/app/groupcard/GroupCardManager;->checkIsGroupCardPluginNew(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-virtual {v5}, Lpantanal/app/groupcard/CardGroupSdk;->gainPluginGroupCardManager()Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;

    move-result-object v5

    sput-object v5, Lpantanal/app/groupcard/GroupCardManager;->pluginGroupCardManager:Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;

    if-eqz v5, :cond_43

    invoke-interface {v5, v1, v2, v3, v4}, Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;->init(Landroid/content/Context;Lpantanal/app/groupcard/ICardCreator;Lpantanal/app/groupcard/IServiceDecisionProxy;Lpantanal/app/groupcard/IContentManagerProxy;)V

    :cond_43
    const/4 v1, 0x1

    iput-boolean v1, v0, Lpantanal/app/groupcard/GroupCardManager;->initStatus:Z

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "GroupCardManager"

    const-string v4, "init, pluginGroupCardManager init success"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_72

    :cond_59
    sget-object v13, Ly8/c;->a:Ly8/c;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v14, "GroupCardManager"

    const-string v15, "init, pluginGroupCardManager init failed,version is old"

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_72
    :goto_72
    return-void
.end method
