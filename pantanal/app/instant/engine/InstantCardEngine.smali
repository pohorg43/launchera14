.class public final Lpantanal/app/instant/engine/InstantCardEngine;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/instant/engine/InstantCardEngine$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/instant/engine/InstantCardEngine$Companion;

.field private static final STATUS_INIT_FAILED:I = 0x2

.field private static final STATUS_INIT_SUCCESS:I = 0x1

.field private static final STATUS_NOT_START_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InstantCardEngine"


# instance fields
.field private callback:Lpantanal/app/OnLoadCallback;

.field private cardMessageCallback:Lpantanal/app/instant/IInstantCardCallback;

.field private final cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/app/instant/internal/IInstantCardState<",
            "Lpantanal/app/instant/internal/MessageSet;",
            ">;"
        }
    .end annotation
.end field

.field private final cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/app/instant/internal/IInstantCardState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cardTag:Ljava/lang/String;

.field private final cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/app/instant/internal/IInstantCardState<",
            "Lpantanal/app/instant/internal/VisibilityState;",
            ">;"
        }
    .end annotation
.end field

.field private final enableV2Callback:Z

.field private hasLoaded:Z

.field private instantAppCard:Lorg/hapjs/card/api/Card;

.field private instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

.field private lastCode:Ljava/lang/Integer;

.field private lastView:Landroid/view/View;

.field private launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

.field private final listener:Lpantanal/app/instant/engine/InstantCardEngine$listener$1;

.field private final messageSet:Lpantanal/app/instant/internal/MessageSet;

.field private onVisible:Z

.field private final status:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/instant/engine/InstantCardEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/instant/engine/InstantCardEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/instant/engine/InstantCardEngine;->Companion:Lpantanal/app/instant/engine/InstantCardEngine$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lpantanal/app/ILaunchInterceptor;Lpantanal/app/instant/InstantConfiguration;Z)V
    .registers 6

    const-string v0, "cardTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    iput-object p2, p0, Lpantanal/app/instant/engine/InstantCardEngine;->launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    iput-object p3, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

    iput-boolean p4, p0, Lpantanal/app/instant/engine/InstantCardEngine;->enableV2Callback:Z

    new-instance p1, Lpantanal/app/instant/internal/MessageSet;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p1, p2, p3}, Lpantanal/app/instant/internal/MessageSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lpantanal/app/instant/internal/InstantCardVisibilityState;

    new-instance p2, Lpantanal/app/instant/engine/InstantCardEngine$cardVisibilityState$1;

    invoke-direct {p2, p0}, Lpantanal/app/instant/engine/InstantCardEngine$cardVisibilityState$1;-><init>(Lpantanal/app/instant/engine/InstantCardEngine;)V

    invoke-direct {p1, p2}, Lpantanal/app/instant/internal/InstantCardVisibilityState;-><init>(Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;)V

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    new-instance p1, Lpantanal/app/instant/internal/InstantCardScrollState;

    new-instance p2, Lpantanal/app/instant/engine/InstantCardEngine$cardScrollState$1;

    invoke-direct {p2, p0}, Lpantanal/app/instant/engine/InstantCardEngine$cardScrollState$1;-><init>(Lpantanal/app/instant/engine/InstantCardEngine;)V

    invoke-direct {p1, p2}, Lpantanal/app/instant/internal/InstantCardScrollState;-><init>(Lpantanal/app/instant/internal/InstantCardScrollState$IScrollStateChange;)V

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;

    new-instance p1, Lpantanal/app/instant/internal/InstantCardMessageState;

    new-instance p2, Lpantanal/app/instant/engine/InstantCardEngine$cardMessageState$1;

    invoke-direct {p2, p0}, Lpantanal/app/instant/engine/InstantCardEngine$cardMessageState$1;-><init>(Lpantanal/app/instant/engine/InstantCardEngine;)V

    invoke-direct {p1, p2}, Lpantanal/app/instant/internal/InstantCardMessageState;-><init>(Lpantanal/app/instant/internal/InstantCardMessageState$IMessageHandler;)V

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;

    new-instance p1, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;

    invoke-direct {p1, p0}, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;-><init>(Lpantanal/app/instant/engine/InstantCardEngine;)V

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->listener:Lpantanal/app/instant/engine/InstantCardEngine$listener$1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lpantanal/app/ILaunchInterceptor;Lpantanal/app/instant/InstantConfiguration;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/4 p4, 0x0

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/instant/engine/InstantCardEngine;-><init>(Ljava/lang/String;Lpantanal/app/ILaunchInterceptor;Lpantanal/app/instant/InstantConfiguration;Z)V

    return-void
