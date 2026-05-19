.class public final Lcom/oplus/card/pantanal/application/PantanalCardService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/pantanal/application/IPantanalCardService;
.implements Lm7/j0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;

.field public static GROUPCARD_PLUGIN_DEFAULT:I = 0x0
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static GROUPCARD_PLUGIN_FAIL:I = 0x0
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static GROUPCARD_PLUGIN_SUCCESS:I = 0x0
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final GROUPSDK_PLUGIN_DELAY_TIME:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "PantanalCardService"

.field private static delayJob:Lm7/s1;

.field public static sGroupCardPluginStatus:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field private final synthetic $$delegate_0:Lm7/j0;

.field private pantanalClient:Lu8/b;

.field private serviceDecision:Lpantanal/decision/IServiceDecision;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/pantanal/application/PantanalCardService;->Companion:Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;

    const/4 v0, 0x1

    sput v0, Lcom/oplus/card/pantanal/application/PantanalCardService;->GROUPCARD_PLUGIN_SUCCESS:I

    const/4 v0, 0x2

    sput v0, Lcom/oplus/card/pantanal/application/PantanalCardService;->GROUPCARD_PLUGIN_FAIL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lm7/k0;->b()Lm7/j0;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->$$delegate_0:Lm7/j0;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/card/pantanal/application/PantanalCardService;->registerCardConfigCallback$lambda$6(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getDelayJob$cp()Lm7/s1;
    .registers 1

    sget-object v0, Lcom/oplus/card/pantanal/application/PantanalCardService;->delayJob:Lm7/s1;

    return-object v0
.end method

.method public static final synthetic access$getPantanalClient$p(Lcom/oplus/card/pantanal/application/PantanalCardService;)Lu8/b;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->pantanalClient:Lu8/b;

    return-object p0
.end method

.method public static final synthetic access$setDelayJob$cp(Lm7/s1;)V
    .registers 1

    sput-object p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->delayJob:Lm7/s1;

    return-void
.end method

.method public static synthetic b(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/card/pantanal/application/PantanalCardService;->unregisterCardConfigCallback$lambda$9(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final checkInitFirst()V
    .registers 2

    const-string p0, "PantanalCardService"

    const-string v0, "check init first"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final createGroupCard(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/content/Context;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 17

    move-object v0, p1

    iget-object v3, v0, Lcom/android/launcher3/card/LauncherCardInfo;->groupCardInfo:Lpantanal/app/groupcard/GroupCardInfo;

    const-string v1, "PantanalCardService"

    const/4 v6, 0x0

    if-nez v3, :cond_e

    const-string v0, "createGroupCard: groupCardInfo is null"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_e
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroupCard groupCardInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroupCard:sGroupCardPluginStatus:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oplus/card/pantanal/application/PantanalCardService;->sGroupCardPluginStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/oplus/card/pantanal/application/PantanalCardService;->sGroupCardPluginStatus:I

    sget v1, Lcom/oplus/card/pantanal/application/PantanalCardService;->GROUPCARD_PLUGIN_DEFAULT:I

    if-ne v0, v1, :cond_5d

    sget-object v0, Lm7/y0;->b:Lm7/f0;

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v10, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;-><init>(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;Ll4/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object v0

    sput-object v0, Lcom/oplus/card/pantanal/application/PantanalCardService;->delayJob:Lm7/s1;

    goto :goto_70

    :cond_5d
    sput-object v6, Lcom/oplus/card/pantanal/application/PantanalCardService;->delayJob:Lm7/s1;

    move-object v0, p0

    iget-object v0, v0, Lcom/oplus/card/pantanal/application/PantanalCardService;->pantanalClient:Lu8/b;

    if-eqz v0, :cond_6b

    move-object v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, p2, v3, v2}, Lu8/b;->b(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v6
    :try_end_6b
    .catchall {:try_start_25 .. :try_end_6b} :catchall_6c

    :cond_6b
    return-object v6

    :catchall_6c
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :goto_70
    return-object v6
.end method

.method private final createSingleCard(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/content/Context;Landroid/os/Bundle;)Lpantanal/app/Card;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCard: cardInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PantanalCardService"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->seedParams:Lcom/android/launcher3/card/seed/SeedParams;

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedParams;->getSelectedServiceInfo()Lcom/android/launcher3/card/seed/SelectedServiceInfo;

    move-result-object v0

    goto :goto_21

    :cond_20
    move-object v0, v2

    :goto_21
    invoke-static {p1, v0}, Lcom/oplus/card/pantanal/application/ConverterKt;->toCardViewInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/card/seed/SelectedServiceInfo;)Lpantanal/app/bean/CardViewInfo;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCard: cardViewInfo = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_39
    iget-object p0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->pantanalClient:Lu8/b;

    if-eqz p0, :cond_41

    invoke-virtual {p0, p2, p1, p3}, Lu8/b;->a(Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Landroid/os/Bundle;)Lpantanal/app/Card;

    move-result-object v2
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_42

    :cond_41
    return-object v2

    :catchall_42
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    return-object v2
.end method

.method private static final registerCardConfigCallback$lambda$6(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    iget-object p0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->pantanalClient:Lu8/b;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, p1}, Lu8/b;->c(Landroid/content/Context;)Lpantanal/content/ContentManager;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-interface {p0, p2}, Lpantanal/content/ContentManager;->registerCardConfigCallback(Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1c

    goto :goto_21

    :cond_1a
    const/4 p0, 0x0

    goto :goto_21

    :catchall_1c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_21
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_32

    const-string p1, "registerCardConfigCallback, exception: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "PantanalCardService"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public static final setGroupCardStatus(I)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/card/pantanal/application/PantanalCardService;->Companion:Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/card/pantanal/application/PantanalCardService$Companion;->setGroupCardStatus(I)V

    return-void
.end method

.method private static final unregisterCardConfigCallback$lambda$9(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    iget-object p0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->pantanalClient:Lu8/b;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, p1}, Lu8/b;->c(Landroid/content/Context;)Lpantanal/content/ContentManager;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-interface {p0, p2}, Lpantanal/content/ContentManager;->unregisterCardConfigCallback(Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1c

    goto :goto_21

    :cond_1a
    const/4 p0, 0x0

    goto :goto_21

    :catchall_1c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_21
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_32

    const-string p1, "unregisterCardConfigCallback, exception: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "PantanalCardService"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_32
    return-void
.end method


# virtual methods
.method public createCard(Landroid/content/Context;Lcom/android/launcher3/card/LauncherCardInfo;Landroid/os/Bundle;Z)Lpantanal/app/Card;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_16

    invoke-direct {p0, p2, p1, p3}, Lcom/oplus/card/pantanal/application/PantanalCardService;->createGroupCard(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/content/Context;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    goto :goto_1a

    :cond_16
    invoke-direct {p0, p2, p1, p3}, Lcom/oplus/card/pantanal/application/PantanalCardService;->createSingleCard(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/content/Context;Landroid/os/Bundle;)Lpantanal/app/Card;

    move-result-object p0

    :goto_1a
    return-object p0
.end method

.method public getCoroutineContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->$$delegate_0:Lm7/j0;

    invoke-interface {p0}, Lm7/j0;->getCoroutineContext()Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public getServiceDecision()Lpantanal/decision/IServiceDecision;
    .registers 4

    iget-object v0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->serviceDecision:Lpantanal/decision/IServiceDecision;

    if-nez v0, :cond_13

    const-string v0, "getServiceDecision: callers: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "PantanalCardService"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/card/pantanal/application/PantanalCardService;->checkInitFirst()V

    :cond_13
    iget-object p0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->serviceDecision:Lpantanal/decision/IServiceDecision;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lpantanal/app/bean/Configuration;)V
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "context"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "configuration"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "PantanalCardService"

    const-string v4, "init:"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lu8/b;

    invoke-direct {v10}, Lu8/b;-><init>()V

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v10, Lu8/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3f2

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/Configuration;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v5

    invoke-virtual {v5}, Lpantanal/app/bean/Entrance;->getShortName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "logTagSecondaryPrefix"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ly8/c;->c:Lcom/oplus/pantanal/log/printer/IPrinter;

    invoke-interface {v6}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->resetLogTagSecondaryPrefix(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PantanalClient begin to init,config is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "PantanalClient"

    move-object v11, v2

    move/from16 v17, v5

    move/from16 v18, v6

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v7, Lw8/a;

    const/4 v11, 0x0

    invoke-direct {v7, v11, v8}, Lw8/a;-><init>(Lcom/oplus/channel/server/IUserContext;Landroid/content/Context;)V

    iput-object v7, v10, Lu8/b;->f:Lw8/a;

    sget-object v7, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v7}, Lz8/f$a;->a()Lz8/f;

    move-result-object v7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v7, Lz8/f;->a:Ljava/util/Map;

    const/4 v12, 0x2

    new-array v12, v12, [Lh4/j;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lh4/j;

    const-string v15, "package_name"

    invoke-direct {v14, v15, v13}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v12, v3

    invoke-virtual {v2}, Ly8/c;->a()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ly8/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lh4/j;

    const-string v15, "panta_sdk_hash"

    invoke-direct {v14, v15, v13}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v14, v12, v4

    invoke-static {v12}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, v7, Lz8/f;->b:Landroid/content/Context;

    const-string v7, "PantaCardSdk"

    invoke-static {v8, v7}, Lcom/oplus/utrace/sdk/UTraceApp;->init(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ly8/b;->b(ZI)Z

    move-result v7

    const-string v11, "PantanalClient begin to init,utraceFlagValue: "

    invoke-static {v11, v7}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string v12, "PantanalClient"

    move-object v11, v2

    move-object/from16 v22, v15

    move-object/from16 v15, v16

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {v4, v7}, Lcom/oplus/utrace/sdk/UTraceApp;->setFlag(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "context.applicationContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v10, Lu8/b;->b:Landroid/content/Context;

    iput-object v9, v10, Lu8/b;->c:Lpantanal/app/bean/Configuration;

    const-string v6, "initContext"

    if-nez v5, :cond_e6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_e6
    iget-object v7, v10, Lu8/b;->b:Landroid/content/Context;

    if-nez v7, :cond_ee

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_ee
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "initContext.packageName"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgName"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    :try_start_103
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10d
    .catchall {:try_start_103 .. :try_end_10d} :catchall_10e

    goto :goto_113

    :catchall_10e
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_113
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_13a

    sget-object v23, Ly8/c;->a:Ly8/c;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v13, "getAppVersion: error:"

    invoke-static {v13, v5}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xfc

    const/16 v33, 0x0

    const-string v24, "PantanalUtils"

    invoke-static/range {v23 .. v33}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_13a
    instance-of v5, v0, Lh4/k$a;

    if-eqz v5, :cond_140

    const-string v0, "unknown"

    :cond_140
    check-cast v0, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v11, "getAppVersionName pkgName:"

    const-string v12, " versionName:"

    const-string v15, ", costTime:"

    invoke-static {v11, v7, v12, v0, v15}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xfc

    const/16 v33, 0x0

    const-string v24, "PantanalUtils"

    move-object/from16 v23, v5

    invoke-static/range {v23 .. v33}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v7, "versionName"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "appVersionName"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ly8/c;->j:Ljava/lang/String;

    sget-object v0, Ly8/c;->c:Lcom/oplus/pantanal/log/printer/IPrinter;

    invoke-interface {v0}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object v0

    invoke-virtual {v2}, Ly8/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->resetLogMsgSuffix(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/Configuration;->getMode()Lpantanal/app/bean/Mode;

    move-result-object v0

    sget-object v2, Lpantanal/app/bean/Mode;->RENDER:Lpantanal/app/bean/Mode;

    const-string v7, "contextProxy"

    if-eq v0, v2, :cond_1aa

    sget-object v0, Lpantanal/app/manager/ClientProxyManager;->Companion:Lpantanal/app/manager/ClientProxyManager$Companion;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/Configuration;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpantanal/app/manager/ClientProxyManager$Companion;->getInstance(Lpantanal/app/bean/Entrance;)Lpantanal/app/manager/ClientProxyManager;

    move-result-object v0

    iget-object v2, v10, Lu8/b;->f:Lw8/a;

    if-nez v2, :cond_1a6

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1a6
    invoke-virtual {v0, v2}, Lpantanal/app/manager/ClientProxyManager;->initServerChannel(Lw8/a;)V

    goto :goto_1c3

    :cond_1aa
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xfc

    const/16 v33, 0x0

    const-string v24, "PantanalClient"

    const-string v25, "not need initServerChannel, because mode = Mode.RENDER"

    move-object/from16 v23, v5

    invoke-static/range {v23 .. v33}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1c3
    iget-object v0, v10, Lu8/b;->f:Lw8/a;

    if-nez v0, :cond_1cb

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1cb
    move-object v2, v0

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xfc

    const/16 v33, 0x0

    const-string v24, "GlobalInitModule"

    const-string v25, "begin to init other sdks."

    move-object/from16 v23, v5

    invoke-static/range {v23 .. v33}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/foundation/userunlock/UserUnlockManager;->a:Lpantanal/foundation/userunlock/UserUnlockManager;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user"

    const-string v11, "serviceName"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v2, Lw8/a;->b:Landroid/content/Context;

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v11, v0, Landroid/os/UserManager;

    if-eqz v11, :cond_204

    check-cast v0, Landroid/os/UserManager;

    goto :goto_205

    :cond_204
    const/4 v0, 0x0

    :goto_205
    if-eqz v0, :cond_210

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_211

    :cond_210
    const/4 v0, 0x0

    :goto_211
    invoke-virtual {v2}, Lw8/a;->a()Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start init, register receiver, isUserUnlocked:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",contextProxy = "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",userid= "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xfc

    const/16 v33, 0x0

    const-string v24, "UserUnlockManager"

    move-object/from16 v23, v5

    invoke-static/range {v23 .. v33}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_257
    sget-object v5, Lpantanal/foundation/userunlock/UserUnlockManager;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v0}, Lw8/a;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_25e
    .catchall {:try_start_257 .. :try_end_25e} :catchall_25f

    goto :goto_264

    :catchall_25f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_264
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_289

    sget-object v11, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "init error, msg:"

    invoke-static {v5, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "UserUnlockManager"

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_289
    iget-object v0, v2, Lw8/a;->a:Lcom/oplus/channel/server/IUserContext;

    sget-object v5, Ly8/c;->a:Ly8/c;

    if-eqz v0, :cond_2cc

    invoke-interface {v0}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "begin init StaticSdk with userContext = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ",uid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "GlobalInitModule"

    move-object v11, v5

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Le3/a;->c:Le3/a$a;

    invoke-virtual {v2}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v2

    check-cast v2, Le3/a;

    invoke-virtual {v2, v0, v3}, Le3/a;->f(Lcom/oplus/channel/server/IUserContext;Z)V

    goto :goto_2ef

    :cond_2cc
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "GlobalInitModule"

    const-string v13, "begin init StaticSdk with common context."

    move-object v11, v5

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Le3/a;->c:Le3/a$a;

    invoke-virtual {v0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v0

    iget-object v2, v2, Lw8/a;->b:Landroid/content/Context;

    check-cast v0, Le3/a;

    invoke-virtual {v0, v2, v3}, Le3/a;->e(Landroid/content/Context;Z)V

    :goto_2ef
    new-instance v0, Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v2, v10, Lu8/b;->f:Lw8/a;

    if-nez v2, :cond_2f9

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2f9
    invoke-direct {v0, v2, v9}, Lpantanal/app/manager/ServiceManagerProxy;-><init>(Lw8/a;Lpantanal/app/bean/Configuration;)V

    iput-object v0, v10, Lu8/b;->d:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/Configuration;->getLogger()Ly8/a;

    move-result-object v0

    sput-object v0, Ly8/c;->f:Ly8/a;

    iget-object v0, v10, Lu8/b;->c:Lpantanal/app/bean/Configuration;

    invoke-virtual {v0}, Lpantanal/app/bean/Configuration;->getShouldNotifyCardServiceToInit()Z

    move-result v0

    if-nez v0, :cond_323

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "PantanalClient"

    const-string v13, "requestToCardServiceDoInit,shouldNotifyCardServiceToInit is false,no need notify init."

    move-object v11, v5

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_35f

    :cond_323
    iget-object v0, v10, Lu8/b;->b:Landroid/content/Context;

    if-nez v0, :cond_32b

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_32b
    iget-object v2, v10, Lu8/b;->c:Lpantanal/app/bean/Configuration;

    invoke-virtual {v2}, Lpantanal/app/bean/Configuration;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/bean/Entrance;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->requestDoInitChannelInCardService(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestToCardServiceDoInit result = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "PantanalClient"

    move-object v11, v5

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_35f
    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/Configuration;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/bean/Entrance;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly8/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/Configuration;->getSupportedCardCategory()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ly8/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    new-array v6, v6, [Lh4/j;

    new-instance v7, Lh4/j;

    const-string v11, "entrance"

    invoke-direct {v7, v11, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lh4/j;

    const-string v7, "entrance_pkg_name"

    invoke-direct {v3, v7, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v6, v4

    invoke-virtual {v5}, Ly8/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly8/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lh4/j;

    move-object/from16 v4, v22

    invoke-direct {v3, v4, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    aput-object v3, v6, v0

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/Configuration;->getLoadTimeout()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lh4/j;

    const-string v4, "load_time_out"

    invoke-direct {v3, v4, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    aput-object v3, v6, v0

    new-instance v0, Lh4/j;

    const-string v3, "supported_card_category"

    invoke-direct {v0, v3, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    aput-object v0, v6, v2

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/Configuration;->getShouldNotifyCardServiceToInit()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lh4/j;

    const-string v3, "should_notify_card_service_to_init"

    invoke-direct {v2, v3, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    aput-object v2, v6, v0

    invoke-static {v6}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v3, "pantanal_sdk_init_info"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadTechTrack$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ly8/d;->c(Ljava/lang/Class;)V

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/Configuration;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    sget-object v2, Lpantanal/app/bean/Entrance;->LAUNCHER:Lpantanal/app/bean/Entrance;

    if-ne v0, v2, :cond_409

    invoke-virtual {v10, v8}, Lu8/b;->e(Landroid/content/Context;)V

    goto :goto_409

    :cond_3f2
    sget-object v11, Ly8/c;->a:Ly8/c;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "PantanalClient"

    const-string v13, "PantanalClient begin to init failed,already initialized!!"

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_409
    :goto_409
    invoke-virtual {v10}, Lu8/b;->d()Lpantanal/decision/IServiceDecision;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/card/pantanal/application/PantanalCardService;->serviceDecision:Lpantanal/decision/IServiceDecision;

    iput-object v10, v1, Lcom/oplus/card/pantanal/application/PantanalCardService;->pantanalClient:Lu8/b;

    return-void
.end method

.method public loadSeedlingPlugin(Landroid/content/Context;)V
    .registers 5

    const-string v0, "PantanalCardService"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingCardDisabled()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    :cond_16
    iget-object p0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService;->pantanalClient:Lu8/b;

    if-nez p0, :cond_20

    const-string p0, "loadSeedlingPlugin fail for pantanalClient is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-virtual {p0}, Lu8/b;->f()Z

    move-result v1

    if-nez v1, :cond_2c

    const-string p0, "loadSeedlingPlugin fail for pantanalClient is not init"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-static {p1}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadSeedlingPlugin: isUserUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_69

    const-string p1, "loadSeedlingPlugin ing..."

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/oplus/card/pantanal/application/PantanalCardService$loadSeedlingPlugin$1$1;

    invoke-direct {p1}, Lcom/oplus/card/pantanal/application/PantanalCardService$loadSeedlingPlugin$1$1;-><init>()V

    invoke-virtual {p0, p1}, Lu8/b;->g(Lu8/c;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_53} :catch_54

    goto :goto_69

    :catch_54
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadSeedlingPlugin error "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    return-void
.end method

.method public registerCardConfigCallback(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "registerCardConfigCallback: isUserUnlocked = "

    const-string v2, "PantanalCardService"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/oplus/card/pantanal/application/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oplus/card/pantanal/application/a;-><init>(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_26
    return-void
.end method

.method public unregisterCardConfigCallback(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "unregisterCardConfigCallback: isUserUnlocked = "

    const-string v2, "PantanalCardService"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/oplus/card/pantanal/application/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oplus/card/pantanal/application/a;-><init>(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_26
    return-void
.end method