.end method

.method public static synthetic a(Lpantanal/app/instant/engine/InstantCardEngine;ILjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/instant/engine/InstantCardEngine;->setCardMessageCallback$lambda$5(Lpantanal/app/instant/engine/InstantCardEngine;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/OnLoadCallback;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->callback:Lpantanal/app/OnLoadCallback;

    return-object p0
.end method

.method public static final synthetic access$getCardTag$p(Lpantanal/app/instant/engine/InstantCardEngine;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCardVisibilityState$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/instant/internal/IInstantCardState;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    return-object p0
.end method

.method public static final synthetic access$getEnableV2Callback$p(Lpantanal/app/instant/engine/InstantCardEngine;)Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->enableV2Callback:Z

    return p0
.end method

.method public static final synthetic access$getInstantAppCard$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lorg/hapjs/card/api/Card;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    return-object p0
.end method

.method public static final synthetic access$getInstantConfiguration$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/instant/InstantConfiguration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantConfiguration:Lpantanal/app/instant/InstantConfiguration;

    return-object p0
.end method

.method public static final synthetic access$getLauncherInterceptor$p(Lpantanal/app/instant/engine/InstantCardEngine;)Lpantanal/app/ILaunchInterceptor;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->launcherInterceptor:Lpantanal/app/ILaunchInterceptor;

    return-object p0
.end method

.method public static final synthetic access$getStatus$p(Lpantanal/app/instant/engine/InstantCardEngine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$loadView(Lpantanal/app/instant/engine/InstantCardEngine;Landroid/content/Context;Ljava/lang/String;Lpantanal/app/instant/ICardDesignSize;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lpantanal/app/instant/engine/InstantCardEngine;->loadView(Landroid/content/Context;Ljava/lang/String;Lpantanal/app/instant/ICardDesignSize;)V

    return-void
.end method

.method public static final synthetic access$storeResult(Lpantanal/app/instant/engine/InstantCardEngine;Landroid/view/View;Ljava/lang/Integer;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lpantanal/app/instant/engine/InstantCardEngine;->storeResult(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Lpantanal/app/instant/engine/InstantCardEngine;ILjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/app/instant/engine/InstantCardEngine;->callRenderBackResult$lambda$6(Lpantanal/app/instant/engine/InstantCardEngine;ILjava/lang/String;)V

    return-void
.end method

.method private final callRenderBackResult(Ljava/lang/String;Lpantanal/app/instant/ICardDesignSize;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lpantanal/app/instant/engine/InstantCardEngine;->lastCode:Ljava/lang/Integer;

    iget-boolean v4, v0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callRenderBackResult lastCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", uri:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hasLoaded:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", sizeData:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v7, "InstantCardEngine"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    move-object v6, v3

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v4, v0, Lpantanal/app/instant/engine/InstantCardEngine;->lastCode:Ljava/lang/Integer;

    const/4 v5, 0x1

    if-nez v4, :cond_4b

    goto :goto_75

    :cond_4b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_75

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "InstantCardEngine"

    const-string v11, "obtainView: renderSucceed, onRenderSuccess directly"

    move-object v9, v3

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz v1, :cond_6e

    invoke-interface {v1, v5}, Lorg/hapjs/card/api/Card;->changeVisibilityManually(Z)V

    :cond_6e
    iget-object v0, v0, Lpantanal/app/instant/engine/InstantCardEngine;->listener:Lpantanal/app/instant/engine/InstantCardEngine$listener$1;

    invoke-virtual {v0}, Lpantanal/app/instant/engine/InstantCardEngine$listener$1;->onRenderSuccess()V

    goto/16 :goto_fb

    :cond_75
    :goto_75
    iget-boolean v4, v0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    if-eqz v4, :cond_99

    iget-object v4, v0, Lpantanal/app/instant/engine/InstantCardEngine;->lastCode:Ljava/lang/Integer;

    if-nez v4, :cond_7e

    goto :goto_84

    :cond_7e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_99

    :goto_84
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "InstantCardEngine"

    const-string v11, "obtainView already hasLoaded, no need to call again"

    move-object v9, v3

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_99
    invoke-direct {v0, v2}, Lpantanal/app/instant/engine/InstantCardEngine;->getInstantCardParams(Lpantanal/app/instant/ICardDesignSize;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "callRenderBackResult begin load instant engine, uri:"

    const-string v6, ", cardParams:"

    invoke-static {v4, v1, v6, v2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "InstantCardEngine"

    move-object v9, v3

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v3, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v3}, Lz8/f$a;->a()Lz8/f;

    move-result-object v3

    iget-object v4, v0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lz8/f;->b(Ljava/lang/String;)Lz8/c;

    move-result-object v6

    if-eqz v6, :cond_cf

    const/16 v7, 0x190

    const/16 v8, 0x32

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    :cond_cf
    iget-object v3, v0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz v3, :cond_d6

    invoke-interface {v3, v1, v2}, Lorg/hapjs/card/api/Card;->load(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d6
    iput-boolean v5, v0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    iget-object v1, v0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz v1, :cond_e4

    new-instance v2, Lf/h;

    invoke-direct {v2, v0}, Lf/h;-><init>(Lpantanal/app/instant/engine/InstantCardEngine;)V

    invoke-interface {v1, v2}, Lcom/nearme/instant/xcard/InstantCard;->registerMessageCallback(Lorg/hapjs/card/api/CardCallback;)V

    :cond_e4
    iget-object v1, v0, Lpantanal/app/instant/engine/InstantCardEngine;->cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {v1}, Lpantanal/app/instant/internal/IInstantCardState;->invoke()V

    iget-object v1, v0, Lpantanal/app/instant/engine/InstantCardEngine;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v1}, Lpantanal/app/instant/internal/MessageSet;->getMessageSend()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v0, v0, Lpantanal/app/instant/engine/InstantCardEngine;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v0}, Lpantanal/app/instant/internal/MessageSet;->getMessageReply()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :goto_fb
    return-void
.end method

.method private static final callRenderBackResult$lambda$6(Lpantanal/app/instant/engine/InstantCardEngine;ILjava/lang/String;)V
    .registers 16

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callRenderBackResult receive message from instant engine, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", str:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "InstantCardEngine"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardMessageCallback:Lpantanal/app/instant/IInstantCardCallback;

    if-eqz p0, :cond_3a

    const-string v0, "str"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lpantanal/app/instant/IInstantCardCallback;->onMessage(ILjava/lang/String;)V

    :cond_3a
    return-void
.end method

.method private final checkCardClient(Landroid/content/Context;Lpantanal/app/OnEngineCallback;Lkotlin/jvm/functions/Function0;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lpantanal/app/OnEngineCallback;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    sget-object v11, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCardClient begin,curStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "InstantCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_48

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    goto :goto_74

    :cond_33
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    const-string v2, "InstantAppCardClient init already succeeded"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_74

    :cond_48
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    const-string v2, "checkCardClient begin,step2,not init,begin init."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    invoke-virtual {v0}, Lpantanal/app/instant/engine/InstantAppCardClient;->getInitState()Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isUnInitialized()Z

    move-result v1

    invoke-virtual {v0}, Lpantanal/app/instant/engine/InstantAppCardClient;->getInitState()Lpantanal/app/instant/engine/InstantAppCardClient$InitState;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/instant/engine/InstantAppCardClient$InitState;->isInitFailed()Z

    move-result v0

    or-int/2addr v0, v1

    new-instance v1, Lpantanal/app/instant/engine/InstantCardEngine$checkCardClient$1;

    invoke-direct {v1, v0, p2}, Lpantanal/app/instant/engine/InstantCardEngine$checkCardClient$1;-><init>(ZLpantanal/app/OnEngineCallback;)V

    invoke-direct {p0, p1, p3, v1}, Lpantanal/app/instant/engine/InstantCardEngine;->initCardClient(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :goto_74
    return-void
.end method

.method private final createInstantCard(Landroid/content/Context;)V
    .registers 15

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    const-string v1, "createInstantCard cardTag:"

    if-nez v0, :cond_5b

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "InstantCardEngine"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz8/f;->b(Ljava/lang/String;)Lz8/c;

    move-result-object v2

    if-eqz v2, :cond_34

    const/16 v3, 0x190

    const/16 v4, 0x28

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    :cond_34
    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    invoke-virtual {v0, p1}, Lpantanal/app/instant/engine/InstantAppCardClient;->createCard(Landroid/content/Context;)Lorg/hapjs/card/api/Card;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz p1, :cond_43

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->listener:Lpantanal/app/instant/engine/InstantCardEngine$listener$1;

    invoke-interface {p1, v0}, Lorg/hapjs/card/api/Card;->setRenderListener(Lcom/nearme/instant/xcard/IRenderListener;)V

    :cond_43
    iget-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz p1, :cond_4b

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/hapjs/card/api/Card;->changeVisibilityManually(Z)V

    :cond_4b
    iget-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {p1}, Lpantanal/app/instant/internal/IInstantCardState;->invoke()V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    goto :goto_73

    :cond_5b
    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    const-string p1, " already created,do nothing."

    invoke-static {v1, p0, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_73
    return-void
.end method

.method private final getInstantCardParams(Lpantanal/app/instant/ICardDesignSize;)Ljava/lang/String;
    .registers 14

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "cardSession"

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p1}, Lpantanal/app/instant/ICardDesignSize;->getContainerWidth()I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1c

    const-string p0, "containerWidth"

    invoke-interface {p1}, Lpantanal/app/instant/ICardDesignSize;->getContainerWidth()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1c
    invoke-interface {p1}, Lpantanal/app/instant/ICardDesignSize;->getContainerHeight()I

    move-result p0

    if-eq p0, v1, :cond_2b

    const-string p0, "containerHeight"

    invoke-interface {p1}, Lpantanal/app/instant/ICardDesignSize;->getContainerHeight()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2b
    invoke-interface {p1}, Lpantanal/app/instant/ICardDesignSize;->getDesignSize()I

    move-result p0

    if-eq p0, v1, :cond_3a

    const-string p0, "cardDesignSize"

    invoke-interface {p1}, Lpantanal/app/instant/ICardDesignSize;->getDesignSize()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3a
    invoke-interface {p1}, Lpantanal/app/instant/ICardDesignSize;->getDesignWidth()I

    move-result p0

    if-eq p0, v1, :cond_71

    const-string p0, "cardDesignWidth"

    invoke-interface {p1}, Lpantanal/app/instant/ICardDesignSize;->getDesignWidth()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_49} :catch_4a

    goto :goto_71

    :catch_4a
    move-exception p0

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainView: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".message"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCardEngine"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_71
    :goto_71
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "root.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final initCardClient(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "InstantCardEngine"

    const-string v2, "initCardClient begin"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/instant/engine/InstantAppCardClient;->INSTANCE:Lpantanal/app/instant/engine/InstantAppCardClient;

    new-instance v1, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;

    invoke-direct {v1, p3, p0, p2}, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$1;-><init>(Lkotlin/jvm/functions/Function2;Lpantanal/app/instant/engine/InstantCardEngine;Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$2;

    invoke-direct {p2, p0}, Lpantanal/app/instant/engine/InstantCardEngine$initCardClient$2;-><init>(Lpantanal/app/instant/engine/InstantCardEngine;)V

    invoke-virtual {v0, p1, v1, p2}, Lpantanal/app/instant/engine/InstantAppCardClient;->initAsync(Landroid/content/Context;Lcom/nearme/instant/xcard/ICardEngineCallback;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final loadView(Landroid/content/Context;Ljava/lang/String;Lpantanal/app/instant/ICardDesignSize;)V
    .registers 19

    move-object v0, p0

    move-object/from16 v1, p2

    sget-object v13, Ly8/c;->a:Ly8/c;

    iget-object v2, v0, Lpantanal/app/instant/engine/InstantCardEngine;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v3, v0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    const-string v14, "obtainView: load "

    const-string v4, ", status = "

    const-string v5, ", cardTag:"

    invoke-static {v14, v1, v4, v2, v5}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "InstantCardEngine"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v13

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v2, v0, Lpantanal/app/instant/engine/InstantCardEngine;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    invoke-direct/range {p0 .. p1}, Lpantanal/app/instant/engine/InstantCardEngine;->createInstantCard(Landroid/content/Context;)V

    move-object/from16 v2, p3

    invoke-direct {p0, v1, v2}, Lpantanal/app/instant/engine/InstantCardEngine;->callRenderBackResult(Ljava/lang/String;Lpantanal/app/instant/ICardDesignSize;)V

    goto :goto_65

    :cond_3f
    iget-object v2, v0, Lpantanal/app/instant/engine/InstantCardEngine;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget-object v0, v0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    const-string v3, " failed, status = "

    const-string v4, ",not init., cardTag:"

    invoke-static {v14, v1, v3, v2, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    move-object v0, v13

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_65
    return-void
.end method

.method private static final setCardMessageCallback$lambda$5(Lpantanal/app/instant/engine/InstantCardEngine;ILjava/lang/String;)V
    .registers 16

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCardMessageCallback receive message from instant engine, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", str:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "InstantCardEngine"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardMessageCallback:Lpantanal/app/instant/IInstantCardCallback;

    if-eqz p0, :cond_3a

    const-string v0, "str"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lpantanal/app/instant/IInstantCardCallback;->onMessage(ILjava/lang/String;)V

    :cond_3a
    return-void
.end method

.method private final storeResult(Landroid/view/View;Ljava/lang/Integer;)V
    .registers 3

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->lastView:Landroid/view/View;

    iput-object p2, p0, Lpantanal/app/instant/engine/InstantCardEngine;->lastCode:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final clearMessageCallback()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardMessageCallback:Lpantanal/app/instant/IInstantCardCallback;

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/nearme/instant/xcard/InstantCard;->unregisterMessageCallback()V

    :cond_a
    return-void
.end method

.method public final getCard()Lorg/hapjs/card/api/Card;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    return-object p0
.end method

.method public final getLastRenderCode()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->lastCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getLastRenderView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->lastView:Landroid/view/View;

    return-object p0
.end method

.method public final obtainView(Landroid/content/Context;Ljava/lang/String;Lpantanal/app/instant/ICardDesignSize;Lpantanal/app/OnLoadCallback;Lpantanal/app/OnEngineCallback;)V
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sizeData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lpantanal/app/instant/engine/InstantCardEngine;->callback:Lpantanal/app/OnLoadCallback;

    sget-object p4, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {p4}, Lz8/f$a;->a()Lz8/f;

    move-result-object p4

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lz8/f;->b(Ljava/lang/String;)Lz8/c;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/16 v2, 0x190

    const/16 v3, 0x1e

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    :cond_2e
    new-instance p4, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;

    invoke-direct {p4, p2, p0, p1, p3}, Lpantanal/app/instant/engine/InstantCardEngine$obtainView$1;-><init>(Ljava/lang/String;Lpantanal/app/instant/engine/InstantCardEngine;Landroid/content/Context;Lpantanal/app/instant/ICardDesignSize;)V

    invoke-direct {p0, p1, p5, p4}, Lpantanal/app/instant/engine/InstantCardEngine;->checkCardClient(Landroid/content/Context;Lpantanal/app/OnEngineCallback;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onCardInVisible()V
    .registers 13

    sget-object v11, Ly8/c;->a:Ly8/c;

    iget-boolean v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->onVisible:Z

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/instant/engine/InstantCardEngine;->lastCode:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", cardTag: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", last code: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "InstantCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz8/f;->b(Ljava/lang/String;)Lz8/c;

    move-result-object v0

    if-eqz v0, :cond_4d

    const/16 v1, 0x2bc

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lz8/c;->o(II)V

    :cond_4d
    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    sget-object v1, Lpantanal/app/instant/internal/VisibilityState;->INVISIBLE:Lpantanal/app/instant/internal/VisibilityState;

    invoke-interface {v0, v1}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->onVisible:Z

    const-string v1, ","

    if-eqz v0, :cond_88

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz v0, :cond_9f

    iget-object v2, p0, Lpantanal/app/instant/engine/InstantCardEngine;->lastCode:Ljava/lang/Integer;

    if-eqz v2, :cond_70

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    sget-object v2, Lpantanal/app/instant/internal/VisibilityState;->INIT:Lpantanal/app/instant/internal/VisibilityState;

    invoke-interface {v1, v2}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->onVisible:Z

    invoke-interface {v0}, Lorg/hapjs/card/api/Card;->onHide()V

    goto :goto_9f

    :cond_70
    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    const-string v0, "onCardInVisible do nothing,lastCode is null,cardTag: "

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_9f

    :cond_88
    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    const-string v0, "onCardInVisible do nothing,already invisible,cardTag: "

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public final onCardVisible()V
    .registers 13

    sget-object v11, Ly8/c;->a:Ly8/c;

    iget-boolean v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->onVisible:Z

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/instant/engine/InstantCardEngine;->lastCode:Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCardVisible,onVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", cardTag: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", last code: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "InstantCardEngine"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    sget-object v1, Lpantanal/app/instant/internal/VisibilityState;->VISIBLE:Lpantanal/app/instant/internal/VisibilityState;

    invoke-interface {v0, v1}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz8/f;->b(Ljava/lang/String;)Lz8/c;

    move-result-object v0

    if-eqz v0, :cond_54

    const/16 v1, 0x258

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lz8/c;->o(II)V

    :cond_54
    iget-boolean v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->onVisible:Z

    if-nez v0, :cond_88

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz v0, :cond_9f

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->lastCode:Ljava/lang/Integer;

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    sget-object v2, Lpantanal/app/instant/internal/VisibilityState;->INIT:Lpantanal/app/instant/internal/VisibilityState;

    invoke-interface {v1, v2}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->onVisible:Z

    invoke-interface {v0}, Lorg/hapjs/card/api/Card;->onShow()V

    goto :goto_9f

    :cond_6e
    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    const-string v0, "onCardVisible do nothing,lastCode is null,cardTag: "

    const-string v1, ","

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_9f

    :cond_88
    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    const-string v0, "onCardVisible do nothing,already visible,cardTag: "

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public final releaseView()V
    .registers 21

    move-object/from16 v0, p0

    sget-object v1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v1}, Lz8/f$a;->a()Lz8/f;

    move-result-object v1

    iget-object v2, v0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lz8/f;->b(Ljava/lang/String;)Lz8/c;

    move-result-object v3

    if-eqz v3, :cond_1a

    const/16 v4, 0x44c

    const/16 v5, 0x15

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    :cond_1a
    sget-object v9, Ly8/c;->a:Ly8/c;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v10, "InstantCardEngine"

    const-string v11, "releaseView"

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, v0, Lpantanal/app/instant/engine/InstantCardEngine;->status:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, v0, Lpantanal/app/instant/engine/InstantCardEngine;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v1}, Lpantanal/app/instant/internal/MessageSet;->getMessageSend()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Lpantanal/app/instant/engine/InstantCardEngine;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v1}, Lpantanal/app/instant/internal/MessageSet;->getMessageReply()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lpantanal/app/instant/engine/InstantCardEngine;->storeResult(Landroid/view/View;Ljava/lang/Integer;)V

    iget-object v3, v0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz v3, :cond_52

    invoke-interface {v3, v1}, Lorg/hapjs/card/api/Card;->setRenderListener(Lcom/nearme/instant/xcard/IRenderListener;)V

    :cond_52
    iget-object v3, v0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz v3, :cond_59

    invoke-interface {v3}, Lcom/nearme/instant/xcard/InstantCard;->unregisterMessageCallback()V

    :cond_59
    iget-object v3, v0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz v3, :cond_60

    invoke-interface {v3}, Lorg/hapjs/card/api/Card;->destroy()V

    :cond_60
    iput-object v1, v0, Lpantanal/app/instant/engine/InstantCardEngine;->callback:Lpantanal/app/OnLoadCallback;

    iput-boolean v2, v0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    iput-object v1, v0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    return-void
.end method

.method public final replyMessageToCard(ILjava/lang/String;)V
    .registers 15

    const-string v0, "newData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget-boolean v4, p0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replyMessageToCard, cardTag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", newData.size = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", code = "

    const-string v2, ", hasLoaded: "

    invoke-static {v5, v3, v0, p1, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCardEngine"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-boolean v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-nez v0, :cond_55

    goto :goto_5b

    :cond_55
    if-eqz v0, :cond_5a

    invoke-interface {v0, p1, p2}, Lcom/nearme/instant/xcard/InstantCard;->replyMessage(ILjava/lang/String;)V

    :cond_5a
    return-void

    :cond_5b
    :goto_5b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v0}, Lpantanal/app/instant/internal/MessageSet;->getMessageReply()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-interface {p1, p0}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final sendMessageToCard(ILjava/lang/String;)V
    .registers 15

    const-string v0, "newData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget-boolean v4, p0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendMessageToCard, cardTag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", newData.size = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", code = "

    const-string v2, ", hasLoaded: "

    invoke-static {v5, v3, v0, p1, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCardEngine"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-boolean v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-nez v0, :cond_55

    goto :goto_5b

    :cond_55
    if-eqz v0, :cond_5a

    invoke-interface {v0, p1, p2}, Lorg/hapjs/card/api/Card;->sendMessage(ILjava/lang/String;)V

    :cond_5a
    return-void

    :cond_5b
    :goto_5b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v0}, Lpantanal/app/instant/internal/MessageSet;->getMessageSend()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-interface {p1, p0}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCardMessageCallback(Lpantanal/app/instant/IInstantCardCallback;)V
    .registers 14

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    iget-object v2, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    iget-boolean v3, p0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCardMessageCallback, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cardTag = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasLoaded: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCardEngine"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardMessageCallback:Lpantanal/app/instant/IInstantCardCallback;

    iget-boolean p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->hasLoaded:Z

    if-nez p1, :cond_5e

    const-string p0, "setCardMessageCallback error, because hasLoaded:"

    invoke-static {p0, p1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCardEngine"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_5e
    iget-object p1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz p1, :cond_6a

    new-instance v0, Lcom/android/launcher/settings/g;

    invoke-direct {v0, p0}, Lcom/android/launcher/settings/g;-><init>(Lpantanal/app/instant/engine/InstantCardEngine;)V

    invoke-interface {p1, v0}, Lcom/nearme/instant/xcard/InstantCard;->registerMessageCallback(Lorg/hapjs/card/api/CardCallback;)V

    :cond_6a
    return-void
.end method

.method public final setScrollState(I)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardTag:Ljava/lang/String;

    const-string v3, "setScrollState, "

    const-string v4, ", state = "

    const-string v5, ", cardTag: "

    invoke-static {v3, v1, v4, p1, v5}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCardEngine"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->instantAppCard:Lorg/hapjs/card/api/Card;

    if-eqz v0, :cond_34

    invoke-interface {v0, p1}, Lcom/nearme/instant/xcard/InstantCard;->setScrollState(I)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    if-nez v0, :cond_40

    iget-object p0, p0, Lpantanal/app/instant/engine/InstantCardEngine;->cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    :cond_40
    return-void
.end method
